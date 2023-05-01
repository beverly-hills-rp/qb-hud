<script setup lang="ts">
import { onUpdated } from 'vue';

import '@/style/components/StaminaBarItem.css';

const props = defineProps<{
    stamina: number;
}>();

onUpdated(() => {});
</script>

<template>
    <div class="stamina">
        <div class="stamina-container">
            <div class="stamina-bar" :style="stamina >= 100 ? 'opacity: 0' : stamina >= 90 ? `opacity: ${100 - ((stamina - 90) * 10)}%` : ''">
                <div class="stamina-bar-level" :style="`width: ${stamina}%`"></div>
            </div>
        </div>
    </div>
</template>
