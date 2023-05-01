local pedId = PlayerPedId()             --- Entity handle for the local player ped.
local playerId = PlayerId()             --- Player index for the local player.

local speedMultiplier <const> = 2.23694 --- Multiplier for converting m/s to mp/h.

local lastFuelUpdate = 0
local lastFuelCheck = 0

local function getFuelLevel(vehicle)
    local updateTick = GetGameTimer()

    if (updateTick - lastFuelUpdate) > 2000 then
        lastFuelUpdate = updateTick
        lastFuelCheck = math.floor(exports['LegacyFuel']:GetFuel(vehicle))
    end

    return lastFuelCheck
end

local state <const> = {
    isLoggedIn = { false },
    hunger = { 0 },
    thirst = { 0 },
    stress = { 0 },
    seatbelt = { false },
    nitrous = { false, 0, false }
}

local heading = "0"

local function updatePlayerHud()
    SendNUIMessage({
        player = {
            show = true,
            health = GetEntityHealth(pedId) - 100,
            armor = GetPedArmour(pedId),
            stress = state.stress[1],
            thirst = state.hunger[1],
            hunger = state.thirst[1]
        }
    })
end

local function getVehicleGear(vehicle)
    local gear = GetVehicleCurrentGear(vehicle)

    if gear == 0 then
        return 'R'
    end

    if not IsVehicleEngineOn(vehicle) then
        return 'N'
    end

    return gear
end

local function updateVehicleHud(vehicle)
    SendNUIMessage({
        vehicle = {
            rpm = GetVehicleCurrentRpm(vehicle) - 0.2,
            fuel = getFuelLevel(vehicle),
            nitrous = state.nitrous[2] or 0,
            kmh = math.ceil(GetEntitySpeed(vehicle) * speedMultiplier),
            gear = getVehicleGear(vehicle),
            belt = state.seatbelt[1],
            locked = GetVehicleDoorLockStatus(vehicle) == 2,
            engine = GetVehicleEngineHealth(vehicle) / 10
        }
    })
end

CreateThread(function()
    for stateName, stateValue in pairs(state) do
        RegisterNetEvent('QBCore:Client:State:' .. stateName, function(...)
            state[stateName] = { ... }
        end)

        state[stateName] = { LocalPlayer.state[stateName] }
    end
end)

CreateThread(function()
    local pause = 500

    while true do
        Wait(pause)

        if not state.isLoggedIn[1] then
            SendNUIMessage(false)
        else
            updatePlayerHud()

            local vehicle = GetVehiclePedIsIn(pedId, false)
            local isMinimapRendering = IsMinimapRendering()

            if not IsPedInAnyVehicle(pedId, false) or IsThisModelABicycle(vehicle) then
                if isMinimapRendering then
                    DisplayRadar(false)
                end

                SendNUIMessage({ vehicle = false })

                pause = 500
            else
                if not isMinimapRendering then
                    DisplayRadar(true)
                end

                updateVehicleHud(vehicle)

                pause = 135
            end
        end
    end
end)

CreateThread(function()
    local pause = 50

    while true do
        Wait(pause)

        if not IsMinimapRendering() or not IsPedInAnyVehicle(pedId, false) then
            SendNUIMessage({ compass = false })

            pause = 500
        else
            local camRot = GetGameplayCamRot(0)
            heading = tostring(round(360.0 - ((camRot.z + 360.0) % 360.0)))

            if heading == '360' then heading = '0' end

            SendNUIMessage({
                compass = {
                    heading = heading
                }
            })

            pause = 50
        end
    end
end)

CreateThread(function()
    DisplayRadar(false)

    local defaultAspectRatio = 1920 / 1080
    local resolutionX, resolutionY = GetActiveScreenResolution()
    local aspectRatio = resolutionX / resolutionY
    local minimapOffset = 0
    if aspectRatio > defaultAspectRatio then
        minimapOffset = ((defaultAspectRatio - aspectRatio) / 3.6) - 0.008
    end

    RequestStreamedTextureDict("circlemap", false)
    while not HasStreamedTextureDictLoaded("circlemap") do
        Wait(100)
    end

    AddReplaceTexture("platform:/textures/graphics", "radarmasksm", "circlemap", "radarmasksm")
    AddReplaceTexture("platform:/textures/graphics", "radarmask1g", "circlemap", "radarmasksm")

    -- -0.0100 = nav symbol and icons left
    -- 0.180 = nav symbol and icons stretched
    -- 0.258 = nav symbol and icons raised up
    SetMinimapComponentPosition("minimap", "L", "B", 0.021 + minimapOffset, -0.030, 0.153, 0.24)

    -- icons within map
    SetMinimapComponentPosition("minimap_mask", "L", "B", 0.021 + minimapOffset, -0.03, 0.153, 0.24)

    -- -0.00 = map pulled left
    -- 0.015 = map raised up
    -- 0.252 = map stretched
    -- 0.338 = map shorten
    SetMinimapComponentPosition('minimap_blur', 'L', 'B', 0.025 + minimapOffset, 0.025, 0.222, 0.36)

    SetBlipAlpha(GetNorthRadarBlip(), 0)

    SetMinimapClipType(1)

    SetBigmapActive(true, false)

    Wait(50)

    SetBigmapActive(false, false)
end)

function round(num, numDecimalPlaces)
    local mult = 10 ^ (numDecimalPlaces or 0)
    return math.floor(num + 0.5 * mult)
end
