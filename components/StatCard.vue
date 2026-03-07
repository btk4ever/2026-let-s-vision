<template>
  <div class="stat-card">
    <div v-if="$slots.icon" class="stat-icon">
      <slot name="icon" />
    </div>
    <div class="stat-value">{{ value }}</div>
    <div class="stat-label">{{ label }}</div>
  </div>
</template>

<script setup>
defineProps({
  value: { type: String, required: true },
  label: { type: String, required: true },
})
</script>

<style scoped>
.stat-card {
  background: linear-gradient(135deg, #f0f9ff 0%, #e0f2fe 100%);
  border: 1px solid #bae6fd;
  border-radius: 16px;
  padding: 28px 24px;
  text-align: center;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.stat-card:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 20px rgba(59, 130, 246, 0.12);
}

.stat-icon {
  font-size: 28px;
  color: #3b82f6;
  margin-bottom: 12px;
}

.stat-value {
  font-size: 36px;
  font-weight: 800;
  color: #1e40af;
  line-height: 1.1;
  margin-bottom: 10px;
  letter-spacing: -0.02em;
}

.stat-label {
  font-size: 16px;
  color: #475569;
  font-weight: 500;
}
</style>
