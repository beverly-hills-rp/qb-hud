<script setup lang="ts">
import { onUpdated } from 'vue';

import '@/style/components/CompassItem.css';

const props = defineProps<{
    heading: number;
    address: string;
}>();

onUpdated(() => {
    const compass = document.getElementById('compass-svg');

    if (compass) {
        compass.style.transform = `rotate(-${props.heading}deg)`;
    }
});
</script>

<template>
    <div class="compass-container">
        <svg
            id="compass-svg"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 786.54 792.04"
            width="20.9rem"
            height="20.9rem"
        >
            <g id="compass">
                <g id="compass-2" data-name="compass">
                    <g>
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="394.16" y1="65.48" x2="394.16" y2="38.76" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="337.11" y1="70.45" x2="332.5" y2="44.14" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="281.94" y1="85.21" x2="272.79" y2="60.1" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="230.02" y1="109.43" x2="216.66" y2="86.32" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="183.08" y1="142.27" x2="165.92" y2="121.77" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="142.67" y1="182.68" x2="122.17" y2="165.51" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="109.83" y1="229.62" x2="86.72" y2="216.26" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="85.62" y1="281.53" x2="60.5" y2="272.38" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="70.86" y1="336.7" x2="44.54" y2="332.09" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="65.88" y1="393.76" x2="39.16" y2="393.76" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="70.86" y1="450.82" x2="44.54" y2="455.43" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="85.62" y1="505.99" x2="60.5" y2="515.14" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="109.83" y1="557.9" x2="86.72" y2="571.26" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="142.67" y1="604.84" x2="122.17" y2="622.01" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="183.08" y1="645.25" x2="165.92" y2="665.75" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="230.02" y1="678.09" x2="216.66" y2="701.2" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="281.94" y1="702.31" x2="272.79" y2="727.42" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="337.11" y1="717.07" x2="332.5" y2="743.38" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="394.16" y1="722.04" x2="394.16" y2="748.76" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="451.22" y1="717.07" x2="455.83" y2="743.38" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="506.39" y1="702.31" x2="515.54" y2="727.42" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="558.31" y1="678.09" x2="571.66" y2="701.2" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="605.24" y1="645.25" x2="622.41" y2="665.75" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="645.65" y1="604.84" x2="666.16" y2="622.01" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="678.5" y1="557.9" x2="701.61" y2="571.26" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="702.71" y1="505.99" x2="727.82" y2="515.14" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="717.47" y1="450.82" x2="743.79" y2="455.43" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="722.45" y1="393.76" x2="749.16" y2="393.76" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="717.47" y1="336.7" x2="743.79" y2="332.09" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="702.71" y1="281.53" x2="727.82" y2="272.38" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="678.5" y1="229.62" x2="701.61" y2="216.26" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="645.65" y1="182.68" x2="666.16" y2="165.51" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="605.24" y1="142.27" x2="622.41" y2="121.77" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="558.31" y1="109.43" x2="571.66" y2="86.32" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="506.39" y1="85.21" x2="515.54" y2="60.1" />
                        <line fill="none" stroke="#6b6868" stroke-width="0.095rem" x1="451.22" y1="70.45" x2="455.83" y2="44.14" />
                    </g>
                    <g>
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="382.44" y1="56.33" x2="381.81" y2="38.76" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="370.6" y1="56.91" x2="369.4" y2="39.41" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="358.87" y1="57.97" x2="357.05" y2="40.46" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="347.15" y1="59.43" x2="344.69" y2="41.99" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="323.94" y1="63.5" x2="320.28" y2="46.35" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="312.44" y1="66.19" x2="308.23" y2="49.11" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="301.07" y1="69.29" x2="296.22" y2="52.34" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="289.88" y1="72.66" x2="284.39" y2="56" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="267.65" y1="80.71" x2="261.11" y2="64.47" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="256.8" y1="85.38" x2="249.63" y2="69.29" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="246.19" y1="90.34" x2="238.46" y2="74.52" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="235.63" y1="95.65" x2="227.4" y2="80.11" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="215.28" y1="107.49" x2="205.93" y2="92.52" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="205.42" y1="113.91" x2="195.57" y2="99.29" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="195.73" y1="120.67" x2="185.4" y2="106.4" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="186.28" y1="127.67" x2="175.52" y2="113.82" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="168.32" y1="142.83" x2="156.58" y2="129.76" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="159.69" y1="150.88" x2="147.46" y2="138.23" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="151.29" y1="159.28" x2="138.63" y2="147.05" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="143.24" y1="167.91" x2="130.16" y2="156.17" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="128.07" y1="185.87" x2="114.22" y2="175.12" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="121.08" y1="195.33" x2="106.81" y2="185" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="114.31" y1="205.01" x2="99.69" y2="195.17" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="107.9" y1="214.87" x2="92.92" y2="205.52" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="96.05" y1="235.22" x2="80.52" y2="227" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="90.74" y1="245.78" x2="74.93" y2="238.05" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="85.79" y1="256.4" x2="69.69" y2="249.23" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="81.11" y1="267.24" x2="64.87" y2="260.71" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="73.06" y1="289.47" x2="56.4" y2="283.99" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="69.69" y1="300.67" x2="52.75" y2="295.82" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="66.6" y1="312.04" x2="49.51" y2="307.82" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="63.91" y1="323.53" x2="46.76" y2="319.88" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="59.83" y1="346.75" x2="42.4" y2="344.29" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="58.37" y1="358.47" x2="40.87" y2="356.64" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="57.32" y1="370.19" x2="39.81" y2="369" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="56.74" y1="382.04" x2="39.16" y2="381.41" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="56.74" y1="405.48" x2="39.16" y2="406.11" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="57.32" y1="417.33" x2="39.81" y2="418.52" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="58.37" y1="429.05" x2="40.87" y2="430.88" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="59.83" y1="440.77" x2="42.4" y2="443.23" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="63.91" y1="463.99" x2="46.76" y2="467.64" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="66.6" y1="475.48" x2="49.51" y2="479.7" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="69.69" y1="486.85" x2="52.75" y2="491.7" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="73.06" y1="498.05" x2="56.4" y2="503.53" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="81.11" y1="520.28" x2="64.87" y2="526.81" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="85.79" y1="531.12" x2="69.69" y2="538.29" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="90.74" y1="541.74" x2="74.93" y2="549.47" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="96.05" y1="552.3" x2="80.52" y2="560.52" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="107.9" y1="572.65" x2="92.92" y2="582" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="114.31" y1="582.51" x2="99.69" y2="592.35" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="121.08" y1="592.19" x2="106.81" y2="602.52" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="128.07" y1="601.65" x2="114.22" y2="612.4" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="143.24" y1="619.61" x2="130.16" y2="631.35" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="151.29" y1="628.24" x2="138.63" y2="640.47" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="159.69" y1="636.64" x2="147.46" y2="649.29" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="168.32" y1="644.69" x2="156.58" y2="657.76" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="186.28" y1="659.85" x2="175.52" y2="673.7" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="195.73" y1="666.85" x2="185.4" y2="681.12" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="205.42" y1="673.61" x2="195.57" y2="688.23" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="215.28" y1="680.03" x2="205.93" y2="695" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="235.63" y1="691.87" x2="227.4" y2="707.41" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="246.19" y1="697.18" x2="238.46" y2="713" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="256.8" y1="702.14" x2="249.63" y2="718.23" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="267.65" y1="706.81" x2="261.11" y2="723.05" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="289.88" y1="714.86" x2="284.39" y2="731.52" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="301.07" y1="718.23" x2="296.22" y2="735.17" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="312.44" y1="721.33" x2="308.23" y2="738.41" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="323.94" y1="724.02" x2="320.28" y2="741.17" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="347.15" y1="728.09" x2="344.69" y2="745.53" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="358.87" y1="729.55" x2="357.05" y2="747.06" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="370.6" y1="730.61" x2="369.4" y2="748.11" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="382.44" y1="731.19" x2="381.81" y2="748.76" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="405.89" y1="731.19" x2="406.52" y2="748.76" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="417.73" y1="730.61" x2="418.93" y2="748.11" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="429.45" y1="729.55" x2="431.28" y2="747.06" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="441.17" y1="728.09" x2="443.64" y2="745.53" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="464.39" y1="724.02" x2="468.05" y2="741.17" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="475.88" y1="721.33" x2="480.1" y2="738.41" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="487.25" y1="718.23" x2="492.1" y2="735.17" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="498.45" y1="714.86" x2="503.93" y2="731.52" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="520.68" y1="706.81" x2="527.22" y2="723.05" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="531.52" y1="702.14" x2="538.69" y2="718.23" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="542.14" y1="697.18" x2="549.87" y2="713" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="552.7" y1="691.87" x2="560.93" y2="707.41" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="573.05" y1="680.03" x2="582.4" y2="695" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="582.91" y1="673.61" x2="592.75" y2="688.23" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="592.59" y1="666.85" x2="602.93" y2="681.12" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="602.05" y1="659.85" x2="612.8" y2="673.7" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="620.01" y1="644.69" x2="631.75" y2="657.76" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="628.64" y1="636.64" x2="640.87" y2="649.29" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="637.04" y1="628.24" x2="649.69" y2="640.47" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="645.09" y1="619.61" x2="658.16" y2="631.35" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="660.26" y1="601.65" x2="674.1" y2="612.4" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="667.25" y1="592.19" x2="681.52" y2="602.52" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="674.02" y1="582.51" x2="688.64" y2="592.35" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="680.43" y1="572.65" x2="695.4" y2="582" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="692.28" y1="552.3" x2="707.81" y2="560.52" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="697.58" y1="541.74" x2="713.4" y2="549.47" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="702.54" y1="531.12" x2="718.64" y2="538.29" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="707.21" y1="520.28" x2="723.45" y2="526.81" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="715.26" y1="498.05" x2="731.92" y2="503.53" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="718.64" y1="486.85" x2="735.58" y2="491.7" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="721.73" y1="475.48" x2="738.81" y2="479.7" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="724.42" y1="463.99" x2="741.57" y2="467.64" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="728.5" y1="440.77" x2="745.93" y2="443.23" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="729.95" y1="429.05" x2="747.46" y2="430.88" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="731.01" y1="417.33" x2="748.51" y2="418.52" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="731.59" y1="405.48" x2="749.16" y2="406.11" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="731.59" y1="382.04" x2="749.16" y2="381.41" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="731.01" y1="370.19" x2="748.51" y2="369" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="729.95" y1="358.47" x2="747.46" y2="356.64" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="728.5" y1="346.75" x2="745.93" y2="344.29" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="724.42" y1="323.53" x2="741.57" y2="319.88" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="721.73" y1="312.04" x2="738.81" y2="307.82" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="718.64" y1="300.67" x2="735.58" y2="295.82" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="715.26" y1="289.47" x2="731.92" y2="283.99" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="707.21" y1="267.24" x2="723.45" y2="260.71" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="702.54" y1="256.4" x2="718.64" y2="249.23" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="697.58" y1="245.78" x2="713.4" y2="238.05" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="692.28" y1="235.22" x2="707.81" y2="227" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="680.43" y1="214.87" x2="695.4" y2="205.52" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="674.02" y1="205.01" x2="688.64" y2="195.17" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="667.25" y1="195.33" x2="681.52" y2="185" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="660.26" y1="185.87" x2="674.1" y2="175.12" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="645.09" y1="167.91" x2="658.16" y2="156.17" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="637.04" y1="159.28" x2="649.69" y2="147.05" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="628.64" y1="150.88" x2="640.87" y2="138.23" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="620.01" y1="142.83" x2="631.75" y2="129.76" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="602.05" y1="127.67" x2="612.8" y2="113.82" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="592.59" y1="120.67" x2="602.93" y2="106.4" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="582.91" y1="113.91" x2="592.75" y2="99.29" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="573.05" y1="107.49" x2="582.4" y2="92.52" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="552.7" y1="95.65" x2="560.93" y2="80.11" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="542.14" y1="90.34" x2="549.87" y2="74.52" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="531.52" y1="85.38" x2="538.69" y2="69.29" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="520.68" y1="80.71" x2="527.22" y2="64.47" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="498.45" y1="72.66" x2="503.93" y2="56" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="487.25" y1="69.29" x2="492.1" y2="52.34" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="475.88" y1="66.19" x2="480.1" y2="49.11" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="464.39" y1="63.5" x2="468.05" y2="46.35" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="441.17" y1="59.43" x2="443.64" y2="41.99" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="429.45" y1="57.97" x2="431.28" y2="40.46" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="417.73" y1="56.91" x2="418.93" y2="39.41" />
                        <line fill="none" stroke="#535353" stroke-width="0.063rem" x1="405.89" y1="56.33" x2="406.52" y2="38.76" />
                    </g>
                </g>
                <g id="text">
                    <text fill="#B3B3B3" font-size="14" transform="matrix(0.99, -0.17, 0.17, 0.99, 325.9, 42.4)">10</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(266 59.55) rotate(-19.98)">20</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(0.87, -0.5, 0.5, 0.87, 209.92, 86.93)">30</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(0.77, -0.64, 0.64, 0.77, 159.34, 123.57)">40</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(116.05 168.41) rotate(-50.17)">50</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(0.5, -0.87, 0.87, 0.5, 81.13, 220.22)">60</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(0.34, -0.94, 0.94, 0.34, 55.73, 277.19)">70</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(0.18, -0.98, 0.98, 0.18, 40.68, 337.55)">80</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(43.32 464.99) rotate(-99.86)">100</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(-0.34, -0.94, 0.94, -0.34, 60.94, 524.78)">110</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(-0.5, -0.87, 0.87, -0.5, 88.85, 580.64)">120</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(125.9 630.88) rotate(-130.02)">130</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(171.17 673.87) rotate(-139.96)">140</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(-0.94, -0.35, 0.35, -0.94, 280.42, 733.25)">160</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(223.18 708.25) rotate(-150.02)">150</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(-0.98, -0.18, 0.18, -0.98, 341.11, 747.85)">170</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(447.24 39.74) rotate(9.97)">350</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(507.88 54.24) rotate(20.19)">340</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(565.07 79.23) rotate(29.97)">330</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(0.77, 0.64, -0.64, 0.77, 617.15, 113.63)">320</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(0.64, 0.77, -0.77, 0.64, 662.39, 156.6)">310</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(0.5, 0.87, -0.87, 0.5, 699.43, 206.82)">300</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(727.33 262.69) rotate(70.09)">290</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(0.17, 0.99, -0.99, 0.17, 744.99, 322.49)">280</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(-0.17, 0.98, -0.98, -0.17, 748.19, 446.87)">260</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(733.67 507.49) rotate(110.21)">250</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(708.69 564.65) rotate(119.93)">240</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(-0.64, 0.77, -0.77, -0.64, 674.21, 616.82)">230</text>
                    <text fill="#B3B3B3" font-size="14" transform="matrix(-0.76, 0.65, -0.65, -0.76, 631.29, 661.96)">220</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(581.11 699.01) rotate(149.92)">210</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(525.13 726.92) rotate(159.83)">200</text>
                    <text fill="#B3B3B3" font-size="14" transform="translate(465.47 744.61) rotate(170.21)">190</text>
                    <text fill="#D9D9D9" font-size="36" transform="translate(381.33 30.8)">N</text>
                    <text fill="#D9D9D9" font-size="36" transform="translate(383.48 782.28)">S</text>
                    <text fill="#D9D9D9" font-size="36" transform="translate(755.74 384.07) rotate(90)">L</text>
                    <text fill="#D9D9D9" font-size="36" transform="translate(30.8 406.13) rotate(-90)">O</text>
                </g>
            </g>
            <g id="compass-ring">
                <path
                    fill="#535353"
                    d="M723.5,400c0,178.66-144.84,323.5-323.5,323.5S76.5,578.66,76.5,400,221.34,76.5,400,76.5,723.5,221.34,723.5,400ZM400,94.06C231,94.06,94.06,231,94.06,400S231,705.94,400,705.94,705.94,569,705.94,400,569,94.06,400,94.06Z"
                    transform="translate(-5.84 -6.24)"
                />
                <polygon fill="#D9D9D9" points="368.16 96.76 420.16 96.76 394.16 57.76 368.16 96.76" />
            </g>
        </svg>
        <span class="compass-address">{{ address }}</span>
    </div>
</template>
