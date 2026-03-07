<template>
  <svg viewBox="0 -60 1500 680" class="w-full h-full" preserveAspectRatio="xMidYMid meet">
    <defs>
      <linearGradient id="gapFill" x1="0" y1="0" x2="0" y2="1">
        <stop offset="0%" stop-color="#f97316" stop-opacity="0.18" />
        <stop offset="100%" stop-color="#f97316" stop-opacity="0.03" />
      </linearGradient>
    </defs>

    <!-- Axes -->
    <line x1="80" y1="500" x2="1202" y2="500" stroke="#cbd5e1" stroke-width="4" />
    <line x1="80" y1="500" x2="80" y2="60" stroke="#cbd5e1" stroke-width="4" />
    <polygon points="80,60 75,72 85,72" fill="#cbd5e1" />

    <!-- Y axis label -->
    <text x="40" y="280" text-anchor="middle" fill="#94a3b8" font-size="11"
          transform="rotate(-90, 40, 280)">能力</text>

    <!-- Grid lines -->
    <line x1="284" y1="60" x2="284" y2="500" stroke="#e2e8f0" stroke-width="3" stroke-dasharray="8,5" />
    <line x1="692" y1="60" x2="692" y2="500" stroke="#e2e8f0" stroke-width="3" stroke-dasharray="8,5" />
    <line x1="1100" y1="60" x2="1100" y2="500" stroke="#e2e8f0" stroke-width="3" stroke-dasharray="8,5" />

    <!-- Year labels -->
    <text x="80" y="535" text-anchor="middle" fill="#94a3b8" font-size="8">2023.6</text>
    <text x="284" y="535" text-anchor="middle" fill="#64748b" font-size="8">2024</text>
    <text x="692" y="535" text-anchor="middle" fill="#64748b" font-size="8">2025</text>
    <text x="1100" y="535" text-anchor="middle" fill="#64748b" font-size="8">2026</text>

    <!-- NOW marker -->
    <line x1="1202" y1="60" x2="1202" y2="500" stroke="#ef4444" stroke-width="2" stroke-dasharray="6,4" opacity="0.4" />
    <text x="1202" y="535" text-anchor="middle" fill="#ef4444" font-size="8" font-weight="600">NOW</text>

    <!-- Perception threshold (step 3) -->
    <g :class="['group-anim', { active: step >= 3 }]">
      <line class="gap-fade" x1="80" y1="135" x2="1202" y2="135"
            stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="10,6" opacity="0.5" />
      <text class="gap-fade" x="1220" y="139" dominant-baseline="middle"
            fill="#f59e0b" font-size="8" font-weight="500" opacity="0.7">感知阈值</text>
    </g>

    <!-- Human capability line -->
    <g :class="['group-anim', { active: step >= 1 }]">
      <path class="line-draw"
            d="M 80,458 C 150,450 220,440 284,430
               C 400,412 550,398 692,382
               C 800,370 950,352 1100,332
               C 1140,326 1170,323 1202,318"
            fill="none" stroke="#94a3b8" stroke-width="5" stroke-linecap="round" />
      <text class="label-fade" x="1220" y="323" dominant-baseline="middle"
            fill="#94a3b8" font-size="10" font-weight="600">人类工程师</text>
    </g>

    <!-- Model capability line + release markers -->
    <g :class="['group-anim', { active: step >= 2 }]">
      <path class="line-draw"
            d="M 80,480 C 150,476 220,468 284,458
               C 400,440 550,418 692,385
               C 780,362 870,325 940,270
               C 990,230 1025,175 1055,120
               C 1090,50 1120,10 1202,-40"
            fill="none" stroke="#3b82f6" stroke-width="5" stroke-linecap="round" />

      <g class="marker-fade">
        <!-- Claude Code: 2025.2 → x≈760 -->
        <circle cx="762" cy="364" r="6" fill="#3b82f6" />
        <text x="740" y="351" text-anchor="end" fill="#3b82f6" font-size="7" font-weight="600">Claude Code</text>

        <!-- Opus 4.5: 2025.11 → x≈1066 -->
        <circle cx="1060" cy="110" r="6" fill="#3b82f6" />
        <text x="1048" y="102" text-anchor="end" fill="#3b82f6" font-size="9" font-weight="600">Opus 4.5</text>

        <!-- GPT-5.2 Codex: 2025.12 → x≈1100 -->
        <circle cx="1100" cy="45" r="6" fill="#3b82f6" />
        <text x="1088" y="37" text-anchor="end" fill="#3b82f6" font-size="9" font-weight="600">GPT-5.2 Codex</text>
      </g>

      <text class="label-fade" x="1220" y="27" dominant-baseline="middle"
            fill="#3b82f6" font-size="10" font-weight="600">模型能力</text>
    </g>

    <!-- Gap highlight + bottleneck annotation (step 4) -->
    <g :class="['group-anim', { active: step >= 4 }]">
      <path class="gap-fade"
            d="M 692,385 C 780,362 870,325 940,270
               C 990,230 1025,175 1055,120
               C 1090,50 1120,10 1202,-40
               L 1202,318 C 1170,323 1140,326 1100,332
               C 950,352 800,370 692,382 Z"
            fill="url(#gapFill)" />

      <!-- Gap arrow -->
      <line class="gap-fade" x1="1185" y1="314" x2="1185" y2="-10"
            stroke="#f97316" stroke-width="3" stroke-dasharray="8,5" />
      <polygon class="gap-fade" points="1185,-10 1180,2 1190,2" fill="#f97316" />
      <polygon class="gap-fade" points="1185,314 1180,302 1190,302" fill="#f97316" />

      <text class="gap-fade" x="1175" y="174" text-anchor="end"
            fill="#ea580c" font-size="9" font-weight="700">瓶颈</text>
    </g>
  </svg>
</template>

<script setup>
defineProps({
  step: { type: Number, default: 0 },
})
</script>

<style scoped>
.line-draw {
  stroke-dasharray: 2500;
  stroke-dashoffset: 2500;
  transition: stroke-dashoffset 1.5s ease-out;
}
.group-anim.active .line-draw {
  stroke-dashoffset: 0;
}

.label-fade {
  opacity: 0;
  transition: opacity 0.5s ease 1.2s;
}
.group-anim.active .label-fade {
  opacity: 1;
}

.marker-fade {
  opacity: 0;
  transition: opacity 0.5s ease 1s;
}
.group-anim.active .marker-fade {
  opacity: 1;
}

.gap-fade {
  opacity: 0;
  transition: opacity 0.8s ease;
}
.group-anim.active .gap-fade {
  opacity: 1;
}
</style>
