<script setup lang="ts">
import { generatePizzaPath } from '@/utils/svg';
import { onUpdated, ref } from 'vue';

import '@/style/components/BeverlyBarItem.css';

const props = defineProps<{
    show: boolean;
    health: number;
    armor: number;
    stress: number;
    thirst: number;
    hunger: number;
    speak: number;
    speaking: boolean;
    radio: string;
}>();

const healthPositionMin = -745;
const healthPositionMax = 262;
const healthMultiplier = 10.07;

const armorPositionMin = -710;
const armorPositionMax = 200;
const armorMultiplier = 9.1;

const stressPositionMin = -742;
const stressPositionMax = 140;
const stressMultiplier = 8.82;

const statusRadius = 160;
const statusMinAngle = 134;
const statusMaxAngle = 316;
const statusMultiplier = 1.82;

const hungerCenterX = 160;
const hungerCenterY = 166;

const thirstCenterX = -160;
const thirstCenterY = -166;

const generateStatusPath = (level: number, centerX: number, centerY: number) => {
    return generatePizzaPath(
        statusRadius,
        statusMinAngle,
        level < 100 ? statusMinAngle + (level ?? 0) * statusMultiplier : statusMaxAngle,
        centerX,
        centerY
    );
};

const healthPosition = ref(healthPositionMin);
const armorPosition = ref(armorPositionMin);
const stressPosition = ref(stressPositionMin);

const hungerLevel = ref(generateStatusPath(0, hungerCenterX, hungerCenterY));
const thirstLevel = ref(generateStatusPath(0, thirstCenterX, thirstCenterY));

onUpdated(() => {
    healthPosition.value =
        props.health < 100 ? healthPositionMin + (props.health ?? 0) * healthMultiplier : healthPositionMax;
    armorPosition.value =
        props.armor < 100 ? armorPositionMin + (props.armor ?? 0) * armorMultiplier : armorPositionMax;
    stressPosition.value =
        props.stress < 100 ? stressPositionMin + (props.stress ?? 0) * stressMultiplier : stressPositionMax;

    thirstLevel.value = generateStatusPath(props.thirst, thirstCenterX, thirstCenterY);
    hungerLevel.value = generateStatusPath(props.hunger, hungerCenterX, hungerCenterY);
});
</script>

<template>
    <div v-if="show" class="beverly-bar-container">
        <div class="game-info">
            <div class="voice">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" width="1rem" height="1rem">
                    <path
                        d="M192 0C139 0 96 43 96 96V256c0 53 43 96 96 96s96-43 96-96V96c0-53-43-96-96-96zM64 216c0-13.3-10.7-24-24-24s-24 10.7-24 24v40c0 89.1 66.2 162.7 152 174.4V464H120c-13.3 0-24 10.7-24 24s10.7 24 24 24h72 72c13.3 0 24-10.7 24-24s-10.7-24-24-24H216V430.4c85.8-11.7 152-85.3 152-174.4V216c0-13.3-10.7-24-24-24s-24 10.7-24 24v40c0 70.7-57.3 128-128 128s-128-57.3-128-128V216z"
                        :fill="speaking ? `#81c68f` : `#D9D9D9`"
                    />
                </svg>
                <svg xmlns="http://www.w3.org/2000/svg" width="1rem" height="1rem" viewBox="0 0 13 13" fill="none">
                    <rect y="7" width="3" height="6" rx="1.5" :fill="speak >= 1 ? `#60A478` : `#D9D9D9`" />
                    <rect x="5" y="3" width="3" height="10" rx="1.5" :fill="speak >= 2 ? `#60A478` : `#D9D9D9`" />
                    <rect x="10" width="3" height="13" rx="1.5" :fill="speak >= 3 ? `#60A478` : `#D9D9D9`" />
                </svg>
            </div>
            <div class="hour">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="1rem" height="1rem">
                    <path
                        d="M464 256A208 208 0 1 1 48 256a208 208 0 1 1 416 0zM0 256a256 256 0 1 0 512 0A256 256 0 1 0 0 256zM232 120V256c0 8 4 15.5 10.7 20l96 64c11 7.4 25.9 4.4 33.3-6.7s4.4-25.9-6.7-33.3L280 243.2V120c0-13.3-10.7-24-24-24s-24 10.7-24 24z"
                        fill="#D9D9D9"
                    />
                </svg>
                <span>
                    {{ new Date().getHours() }}:{{ new Date().getMinutes() }}
                </span>
            </div>
            <div class="radio" :style="radio ? '' :'opacity: 0'">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="1rem" height="1rem">
                    <path
                        d="M80.3 44C69.8 69.9 64 98.2 64 128s5.8 58.1 16.3 84c6.6 16.4-1.3 35-17.7 41.7s-35-1.3-41.7-17.7C7.4 202.6 0 166.1 0 128S7.4 53.4 20.9 20C27.6 3.6 46.2-4.3 62.6 2.3S86.9 27.6 80.3 44zM555.1 20C568.6 53.4 576 89.9 576 128s-7.4 74.6-20.9 108c-6.6 16.4-25.3 24.3-41.7 17.7S489.1 228.4 495.7 212c10.5-25.9 16.3-54.2 16.3-84s-5.8-58.1-16.3-84C489.1 27.6 497 9 513.4 2.3s35 1.3 41.7 17.7zM352 128c0 23.7-12.9 44.4-32 55.4V480c0 17.7-14.3 32-32 32s-32-14.3-32-32V183.4c-19.1-11.1-32-31.7-32-55.4c0-35.3 28.7-64 64-64s64 28.7 64 64zM170.6 76.8C163.8 92.4 160 109.7 160 128s3.8 35.6 10.6 51.2c7.1 16.2-.3 35.1-16.5 42.1s-35.1-.3-42.1-16.5c-10.3-23.6-16-49.6-16-76.8s5.7-53.2 16-76.8c7.1-16.2 25.9-23.6 42.1-16.5s23.6 25.9 16.5 42.1zM464 51.2c10.3 23.6 16 49.6 16 76.8s-5.7 53.2-16 76.8c-7.1 16.2-25.9 23.6-42.1 16.5s-23.6-25.9-16.5-42.1c6.8-15.6 10.6-32.9 10.6-51.2s-3.8-35.6-10.6-51.2c-7.1-16.2 .3-35.1 16.5-42.1s35.1 .3 42.1 16.5z"
                        fill="#D9D9D9"
                    />
                </svg>
                <span>{{ radio }}.00 MHz</span>
            </div>
        </div>
        <div class="status-bar">
            <svg
                xmlns="http://www.w3.org/2000/svg"
                xmlns:xlink="http://www.w3.org/1999/xlink"
                viewBox="0 0 1303 332"
                width="26.25rem"
            >
                <defs>
                    <linearGradient
                        id="armor-level-gradient"
                        x1="649.88"
                        y1="424.1"
                        x2="907.39"
                        y2="-21.91"
                        gradientUnits="userSpaceOnUse"
                    >
                        <stop offset="0" stop-color="#0da4e3" />
                        <stop offset="0.5" stop-color="#0aa0e9" />
                        <stop offset="1" stop-color="#1d66e4" />
                    </linearGradient>
                    <linearGradient
                        id="health-level-gradient"
                        x1="950.08"
                        y1="327.25"
                        x2="675.01"
                        y2="-149.18"
                        gradientUnits="userSpaceOnUse"
                    >
                        <stop offset="0" stop-color="#599d73" />
                        <stop offset="0.5" stop-color="#81c68f" />
                        <stop offset="1" stop-color="#a1e4a4" />
                    </linearGradient>
                    <linearGradient
                        id="stress-level-gradient"
                        x1="627.65"
                        y1="480.76"
                        x2="862.81"
                        y2="73.44"
                        gradientUnits="userSpaceOnUse"
                    >
                        <stop offset="0" stop-color="#9fa4e3" />
                        <stop offset="0.5" stop-color="#9fa0e9" />
                        <stop offset="1" stop-color="#9f66e4" />
                    </linearGradient>
                    <linearGradient
                        id="water-level-gradient"
                        x1="256.62"
                        y1="284.99"
                        x2="256.62"
                        y2="13.6"
                        gradientTransform="translate(168.03 -59.05) rotate(45)"
                        gradientUnits="userSpaceOnUse"
                    >
                        <stop offset="0" stop-color="#0db5db" />
                        <stop offset="0.5" stop-color="#0aaae4" />
                        <stop offset="0.99" stop-color="#2968df" />
                    </linearGradient>
                    <linearGradient
                        id="food-gradient-level"
                        x1="53.24"
                        y1="204.3"
                        x2="284.3"
                        y2="70.9"
                        gradientUnits="userSpaceOnUse"
                    >
                        <stop offset="0" stop-color="#dca009" />
                        <stop offset="1" stop-color="#f5bf80" />
                    </linearGradient>
                    <linearGradient
                        id="food-gradient"
                        x1="51.88"
                        y1="202.34"
                        x2="282.94"
                        y2="68.94"
                        gradientTransform="matrix(1.14, 0.14, 0.14, 1.14, -22.77, -22.77)"
                        xlink:href="#food-gradient-level"
                    />
                    <linearGradient
                        id="water-gradient"
                        x1="255.26"
                        y1="282.8"
                        x2="255.26"
                        y2="11.41"
                        gradientTransform="matrix(0.96, 0.96, -0.71, 0.71, 89.52, -137.55)"
                        xlink:href="#water-level-gradient"
                    />
                    <clipPath id="status-level-clip-path" transform="translate(-35 -14)">
                        <path
                            d="M331.63,180A135.7,135.7,0,1,1,195.94,44.3,135.7,135.7,0,0,1,331.63,180ZM195.94,66.22A113.78,113.78,0,1,0,309.72,180,113.78,113.78,0,0,0,195.94,66.22Z"
                        />
                    </clipPath>
                    <clipPath id="food-clip-path" transform="translate(-35 -14)">
                        <path
                            d="M146.1,152.65a5.45,5.45,0,0,1-5.38-6.54c1-4,8.72-29.68,42.14-29.68S224,142.15,225,146.11a4.22,4.22,0,0,1,.11,1,5.48,5.48,0,0,1-5.49,5.49Zm15.64-18.11a3,3,0,1,0-3,3A3,3,0,0,0,161.74,134.54Zm45.27,3a3,3,0,1,0-3-3A3,3,0,0,0,207,137.56Zm-21.13-9.05a3,3,0,1,0-3,3A3,3,0,0,0,185.88,128.51Zm-48.29,39.23a9.06,9.06,0,0,1,9.06-9.05h72.43a9.06,9.06,0,1,1,0,18.11H146.65A9.06,9.06,0,0,1,137.59,167.74Zm3,18.11a3,3,0,0,1,3-3H222.1a3,3,0,0,1,3,3v3a12.08,12.08,0,0,1-12.07,12.07H152.68a12.08,12.08,0,0,1-12.07-12.07Z"
                        />
                    </clipPath>
                    <clipPath id="water-clip-path" transform="translate(-35 -14)">
                        <path
                            d="M196.19,159.06a5.29,5.29,0,0,0-5.27,5.66l4.76,66.58a13.19,13.19,0,0,0,13.17,12.27h27.5a13.2,13.2,0,0,0,13.17-12.27l4.75-66.58a5.27,5.27,0,0,0-5.26-5.66ZM203,184.89l-1.08-15.27h41.46l-1.09,15.27-4,2a11.29,11.29,0,0,1-10.16,0,12.35,12.35,0,0,0-11,0,11.31,11.31,0,0,1-10.17,0Z"
                        />
                    </clipPath>
                </defs>
                <g>
                    <g id="bars">
                        <g id="health-bar">
                            <mask id="health-level-mask">
                                <rect :x="healthPosition" y="45" width="1010" height="100" fill="#fff" />
                            </mask>

                            <path
                                id="health-bar-background"
                                d="M299.42,67.67H1302.83l-48.43,83.88H346A151.53,151.53,0,0,0,299.42,67.67Z"
                                transform="translate(-35 -14)"
                                fill="url(#health-level-gradient)"
                                fill-opacity=".5"
                                filter="drop-shadow(0.125rem 0.25rem 0.438rem rgba(0,0,0,.4))"
                            />

                            <g mask="url(#health-level-mask)">
                                <path
                                    id="health-bar-level-masked"
                                    d="M299.42,67.67H1302.83l-48.43,83.88H346A151.53,151.53,0,0,0,299.42,67.67Z"
                                    transform="translate(-35 -14)"
                                    fill="url(#health-level-gradient)"
                                    fill-rule="evenodd"
                                />
                            </g>
                        </g>

                        <g id="armor-bar">
                            <mask id="armor-level-mask">
                                <rect :x="armorPosition" y="140" width="1010" height="100" fill="#fff" />
                            </mask>

                            <path
                                d="M1201.89,242.5H335.33c10-24.61,14.13-43.95,13.11-70.79h894.31Z"
                                transform="translate(-35 -14)"
                                fill="url(#armor-level-gradient)"
                                fill-opacity=".5"
                                filter="drop-shadow(0.125rem 0.25rem 0.438rem rgba(0,0,0,.4))"
                            />

                            <g mask="url(#armor-level-mask)">
                                <path
                                    d="M1201.89,242.5H335.33c10-24.61,14.13-43.95,13.11-70.79h894.31Z"
                                    transform="translate(-35 -14)"
                                    fill="url(#armor-level-gradient)"
                                    fill-rule="evenodd"
                                />
                            </g>
                        </g>

                        <g id="stress-bar">
                            <mask id="stress-level-mask">
                                <rect :x="stressPosition" y="235" width="1010" height="50" fill="#fff" />
                            </mask>

                            <path
                                d="M1173.5,291.67H300.13a153.82,153.82,0,0,0,24.38-29.2l865.81.06Z"
                                transform="translate(-35 -14)"
                                fill="url(#stress-level-gradient)"
                                fill-opacity=".5"
                                filter="drop-shadow(0.125rem 0.25rem 0.438rem rgba(0,0,0,.4))"
                            />

                            <g mask="url(#stress-level-mask)">
                                <path
                                    d="M1173.5,291.67H300.13a153.82,153.82,0,0,0,24.38-29.2l865.81.06Z"
                                    transform="translate(-35 -14)"
                                    fill="url(#stress-level-gradient)"
                                />
                            </g>
                        </g>

                        <path
                            d="M1219.36,105.62h-21.95v-22h-8v22h-22v8h22v22h8v-22h21.95Z"
                            transform="translate(-35 -14)"
                            fill="#fff"
                            filter="drop-shadow(0.125rem 0.25rem 0.438rem rgba(0,0,0,.4))"
                        />

                        <path
                            d="M1154.64,213.6c-4.31,7.08-8,11.48-15.58,15.61a4.37,4.37,0,0,1-1.76.47,4,4,0,0,1-1.83-.45A32.18,32.18,0,0,1,1120,213.87a39.36,39.36,0,0,1-4-20,1.62,1.62,0,0,1,1.14-1.69c6.51-2.49,13-5,19.51-7.52a2.19,2.19,0,0,1,1.47.07s11.59,4.78,18.82,7.72c.86.34,1.17.67,1.22,1.45C1158.72,202,1158.31,206.74,1154.64,213.6Zm-17.34-23.12v33.19c.71-.38,1.3-.64,1.85-1,9.39-5.84,13-14.82,13.72-25.34,0-.39-.56-1-1-1.22-2.37-1-4.77-1.86-7.16-2.78Z"
                            transform="translate(-35 -14)"
                            fill="#fff"
                            filter="drop-shadow(0.125rem 0.25rem 0.438rem rgba(0,0,0,.4))"
                        />
                    </g>
                    <g filter="drop-shadow(0.125rem 0.25rem 0.438rem rgba(0,0,0,0.4))">
                        <g id="food-water" clip-path="url(#status-level-clip-path)">
                            <mask id="hunger-level-mask">
                                <path fill="#fff" :d="hungerLevel" />
                            </mask>

                            <path
                                id="food-level"
                                d="M100,276a135.69,135.69,0,0,1,191.9-191.9"
                                transform="translate(-35 -14)"
                                fill="url(#food-gradient-level)"
                                fill-opacity="0.5"
                            />

                            <g mask="url(#hunger-level-mask)">
                                <path
                                    id="food-level"
                                    d="M100,276a135.69,135.69,0,0,1,191.9-191.9"
                                    transform="translate(-35 -14)"
                                    fill="url(#food-gradient-level)"
                                />
                            </g>

                            <mask id="water-level-mask">
                                <path fill="#fff" :d="thirstLevel" transform="scale(-1 -1)" />
                            </mask>

                            <path
                                d="M291.89,84.05A135.69,135.69,0,0,1,100,276"
                                transform="translate(-35 -14)"
                                fill="url(#water-level-gradient)"
                                fill-opacity="0.5"
                            />

                            <g mask="url(#water-level-mask)">
                                <path
                                    d="M291.89,84.05A135.69,135.69,0,0,1,100,276"
                                    transform="translate(-35 -14)"
                                    fill="url(#water-level-gradient)"
                                />
                            </g>
                        </g>
                        <g clip-path="url(#food-clip-path)">
                            <path
                                d="M149.56,274.22C97.8,222.46,88.8,147.56,129.44,106.92S245,75.29,296.73,127"
                                transform="translate(-35 -14)"
                                fill="url(#food-gradient)"
                            />
                        </g>
                        <g clip-path="url(#water-clip-path)">
                            <path
                                d="M252.65,81.05c55.14,55.13,66.88,132.77,26.24,173.41s-118.28,28.89-173.41-26.24"
                                transform="translate(-35 -14)"
                                fill="url(#water-gradient)"
                            />
                        </g>
                    </g>
                </g>
            </svg>
        </div>
    </div>
</template>
