<script setup lang="ts">
import { ref } from 'vue';

import LogoItem from './components/icon/LogoItem.vue';
import Speedometer from './components/SpeedometerItem.vue';
import BeverlyBarItem from './components/BeverlyBarItem.vue';
import StaminaBarItem from './components/StaminaBarItem.vue';
import CompassItem from './components/CompassItem.vue';

const hud = ref({
    compass: {
        show: false,
        heading: 0,
        address: '',
    },
    player: {
        show: false,
        health: 0,
        armor: 0,
        stress: 0,
        thirst: 0,
        hunger: 0,
        stamina: 0,
        speak: 1,
        speaking: false,
        radio: '0',
    },
    vehicle: {
        show: false,
        rpm: 0,
        fuel: 0,
        nitrous: 0,
        kmh: 0,
        gear: 'N',
        belt: false,
        locked: false,
        engine: 0,
    },
});

window.addEventListener('message', ({ data }) => {
    if (data === false) {
        hud.value.player.show = false;
        hud.value.vehicle.show = false;

        return;
    }

    if (data.player != undefined) {
        if (data.player == false) {
            hud.value.player.show = false;
        } else {
            hud.value.player.show = true;

            hud.value.player.health = data.player.health;
            hud.value.player.armor = data.player.armor;
            hud.value.player.stress = data.player.stress;
            hud.value.player.thirst = data.player.thirst;
            hud.value.player.hunger = data.player.hunger;
            hud.value.player.stamina = data.player.stamina;
            hud.value.player.speak = data.player.speak;
            hud.value.player.speaking = data.player.speaking;
            hud.value.player.radio = data.player.radio;
        }
    }

    if (data.vehicle != undefined) {
        if (data.vehicle == false) {
            hud.value.vehicle.show = false;
        } else {
            hud.value.vehicle.show = true;

            hud.value.vehicle.rpm = data.vehicle.rpm;
            hud.value.vehicle.fuel = data.vehicle.fuel;
            hud.value.vehicle.nitrous = data.vehicle.nitrous;
            hud.value.vehicle.kmh = data.vehicle.kmh;
            hud.value.vehicle.gear = data.vehicle.gear;
            hud.value.vehicle.belt = data.vehicle.belt;
            hud.value.vehicle.locked = data.vehicle.locked;
            hud.value.vehicle.engine = data.vehicle.engine;
        }
    }

    if (data.compass != undefined) {
        if (data.compass == false) {
            hud.value.compass.show = false;
        } else {
            hud.value.compass.show = true;

            hud.value.compass.heading = data.compass.heading;
            hud.value.compass.address = data.compass.address;
        }
    }
});
</script>

<template>
    <main>
        <LogoItem />

        <Speedometer
            :show="hud.vehicle.show"
            :rpm="hud.vehicle.rpm"
            :fuel="hud.vehicle.fuel"
            :nitrous="hud.vehicle.nitrous"
            :kmh="hud.vehicle.kmh"
            :gear="hud.vehicle.gear"
            :belt="hud.vehicle.belt"
            :locked="hud.vehicle.locked"
            :engine="hud.vehicle.engine"
        />

        <BeverlyBarItem
            :show="hud.player.show"
            :health="hud.player.health"
            :armor="hud.player.armor"
            :stress="hud.player.stress"
            :thirst="hud.player.thirst"
            :hunger="hud.player.hunger"
            :speak="hud.player.speak"
            :speaking="hud.player.speaking"
            :radio="hud.player.radio"
        />

        <StaminaBarItem
            v-if="hud.player.show"
            :stamina="hud.player.stamina"
        />

        <CompassItem v-if="hud.compass.show" :address="hud.compass.address" :heading="hud.compass.heading" />
    </main>
</template>
