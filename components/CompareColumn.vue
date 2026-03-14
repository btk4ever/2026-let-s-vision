<template>
  <div class="compare-col" :class="variant">
    <div class="col-header">
      <div class="col-icon"><slot name="icon" /></div>
      <div class="col-title">{{ title }}</div>
    </div>
    <div class="col-items">
      <slot />
    </div>
  </div>
</template>

<script setup>
defineProps({
  title: { type: String, required: true },
  variant: {
    type: String,
    default: 'neutral',
    validator: (v) => ['fading', 'rising', 'neutral'].includes(v),
  },
})
</script>

<style scoped>
.compare-col {
  border-radius: 12px;
  padding: 20px;
  height: 100%;
}

.compare-col.fading {
  background: #fef2f2;
  border: 1px solid #fecaca;
}

.compare-col.rising {
  background: #f0fdf4;
  border: 1px solid #bbf7d0;
}

.compare-col.neutral {
  background: #f8fafc;
  border: 1px solid #e2e8f0;
}

.col-header {
  display: flex;
  align-items: center;
  gap: 10px;
  margin-bottom: 16px;
  padding-bottom: 12px;
  border-bottom: 2px solid currentColor;
}

.fading .col-header { border-color: #fca5a5; color: #b91c1c; }
.rising .col-header { border-color: #86efac; color: #15803d; }

.col-icon { font-size: 22px; }

.col-title {
  font-size: 20px;
  font-weight: 700;
}

.col-items {
  font-size: 16px;
  line-height: 1.8;
  color: #1e293b;
}
</style>
