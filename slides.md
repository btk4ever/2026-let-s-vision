---
theme: penguin
title: AI Agent 的道与术
author: Wei Wang (@onevcat)
colorSchema: light
transition: fade
fonts:
  sans: Space Grotesk
  serif: DM Sans
  mono: Fira Code
  provider: google
themeConfig:
  logoHeader: ''
  twitter: ''
  twitterUrl: ''
  eventLogo: ''
  eventUrl: ''
drawings:
  enabled: false
presenter: true
download: true
layout: intro
class: text-center
---

# AI Agent 的道与术

<div class="text-2xl opacity-80">
  <span class="strike-anim transition-opacity duration-700" :class="$clicks >= 1 ? 'struck opacity-40' : ''">Agentic Engineering 时代的工程师实践</span>
</div>

<div v-click class="mt-4 text-lg opacity-70">
  —— 团队和个人的 Agent 使用心得分享
</div>

<div class="abs-bl ml-14 mb-10 flex items-center gap-4">
  <div class="w-14 h-14 rounded-full overflow-hidden flex-shrink-0">
    <img src="/avatar.jpg" class="w-full h-full object-cover" />
  </div>
  <div class="flex flex-col gap-0.5 text-left">
    <div class="text-base opacity-80 font-semibold">王巍 · @onevcat</div>
    <div class="text-sm opacity-60">https://onev.cat</div>
  </div>
</div>

<div class="abs-br mr-14 mb-10 text-sm opacity-50">
  2026.03 / Shanghai
</div>

<style>
.strike-anim {
  position: relative;
  display: inline-block;
}
.strike-anim::after {
  content: '';
  position: absolute;
  left: 0;
  top: 50%;
  width: 0;
  height: 3px;
  background: currentColor;
  transition: width 0.8s ease;
}
.strike-anim.struck::after {
  width: 100%;
}
</style>

<!--
- 感谢组委会邀请，感谢大周末来的各位
- 题目来由：组委会怂恿"做大一点，好卖票"
- Agentic Engineering → 组织管理 agent、高效协作，话题太大且高速变化
- [click] 划掉大副标题 → 所以没那么玄乎
- 真实定位：团队和个人这段时间用 AI agent 写代码的心得 & 最佳实践
-->

---
layout: default
clicks: 2
---

# 龙虾 🦞，智能体 🤖，Geek 的未来

<div class="mt-2 flex justify-center items-center relative h-100">
  <img v-click="[1,2]" src="/geek-future.jpg" class="max-h-full rounded-lg shadow-lg absolute transition-opacity duration-500" />
  <img v-click="2" src="/cooking.jpg" class="max-h-full rounded-lg shadow-lg absolute transition-opacity duration-500" />
</div>

<!--

- OpenClaw，龙虾火出圈。它的意义和启发是什么
- Peter 在社媒上的发布，理想中的 Geek 的样子
- 但理想和现实的差距，我实际的使用方式
- 不论具体的使用方式是什么，AI的渗透和对工程师的改变
- Geek 的未来，在 AI agent 从办公桌渗透到厨房时，如何共存
-->

---
layout: new-section
---

# 身在此山中

<div class="flex justify-center">
<div class="text-left space-y-3">
<p class="!opacity-80 !text-3xl flex items-center"><carbon-map class="text-teal-400 mr-2 text-3xl flex-shrink-0" />我们是怎么走到今天这一步的？</p>
<p class="!opacity-80 !text-3xl flex items-center"><carbon-compass class="text-teal-400 mr-2 text-3xl flex-shrink-0" />为今后的工程决策定坐标</p>
</div>
</div>

<!--
- 想要讨论未来，我们必须搞清楚我们是怎么一路走到现在的
- “不识庐山真面目，只缘身在此山中。”
- 定位当前坐标，猜测和判断我们所处的位置，并推断下一阶段。
-->

---
layout: default
---

# 从前、当下、将来

<div class="mt-6 flex gap-4">
  <TimelineStage label="Phase I" title="Tab 补全" v-click>
    AI 进入编码动作
  </TimelineStage>
  <TimelineStage label="Phase II" title="Chatbot" v-click>
    同步提示-响应回路
  </TimelineStage>
  <TimelineStage label="Phase III" title="AI Editor" v-click>
    仓内上下文协作
  </TimelineStage>
  <TimelineStage label="Phase IV" title="Code Agent" active v-click>
    长任务 / 少指令 / 自主
  </TimelineStage>
</div>

<div class="mt-10 relative h-16">
  <div v-click="[1,2]" class="absolute inset-0 flex items-center justify-center gap-5 transition-opacity duration-300">
    <span class="text-base opacity-50">2018 – 2022</span>
    <span class="px-4 py-1.5 bg-gray-100 rounded-md text-base">TabNine</span>
    <span class="px-4 py-1.5 bg-gray-100 rounded-md text-base">Kite</span>
  </div>
  <div v-click="[2,3]" class="absolute inset-0 flex items-center justify-center gap-5 transition-opacity duration-300">
    <span class="text-base opacity-50">2022 – 2024</span>
    <span class="px-4 py-1.5 bg-gray-100 rounded-md text-base">ChatGPT</span>
    <span class="px-4 py-1.5 bg-gray-100 rounded-md text-base">Claude</span>
  </div>
  <div v-click="[3,4]" class="absolute inset-0 flex items-center justify-center gap-5 transition-opacity duration-300">
    <span class="text-base opacity-50">2024 – 2025</span>
    <span class="px-4 py-1.5 bg-gray-100 rounded-md text-base">Cursor</span>
    <span class="px-4 py-1.5 bg-gray-100 rounded-md text-base">Windsurf</span>
  </div>
  <div v-click="4" class="absolute inset-0 flex items-center justify-center gap-5 transition-opacity duration-300">
    <span class="text-base opacity-50">2025 –</span>
    <span class="px-4 py-1.5 bg-teal-50 rounded-md text-base text-teal-600 font-medium">Claude Code</span>
    <span class="px-4 py-1.5 bg-teal-50 rounded-md text-base text-teal-600 font-medium">Codex</span>
  </div>
</div>

<!--
[节奏] 每个 Phase 停 5-8 秒，让观众消化

- Phase I：最早的 AI 编码体验，补全当前行。「AI 第一次摸到了你的代码」
- Phase II：ChatGPT chatbox 时代，问题甩给聊天窗口。强大但割裂——复制粘贴来回搬运，缺乏整体认知（Stack overflow 的替代）
- Phase III：Cursor/Windsurf 把 AI 拉进编辑器，能读整个仓库，生成大段代码，进行预测
- Phase IV：Claude Code/Codex 更强大的工具调用（agent loop），自主运行、调试、提交。

- 人逐渐从编码的主题，退到辅助位和验收位

[关键句] 回顾不是怀旧，是为了给今天的工程决策定坐标。
[过渡] 如果这个演进成立，下一个问题就是：当前阶段，人的瓶颈在哪？
-->

---
layout: default
clicks: 4
---

# PHASE IV - 人开始成为瓶颈

<div class="flex-1 mt-1">
  <CapabilityChart :step="$clicks" />
</div>

<!--
[节奏] 三步递进，每步停 5 秒

- Click 1（人类线）：工程师能力一直在涨——持续学习、掌握新工具、积累经验。但这是线性的。
- Click 2（模型线）：模型能力也在涨，而且是指数型的。几个代表性的事件：2025 前半 Claude
 Code 出现，2025 年底 Opus 4.5 和 Codex 5.2 发布后，出现明显的感知。大家会觉得突然
- Click 3（差距高亮）：这个橙色区域就是"瓶颈"——不是人不行了，而是模型太快了，人类决策的速度跟不上模型的速度。

[关键句] 开发者的工作往更高层次上移动了：定义问题、设边界、做验收。
-->

---
layout: new-section
---

# <carbon-chart-line-smooth class="inline text-teal-400 mr-2" /> 趋势汇报

<div class="mt-4 text-3xl opacity-70">
一个大型 iOS 开发团队的变化实例
</div>

<!--
- 这个变化和认知，是有佐证的
- 举一下我在的公司作为例子
- 今天是个人身份过来，在已公开范围内进行介绍
- 我们之后的内容，大家也可以有一个基准参照，实践是在什么规模下发生的
-->

---
layout: default
---

# 规模背景

<div class="mt-6 grid grid-cols-4 gap-6">
  <StatCard value="Swift + ObjC" label="实现语言" v-click>
    <template #icon><logos-swift class="inline" /> <span class="opacity-30 mx-1">/</span> <span class="text-purple-700 text-2xl font-extrabold leading-none" style="font-family: 'Fira Code', monospace">.m</span></template>
  </StatCard>
  <StatCard value="~250 万" label="代码行数" v-click>
    <template #icon><carbon-code class="inline" /></template>
  </StatCard>
  <StatCard value="~650" label="模块" v-click>
    <template #icon><carbon-assembly-cluster class="inline" /></template>
  </StatCard>
  <StatCard value="~25,000" label="文件" v-click>
    <template #icon><carbon-document class="inline" /></template>
  </StatCard>
</div>

<div class="mt-6 text-lg opacity-60 text-center" v-click>
  覆盖全局困难，很多小项目和个人项目中不存在的挑战，需要系统化的工程方法
</div>

<!--
规模背景（脱敏数据）。

用来建立"问题难度感"：
- 实现语言：Swift + Objective-C
- 代码行数：约 235 万
- 模块数：约 650
- 文件数：约 25,000

这个规模下，任何一次改动都可能影响多个模块。
单个 agent 很难稳定覆盖全局，需要系统化的工程方法。

注意：只展示趋势，不给绝对值。完全脱敏，不可回推。
-->

---
layout: default
---

# PR 趋势 <carbon-chart-line class="inline text-teal-500" />

<div class="mt-6 flex items-center gap-8">
<div class="flex-1">

<v-clicks>

- 产出速度明显加快
- 但 review / 验收 / 质量控制形态也在**同步重构**
- 不是简单的"多了"，而是生产模式在变

</v-clicks>

</div>
<div class="w-80 h-48 rounded-xl bg-gradient-to-br from-teal-50 to-teal-50 border border-teal-100 flex items-center justify-center">
  <div class="text-sm opacity-40">[PR Trend Chart]</div>
</div>
</div>

<!--
PR 趋势图（第一张趋势图）。

核心信息：产出变快了，但不只是数量变化。
review 方式、验收标准、质量控制的形态都在同步重构。
以前一个人写完提 PR 等 review。
现在可能是 agent 写完，人来 review，但 review 的内容和方式都不一样了。

只展示趋势线，不标绝对值。
-->

---
layout: default
---

# Backlog 与 AI 使用趋势

<div class="mt-4 grid grid-cols-2 gap-8">
<div>

### Issue / Backlog <carbon-task-complete class="inline text-green-500" />

<v-clicks>

- 启动成本下降
- 但**不等于**自动清空 backlog
- 问题定义质量决定消化速度

</v-clicks>

</div>
<div>

### AI 高使用占比 <carbon-growth class="inline text-orange-500" />

<v-clicks>

- 先出现**高手飞轮**效应
- 少数人的效率提升 10x 甚至 100x
- 关键问题：能否组织化扩散？

</v-clicks>

</div>
</div>

<!--
两张趋势图合并讲。

Issue/backlog 趋势：启动成本下降了（因为可以更快地开始做一个任务），
但不等于 backlog 自动减少——如果问题定义不清楚，agent 也帮不上忙。

AI 高使用占比趋势：先出现"高手飞轮"——
少数善于使用 AI 的工程师效率飙升（10x 甚至 100x）。
关键问题是，这种能力能否从个人扩散为组织能力。
如果不能扩散，就会形成 AI 格差。

所有数据：只讲趋势不讲绝对值；不展示可回推信息。
-->

---
layout: center
---

<div class="flex flex-col items-center justify-center h-full">
  <div class="text-6xl font-bold tracking-tight">序章已经落下</div>
  <div class="w-24 h-1 bg-teal-500 rounded-full mt-6 mb-8"></div>

  <div class="flex gap-2 w-full max-w-2xl" style="transform: scale(0.7); transform-origin: center;">
    <TimelineStage label="Phase I" title="Tab 补全">AI 进入编码动作</TimelineStage>
    <TimelineStage label="Phase II" title="Chatbot">同步提示-响应回路</TimelineStage>
    <TimelineStage label="Phase III" title="AI Editor">仓内上下文协作</TimelineStage>
    <TimelineStage label="Phase IV" title="Code Agent">长任务 / 少指令 / 自主</TimelineStage>
  </div>

  <v-click>
    <div class="mt-8 flex gap-8 text-base tracking-wide">
      <div class="flex items-start gap-2 opacity-60">
        <carbon-view class="text-teal-500 mt-0.5 flex-shrink-0" />
        <span>我们观察到的现象</span>
      </div>
      <div class="flex items-start gap-2 opacity-60">
        <carbon-roadmap class="text-teal-500 mt-0.5 flex-shrink-0" />
        <span>推进中遇到的阻力与对策</span>
      </div>
    </div>
  </v-click>
</div>

<!--
从 Tab 补全到 Chatbot，到 AI Editor，再到 Code Agent——这四个阶段是人类在尝试和 AI 共同编程时的阶段性成果。

到今天，大方向已经确定下来了：大家基本认同 Code Agent 这种方式是比较理想的协作形态。围绕它，工具链、工作流、最佳实践都在快速成型。可以说，人类在这条科技树上已经点下去了。

所以我说"序章已经落下"——不是结束，而是地基打好了。后面的章节，都将以这个序章为基础继续演化。

（点击）接下来想跟大家分享两件事：
一是我们在这个阶段观察到的一些现象——趋势数据背后的规律；
二是团队和我个人在推进 AI 落地时遇到的真实阻力，以及我们尝试的对策。
-->

---
layout: center
---

# 今天的话题

<img src="/topic-overview.png" class="w-full mt-4" />

<div class="mt-2 grid grid-cols-3 text-center text-2xl font-bold">
  <div>上下文工程</div>
  <div class="translate-x-2">团队化积累</div>
  <div class="-translate-x-6">协作新范式</div>
</div>

<div class="mt-4 text-base opacity-50 text-center">每组话题：先看约束，再聊实践</div>

<!--
我们在实践中遇到了非常非常多的课题。今天时间肯定是不够的，所以大概只能聊我认为最最重要的三组话题：

1. 上下文工程——高效且正确地去管理和使用。把信息喂对、喂好，是第一个要解决的问题。
2. 然后是团队化积累。把团队里大神和高手的做法推广沉淀。
3. 最后是协作新范式——从人指挥一个 Agent，指挥多个 Agent，到最后理想中的 Agent 自协作的话题。

每组话题，我们先看约束在哪，再聊我们的实践和对策。
-->

---
layout: default
---

# 约束一：有限的 Context vs 膨胀的任务

<div class="mt-6 flex items-center gap-6">

<div class="flex-1 text-center p-5 rounded-xl border border-teal-200 bg-teal-50">
  <carbon-chip class="text-3xl text-teal-500 mb-2" />
  <div class="font-bold text-lg">模型 Context</div>
  <div class="text-xs opacity-60 mt-1">上下文窗口、Token 预算</div>
  <div class="text-2xl font-bold mt-2 text-teal-800">始终有限</div>
</div>

<div class="text-3xl opacity-30 flex-shrink-0">⇋</div>

<div class="flex-1 text-center p-5 rounded-xl border border-gray-200 bg-gray-50">
  <carbon-task class="text-3xl text-gray-500 mb-2" />
  <div class="font-bold text-lg">实际任务</div>
  <div class="text-xs opacity-60 mt-1">代码库、需求、约定、历史决策…</div>
  <div class="text-2xl font-bold mt-2 text-gray-800">不断膨胀</div>
</div>

</div>

<div class="mt-6 grid grid-cols-3 gap-4">
  <div class="p-3 rounded-lg bg-red-50 border border-red-100 text-center" v-click>
    <carbon-finance class="text-xl text-red-400 mb-1" />
    <div class="text-sm font-bold text-red-800">推理成本飙升</div>
    <div class="text-xs text-red-600 mt-1">Context 越长，耗时和费用急剧增长</div>
  </div>
  <div class="p-3 rounded-lg bg-orange-50 border border-orange-100 text-center" v-click>
    <carbon-search-locate class="text-xl text-orange-400 mb-1" />
    <div class="text-sm font-bold text-orange-800">Recall 成功率下降</div>
    <div class="text-xs text-orange-600 mt-1">信息越多，关键内容越容易被淹没</div>
  </div>
  <div class="p-3 rounded-lg bg-yellow-50 border border-yellow-100 text-center" v-click>
    <carbon-view-off class="text-xl text-yellow-500 mb-1" />
    <div class="text-sm font-bold text-yellow-800">注意力涣散</div>
    <div class="text-xs text-yellow-600 mt-1">模型难以聚焦，输出质量不稳定</div>
  </div>
</div>

<!--
这一页讲清楚核心矛盾。

一边是我们的实际任务——代码库在膨胀、需求在增加、历史决策在积累，信息量只会越来越大。
另一边是模型的 Context 窗口——无论标称多大，它始终是有限的，而且不是越大越好。

当我们试图把更多信息塞进 Context 时，三个问题会同时恶化：
1. 推理成本飙升——更长的上下文意味着更高的延迟和费用，这在大规模使用时非常痛。
2. Recall 成功率下降——信息太多，模型找到关键内容的概率反而降低了，就像在噪音里找信号。
3. 注意力涣散——模型的注意力被分散，输出质量变得不稳定，有时候好有时候差。

这就是为什么"把所有东西都丢给 AI"行不通。我们需要像管理内存一样去管理 Context。
-->

---
layout: default
---

# 上下文的三个风险

<div class="mt-8 grid grid-cols-3 gap-6">

<div class="text-center p-6 rounded-xl bg-red-50 border border-red-100" v-click>
  <carbon-misuse class="text-3xl text-red-400 mb-3" />
  <div class="font-bold text-red-800 mb-2">上下文漂移</div>
  <div class="text-xs text-red-600 leading-relaxed">
    对话过长后，模型注意力偏移，丢失早期关键信息
  </div>
</div>

<div class="text-center p-6 rounded-xl bg-orange-50 border border-orange-100" v-click>
  <carbon-unlink class="text-3xl text-orange-400 mb-3" />
  <div class="font-bold text-orange-800 mb-2">跨 Session 断裂</div>
  <div class="text-xs text-orange-600 leading-relaxed">
    新会话无法继承上一次的上下文与决策链路
  </div>
</div>

<div class="text-center p-6 rounded-xl bg-yellow-50 border border-yellow-100" v-click>
  <carbon-close-outline class="text-3xl text-yellow-500 mb-3" />
  <div class="font-bold text-yellow-800 mb-2">关键决策丢失</div>
  <div class="text-xs text-yellow-600 leading-relaxed">
    "为什么这样做"的理由没有持久化，导致重复踩坑
  </div>
</div>

</div>

<!--
约束一延伸：上下文的三个风险。

1. 上下文漂移：对话太长后，模型注意力偏移，早期的关键信息可能被忽略。
2. 跨 session 断裂：新的会话无法继承上一次的上下文与决策链路。每次重新解释太浪费。
3. 关键决策丢失："为什么这样做"的理由没有被持久化，导致团队重复踩坑。

风险看清了，接下来看怎么做好上下文工程。
-->

---
layout: default
---

# 上下文工程

<div class="mt-4 text-base mb-6">效果差异来自上下文与执行容器，不来自提示词技巧</div>

<div class="grid grid-cols-2 gap-6">
<div>

### 可控注入源 <carbon-document-import class="inline text-teal-500" />

<v-clicks>

- README / 架构图
- 关键文件清单
- 约束清单（CLAUDE.md / AGENTS.md）
- 保持**精确精简**，只提项目领域知识

</v-clicks>

</div>
<div>

### 注意事项 <carbon-warning class="inline text-orange-500" />

<v-clicks>

- 无关历史会**污染**模型注意力
- 模型注意力分布：开头 + 最近 > 中段
- 工程上下文与聊天历史要隔离
- 过度省成本选低质量模型 → **错误学习**

</v-clicks>

</div>
</div>

<!--
上下文工程：从道到术。

核心观点：效果差异主要来自上下文与执行容器，不来自提示词技巧。

可控注入源优先：
- README、架构图、关键文件、约束清单
- CLAUDE.md / AGENTS.md 等保持精确精简，只提项目领域知识而不要提通识

注意事项：
- 无关聊天历史会污染上下文，应与工程上下文隔离
- 模型注意力常见分布：开头部分和最近部分较强，中间部分是衰减区
- 过度为省钱选择低质量模型，常会导致"学到错误教训"，长期更贵
-->

---
layout: center
---

<div class="text-center">
  <div class="text-lg opacity-60 mb-4">模型注意力分布</div>
  <div class="flex items-end justify-center gap-1 h-32">
    <div class="w-8 bg-teal-500 rounded-t" style="height: 90%"></div>
    <div class="w-8 bg-teal-400 rounded-t" style="height: 75%"></div>
    <div class="w-8 bg-teal-300 rounded-t" style="height: 50%"></div>
    <div class="w-8 bg-teal-200 rounded-t" style="height: 35%"></div>
    <div class="w-8 bg-gray-200 rounded-t" style="height: 25%"></div>
    <div class="w-8 bg-gray-200 rounded-t" style="height: 20%"></div>
    <div class="w-8 bg-gray-200 rounded-t" style="height: 18%"></div>
    <div class="w-8 bg-gray-200 rounded-t" style="height: 20%"></div>
    <div class="w-8 bg-gray-200 rounded-t" style="height: 25%"></div>
    <div class="w-8 bg-teal-200 rounded-t" style="height: 35%"></div>
    <div class="w-8 bg-teal-300 rounded-t" style="height: 55%"></div>
    <div class="w-8 bg-teal-400 rounded-t" style="height: 70%"></div>
    <div class="w-8 bg-teal-500 rounded-t" style="height: 85%"></div>
  </div>
  <div class="flex justify-between text-xs opacity-50 mt-2 px-4 max-w-sm mx-auto">
    <span>开头（强）</span>
    <span>中段（弱）</span>
    <span>最近（强）</span>
  </div>
  <div class="mt-6 text-sm opacity-60">
    把关键信息放在<strong>开头和最近位置</strong>，避免埋在中段
  </div>
</div>

<!--
注意力与污染。

模型注意力常见分布：开头和最近的内容获得更强注意力，中段容易衰减。
这意味着：
- 关键约束和规则应该放在上下文的开头
- 当前任务描述放在最近的位置
- 避免把重要信息埋在长对话的中间

实际操作：定期清理上下文，把核心信息重新注入。
上下文的道和术讲完了，接下来进入第二组：积累。
-->

---
layout: new-section
---

# 积累

Memory + Skill = 复利

<!--
第二组：积累。
上下文的问题明确后，接下来看如何让经验不断积累、形成复利。
-->

---
layout: default
---

# 约束二：Memory + Skill = 复利

<div class="mt-6 grid grid-cols-2 gap-6">
<div>

### 个人 Memory <carbon-user class="inline text-teal-500" />

<v-clicks>

- 偏好、约束、踩坑、决策理由
- 减少重复沟通与重复踩坑
- 让 agent 越来越"懂你"

</v-clicks>

</div>
<div>

### 团队 Memory <carbon-group class="inline text-teal-500" />

<v-clicks>

- 把个人技巧沉淀为**可复用资产**
- Skill 化：一次成功 → 模板 / runbook / 脚手架
- **渐进式披露**：在不同阶段给 agent 恰当信息

</v-clicks>

</div>
</div>

<div class="mt-6 text-center text-sm opacity-60" v-click>
  没有记忆系统，就没有 AI 协作的长期复利
</div>

<!--
约束二：Memory + Skill 决定复利。

个人 memory：记住偏好、约束、踩过的坑、关键决策理由。
减少重复沟通与重复踩坑，让 agent 越来越"懂你"。

团队 memory：把个人经验变成组织资产。
skill 化目标：把一次成功转为模板、runbook、脚手架。

本质都是"渐进式披露（progressive disclosure）"的实践：
在不同阶段给 agent 恰当粒度的信息与能力。
-->

---
layout: default
---

# 组织挑战：高手飞轮 vs 团队断层

<div class="mt-6 flex items-center gap-8">
<div class="flex-1">

<v-clicks>

- 少数人的 AI 使用能力极强，效率提升显著
- 但 **AI 使用能力高度个体化**
- 个人强 ≠ 组织强

</v-clicks>

<div class="mt-6" v-click>

### 关键观察

- 实践推广大多是**自下而上**的
- 个体高手经验 → 团队共识
- 传统自上而下路径在这个周期里偏慢

</div>

</div>
<div class="w-48 flex flex-col items-center gap-3">
  <div class="px-4 py-2 rounded-lg bg-teal-100 text-teal-800 text-sm font-bold">
    <carbon-events class="inline mr-1" /> 少数高手
  </div>
  <carbon-arrow-down class="text-xl text-gray-400" />
  <div class="px-4 py-2 rounded-lg bg-green-100 text-green-800 text-sm font-bold">
    <carbon-group class="inline mr-1" /> 团队共识
  </div>
  <carbon-arrow-down class="text-xl text-gray-400" />
  <div class="px-4 py-2 rounded-lg bg-purple-100 text-purple-800 text-sm font-bold">
    <carbon-enterprise class="inline mr-1" /> 组织能力
  </div>
</div>
</div>

<!--
公司观察：高手飞轮 vs 团队断层。

AI 时代常见组织问题是"少数人飞起、多数人观望"的效率断层。
AI 使用能力高度个体化，个人强不等于组织强。
个性化 AI 可能提高个人效率，但会加剧团队共识碎片化风险。

关键观察：这类实践推广大多是自下而上的（个体高手经验 -> 团队共识）。
传统自上而下路径在这个周期里通常偏慢。
怎么让少数人带动多数人？工具策略是第一步。
-->

---
layout: default
---

# Harness 策略

<div class="mt-6 flex items-center gap-8">
<div class="flex-1">

<v-clicks>

- **不绑定**单一 harness
- 允许并鼓励多 harness 并存
- 必要时打造适合自身团队的 harness

</v-clicks>

<div class="mt-6 grid grid-cols-3 gap-3" v-click>
<div class="p-3 rounded-lg bg-gray-50 border text-center text-xs">
  <div class="font-bold mb-1">IDE 集成</div>
  <span class="opacity-60">日常开发</span>
</div>
<div class="p-3 rounded-lg bg-gray-50 border text-center text-xs">
  <div class="font-bold mb-1">CLI Agent</div>
  <span class="opacity-60">批量/自动化</span>
</div>
<div class="p-3 rounded-lg bg-gray-50 border text-center text-xs">
  <div class="font-bold mb-1">Custom Harness</div>
  <span class="opacity-60">团队特化</span>
</div>
</div>

</div>
<div class="w-40 flex items-center justify-center">
  <carbon-settings-adjust class="text-7xl text-indigo-300 opacity-60" />
</div>
</div>

<!--
Harness 策略：从道到术。

不宜与单一 harness 绑定；应习惯并容许多 harness 并存，必要时打造适合自身团队的 harness。

不同场景适合不同 harness：
- IDE 集成（如 Cursor）：日常开发，快速迭代
- CLI Agent（如 Claude Code）：批量任务，自动化流程
- Custom Harness：团队特化，针对特定工作流定制

关键是 harness 要适配团队的工作流程，而不是反过来。
-->

---
layout: default
---

# Skill 沉淀

<div class="mt-6">

<div class="text-base mb-6">每次成功都可以沉淀为可复用路径</div>

<div class="flex items-center justify-center gap-4 mb-8" v-click>
  <div class="px-4 py-2 rounded-lg bg-teal-100 text-teal-800 text-sm font-semibold">
    一次成功
  </div>
  <carbon-arrow-right class="text-xl text-gray-400" />
  <div class="px-4 py-2 rounded-lg bg-indigo-100 text-indigo-800 text-sm font-semibold">
    Skill 化
  </div>
  <carbon-arrow-right class="text-xl text-gray-400" />
  <div class="px-4 py-2 rounded-lg bg-purple-100 text-purple-800 text-sm font-semibold">
    团队复用
  </div>
  <carbon-arrow-right class="text-xl text-gray-400" />
  <div class="px-4 py-2 rounded-lg bg-green-100 text-green-800 text-sm font-semibold">
    节省 Token
  </div>
</div>

<div class="grid grid-cols-4 gap-3" v-click>
<div class="p-3 rounded-lg bg-gray-50 border text-center text-xs">
  <carbon-template class="text-xl text-teal-500 mb-1" />
  <div class="font-bold">模板</div>
</div>
<div class="p-3 rounded-lg bg-gray-50 border text-center text-xs">
  <carbon-notebook class="text-xl text-green-500 mb-1" />
  <div class="font-bold">Runbook</div>
</div>
<div class="p-3 rounded-lg bg-gray-50 border text-center text-xs">
  <carbon-document class="text-xl text-purple-500 mb-1" />
  <div class="font-bold">FAQ</div>
</div>
<div class="p-3 rounded-lg bg-gray-50 border text-center text-xs">
  <carbon-build-tool class="text-xl text-orange-500 mb-1" />
  <div class="font-bold">脚手架</div>
</div>
</div>

</div>

<!--
Skill 沉淀收益。

流程 skill 化可节省 token 与重复试错成本。
每次成功都可以沉淀为 skill：

- 模板：标准化的任务描述模板
- Runbook：标准化的操作手册
- FAQ：常见问题的标准解答
- 脚手架：快速启动新项目/新任务的起点

一次成功 → skill 化 → 团队复用 → 节省 token 和试错成本。
这是从个人能力到组织能力的桥梁。积累讲完了，最后来看协作。
-->

---
layout: new-section
---

# 协作

从人指挥到 Agent 自协作

<!--
第三组：协作。
有了上下文和积累的基础，最后看协作范式如何演进，以及怎么把任务交给 agent。
-->

---
layout: default
---

# 约束三：协作范式在变

<div class="mt-6">

<div class="grid grid-cols-2 gap-8">
<div class="p-6 rounded-xl bg-gray-50 border border-gray-200 text-center" v-click>
  <div class="text-sm opacity-60 mb-2">当前</div>
  <div class="text-lg font-bold mb-3">人 → 多 Agent</div>
  <carbon-user class="text-2xl text-teal-500 mx-1" />
  <carbon-arrow-right class="text-xl text-gray-400 mx-1" />
  <carbon-bot class="text-2xl text-gray-500 mx-1" />
  <carbon-bot class="text-2xl text-gray-500 mx-1" />
  <carbon-bot class="text-2xl text-gray-500 mx-1" />
  <div class="text-xs opacity-50 mt-3">人工编排，注意力是瓶颈</div>
</div>

<div class="p-6 rounded-xl bg-teal-50 border border-teal-200 text-center" v-click>
  <div class="text-sm text-teal-600 mb-2">下一阶段</div>
  <div class="text-lg font-bold text-teal-800 mb-3">Agent ↔ Agent</div>
  <carbon-bot class="text-2xl text-teal-500 mx-1" />
  <carbon-connect class="text-xl text-teal-400 mx-1" />
  <carbon-bot class="text-2xl text-teal-500 mx-1" />
  <carbon-connect class="text-xl text-teal-400 mx-1" />
  <carbon-bot class="text-2xl text-teal-500 mx-1" />
  <div class="text-xs text-teal-600 mt-3">自协作，人做策略与兜底</div>
</div>
</div>

<div class="mt-6 text-center text-sm opacity-60" v-click>
  直接驱动因子：开发者注意力稀缺
</div>

</div>

<!--
约束三：协作范式在变。

当前在卷"人指挥多 agent"——因为开发者注意力是稀缺资源。
典型场景：你同时开几个 agent，一个查代码，一个写实现，一个跑测试。
但这种手动编排多个 agent 是过渡态。

下一阶段会走向"多个智能体自行协作工作"——
人类更多做策略设定与异常兜底。
10x 开发者是人指挥多 agent，但"人均 10x"需要 agent 自协作。
-->

---
layout: default
---

# 跨越点：人工监督 → 无人职守

<div class="mt-6">

<div class="flex items-center justify-center gap-4 mb-6">
  <div class="px-5 py-3 rounded-xl bg-gray-100 font-bold">
    <carbon-view class="inline mr-1 text-gray-600" /> 人工监督
  </div>
  <div class="flex flex-col items-center">
    <carbon-arrow-right class="text-3xl text-teal-500" />
    <div class="text-xs text-teal-600 font-semibold mt-1">关键跨越</div>
  </div>
  <div class="px-5 py-3 rounded-xl bg-teal-600 text-white font-bold">
    <carbon-workflow-automation class="inline mr-1" /> 无人职守
  </div>
</div>

<div class="grid grid-cols-3 gap-4" v-click>
<div class="p-4 rounded-lg bg-gray-50 border border-gray-200 text-center">
  <carbon-webhook class="text-2xl text-purple-500 mb-2" />
  <div class="text-sm font-semibold">Webhook</div>
  <div class="text-xs opacity-50">事件触发</div>
</div>
<div class="p-4 rounded-lg bg-gray-50 border border-gray-200 text-center">
  <carbon-time class="text-2xl text-green-500 mb-2" />
  <div class="text-sm font-semibold">Cron</div>
  <div class="text-xs opacity-50">定时触发</div>
</div>
<div class="p-4 rounded-lg bg-gray-50 border border-gray-200 text-center">
  <carbon-flow class="text-2xl text-orange-500 mb-2" />
  <div class="text-sm font-semibold">Event Pipeline</div>
  <div class="text-xs opacity-50">流水线触发</div>
</div>
</div>

<div class="mt-6 p-3 rounded-lg bg-amber-50 border border-amber-200 text-xs text-amber-800" v-click>
  <carbon-warning class="inline mr-1" /> 风险提示：在极端自动化闭环里，人可能被挤出执行环节，只保留责任承担角色。跨过这条线，就回不了头了。
</div>

</div>

<!--
跨越点：从人工监督到无人职守。

这是智能体工程化最关键的一次跨越。跨过这条线，就回不了头了。

典型触发方式：
- Webhook：事件驱动，PR 提交后自动 review
- Cron：定时触发，每天自动清理 backlog
- Event Pipeline：流水线触发，CI 失败后自动修复

风险提示：在极端自动化闭环里，人可能被挤出执行环节，只保留责任承担角色。
跨越点明确了，怎么把任务交给 agent？关键是任务切分。
-->

---
layout: default
---

# 任务切分：可验收交付单元

<div class="mt-6">

<div class="text-base mb-6">让 agent 接受的不是模糊需求，而是<strong>可验收的工作单元</strong></div>

<div class="grid grid-cols-4 gap-4" v-click>
<div class="p-4 rounded-xl bg-gray-50 border border-gray-200 text-center">
  <carbon-pull-request class="text-2xl text-teal-500 mb-2" />
  <div class="text-sm font-bold">PR</div>
</div>
<div class="p-4 rounded-xl bg-gray-50 border border-gray-200 text-center">
  <carbon-code class="text-2xl text-green-500 mb-2" />
  <div class="text-sm font-bold">Patch</div>
</div>
<div class="p-4 rounded-xl bg-gray-50 border border-gray-200 text-center">
  <carbon-application class="text-2xl text-purple-500 mb-2" />
  <div class="text-sm font-bold">Demo</div>
</div>
<div class="p-4 rounded-xl bg-gray-50 border border-gray-200 text-center">
  <carbon-document class="text-2xl text-orange-500 mb-2" />
  <div class="text-sm font-bold">Reply Draft</div>
</div>
</div>

<div class="mt-6 p-4 rounded-lg bg-teal-50 border border-teal-100" v-click>
  <div class="text-sm font-semibold text-teal-800 mb-1">
    <carbon-transform-instructions class="inline mr-1" /> 角色转变
  </div>
  <div class="text-xs text-teal-700">
    工程师从"亲自实现者"转向"任务编排 + 质量守门"
  </div>
</div>

</div>

<!--
任务切分：可验收交付单元。从道到术。

先定义交付物：PR / patch / demo / 回复草稿。
每种交付物都有明确的"完成"标准。

关键是让 agent 接受的不是"帮我改一下这个功能"这种模糊需求，
而是"生成一个 PR，包含这些改动，通过这些测试"。

工程师角色转变：从"亲自实现"转向"任务编排 + 质量守门"。
-->

---
layout: default
---

# 验收前置

<div class="mt-6">

<div class="text-base mb-4">先定义"怎么算做完"，再开始做</div>

<div class="grid grid-cols-4 gap-4">

<div class="p-4 rounded-xl border border-green-200 bg-green-50" v-click>
  <carbon-checkmark-filled class="text-xl text-green-600 mb-2" />
  <div class="text-sm font-bold text-green-800">测试</div>
  <div class="text-xs text-green-600 mt-1">单元 / 集成 / UI</div>
</div>

<div class="p-4 rounded-xl border border-teal-200 bg-teal-50" v-click>
  <carbon-catalog class="text-xl text-teal-600 mb-2" />
  <div class="text-sm font-bold text-teal-800">日志</div>
  <div class="text-xs text-teal-600 mt-1">行为链路可追溯</div>
</div>

<div class="p-4 rounded-xl border border-orange-200 bg-orange-50" v-click>
  <carbon-undo class="text-xl text-orange-600 mb-2" />
  <div class="text-sm font-bold text-orange-800">回滚</div>
  <div class="text-xs text-orange-600 mt-1">可逆性保障</div>
</div>

<div class="p-4 rounded-xl border border-red-200 bg-red-50" v-click>
  <carbon-warning-alt class="text-xl text-red-600 mb-2" />
  <div class="text-sm font-bold text-red-800">风险列表</div>
  <div class="text-xs text-red-600 mt-1">已知风险前置声明</div>
</div>

</div>

<div class="mt-8 text-center text-sm opacity-60" v-click>
  验收标准前置 = 减少返工 + 提高 agent 产出可信度
</div>

</div>

<!--
验收前置：先定义"怎么算做完"，再开始做。

着重提一下测试 BDD:
- 最接近自然语言的测试
- 天生适合作为 spec 规范
- LLM 通过自然语言生成测试
- 然后代码实现时由测试确保

验收标准要前置定义：
- 测试：单元/集成/UI 测试覆盖
- 日志：行为链路可追溯
- 回滚：可逆性保障，出问题能回退
- 风险列表：已知风险前置声明

验收标准前置的好处：减少返工 + 提高 agent 产出的可信度。
如果你不告诉 agent 怎么验证，它就不会自验。
三组道术讲完，来看整体的工程价值变化。
-->

---
layout: two-cols-header
---

# 工程价值重排

::left::

<CompareColumn title="正在弱化" variant="fading">
  <template #icon><carbon-arrow-down class="text-red-500" /></template>
  <v-clicks>

  - **DRY** 的边际价值下降<br/><span class="text-xs opacity-60">局部重复换取可理解性有时更优</span>
  - 手写代码的**稀缺性**下降<br/><span class="text-xs opacity-60">代码本身不再是核心壁垒</span>
  - 传统 code review 形态需要**重构**<br/><span class="text-xs opacity-60">从逐行审阅到意图+结果验证</span>

  </v-clicks>
</CompareColumn>

::right::

<CompareColumn title="正在增强" variant="rising">
  <template #icon><carbon-arrow-up class="text-green-500" /></template>
  <v-clicks>

  - **TDD** 缩短试错回路<br/><span class="text-xs opacity-60">为 agent 提供即时反馈信号</span>
  - **可观测性** + Benchmark<br/><span class="text-xs opacity-60">让产出可度量，从"感觉"变成"数据"</span>
  - **可验证循环** 变更→证据→回归→沉淀<br/><span class="text-xs opacity-60">自动化回归边界大幅扩大</span>

  </v-clicks>
</CompareColumn>

<!--
工程价值重排 + 既有实践新价值。

弱化：DRY 边际下降、手写代码稀缺性下降、传统 review 需重构。
增强：TDD 即时反馈、可观测性让产出可度量、可验证循环扩大回归边界。

AI 变强后，不是"少做工程"，而是"重排工程优先级"。
这些既有实践——TDD、Benchmark、可观测性——在 AI 时代价值被放大了，
因为 agent 需要明确的验证信号才能自我修正。
-->

---
layout: default
---

# 战略落点

<div class="mt-8 grid grid-cols-2 gap-5">

<KeyPoint title="平台能力" v-click>
  <template #icon><carbon-cloud-services class="text-2xl" /></template>
  构建 agent 可调用的服务层
</KeyPoint>

<KeyPoint title="权限审计" v-click>
  <template #icon><carbon-locked class="text-2xl" /></template>
  Agent 代理人类执行时的权限边界与审计
</KeyPoint>

<KeyPoint title="可观测性" v-click>
  <template #icon><carbon-dashboard class="text-2xl" /></template>
  Agent 行为的监控、日志与回溯
</KeyPoint>

<KeyPoint title="流程自动化" v-click>
  <template #icon><carbon-flow-modeler class="text-2xl" /></template>
  从手动触发到事件驱动的全链路
</KeyPoint>

</div>

<div class="mt-6 text-center text-sm opacity-60" v-click>
  这些将成为企业级 AI 工程化的竞争关键
</div>

<!--
战略落点。

如果约束判断成立，那企业需要在四个方面构建能力：
1. 平台能力：构建 agent 可调用的服务层，而不是只给人用的 UI
2. 权限审计：Agent 代理人类执行时的权限边界与审计链路
3. 可观测性：Agent 行为的监控、日志与回溯能力
4. 流程自动化：从手动触发到事件驱动的全链路自动化

这些不是"未来的事"，而是现在就需要开始投入的基础设施。
战略落点明确后，来看实际案例。
-->
---
layout: new-section
---

# 案例

不是"AI 很神"，而是"流程如何标准化和沉淀"

<!--
过渡页。三组道术讲完，不靠口号，直接看两个案例。
案例不该只讲"AI 很神"，而应讲"流程如何被标准化和沉淀"。
-->

---
layout: default
---

# 大规模代码库中的 Subagent 协作

<div class="mt-4 text-sm opacity-70 mb-6">多语言、多模块、超大仓库 —— 单 agent 很难稳定覆盖</div>

<div class="flex items-center justify-center gap-3 mt-4" v-click>
  <div class="p-4 rounded-xl bg-teal-50 border border-teal-200 text-center w-36">
    <carbon-search class="text-2xl text-teal-600 mb-2" />
    <div class="text-sm font-bold">检索 Agent</div>
    <div class="text-xs opacity-60">定位相关代码</div>
  </div>
  <carbon-arrow-right class="text-xl text-gray-400" />
  <div class="p-4 rounded-xl bg-green-50 border border-green-200 text-center w-36">
    <carbon-edit class="text-2xl text-green-600 mb-2" />
    <div class="text-sm font-bold">改动 Agent</div>
    <div class="text-xs opacity-60">执行代码修改</div>
  </div>
  <carbon-arrow-right class="text-xl text-gray-400" />
  <div class="p-4 rounded-xl bg-purple-50 border border-purple-200 text-center w-36">
    <carbon-checkmark-filled class="text-2xl text-purple-600 mb-2" />
    <div class="text-sm font-bold">验证 Agent</div>
    <div class="text-xs opacity-60">测试与回归</div>
  </div>
</div>

<div class="flex items-center justify-center mt-4" v-click>
  <div class="p-3 rounded-xl bg-indigo-50 border border-indigo-200 text-center w-52">
    <carbon-center-to-fit class="text-2xl text-indigo-600 mb-1" />
    <div class="text-sm font-bold">主 Agent 汇总决策</div>
  </div>
</div>

<!--
高层案例 - 场景与方案。

场景：多语言、多模块、超大仓库，单 agent 很难稳定覆盖。
方案：按模块/职责拆分 subagent。

分工：
- 检索 Agent：定位相关代码和上下文
- 改动 Agent：执行具体的代码修改
- 验证 Agent：运行测试、做回归检查
- 主 Agent：汇总各 subagent 的结果，做最终决策

价值：并行度提升、责任边界清晰、协作模板可复制。
这是"注意力稀缺 + context 有限"下的工程化解法。
-->

---
layout: default
---

# Subagent 协作价值

<div class="mt-6 grid grid-cols-3 gap-5">

<div class="p-5 rounded-xl bg-teal-50 border border-teal-100 text-center" v-click>
  <carbon-increase-level class="text-3xl text-teal-600 mb-3" />
  <div class="font-bold text-teal-800 mb-2">并行度提升</div>
  <div class="text-xs opacity-60 leading-relaxed">
    多个 agent 并行工作，突破单 agent 的上下文瓶颈
  </div>
</div>

<div class="p-5 rounded-xl bg-green-50 border border-green-100 text-center" v-click>
  <carbon-security class="text-3xl text-green-600 mb-3" />
  <div class="font-bold text-green-800 mb-2">责任边界清晰</div>
  <div class="text-xs opacity-60 leading-relaxed">
    每个 agent 职责明确，出错可定位
  </div>
</div>

<div class="p-5 rounded-xl bg-purple-50 border border-purple-100 text-center" v-click>
  <carbon-copy class="text-3xl text-purple-600 mb-3" />
  <div class="font-bold text-purple-800 mb-2">协作模板可复制</div>
  <div class="text-xs opacity-60 leading-relaxed">
    一次编排模式可在不同场景复用
  </div>
</div>

</div>

<div class="mt-6 text-center text-sm opacity-60" v-click>
  连接道术：这是"注意力稀缺 + context 有限"下的工程化解法
</div>

<!--
高层案例 - 方案价值。

1. 并行度提升：多个 agent 并行工作，突破单 agent 的上下文瓶颈
2. 责任边界清晰：每个 agent 职责明确，出错可以快速定位到哪个环节
3. 协作模板可复制：一次成功的编排模式可以在不同场景复用

这不只是"用了多个 agent"——
而是把前面讲的约束（注意力稀缺 + context 有限）转化为工程方案。
-->

---
layout: default
---

# iOS 18 NavigationStack 假死排障

<div class="mt-4">

<div class="flex items-start gap-6">
<div class="flex-1">

<div class="mb-4 text-sm opacity-70">
  2~3 层 NavigationStack + 状态刷新 → UI 假死
</div>

<div class="space-y-2">
  <div class="flex items-center gap-3 p-3 rounded-lg bg-gray-50 border" v-click>
    <div class="w-6 h-6 rounded-full bg-red-100 text-red-600 flex items-center justify-center text-xs font-bold">1</div>
    <div class="text-sm"><strong>现象</strong>：特定层级下 UI 无响应</div>
  </div>
  <div class="flex items-center gap-3 p-3 rounded-lg bg-gray-50 border" v-click>
    <div class="w-6 h-6 rounded-full bg-orange-100 text-orange-600 flex items-center justify-center text-xs font-bold">2</div>
    <div class="text-sm"><strong>最小复现</strong>：构建隔离环境复现问题</div>
  </div>
  <div class="flex items-center gap-3 p-3 rounded-lg bg-gray-50 border" v-click>
    <div class="w-6 h-6 rounded-full bg-teal-100 text-teal-600 flex items-center justify-center text-xs font-bold">3</div>
    <div class="text-sm"><strong>Agent 介入</strong>：定位 / 复现 / 验证</div>
  </div>
  <div class="flex items-center gap-3 p-3 rounded-lg bg-gray-50 border" v-click>
    <div class="w-6 h-6 rounded-full bg-green-100 text-green-600 flex items-center justify-center text-xs font-bold">4</div>
    <div class="text-sm"><strong>Workaround</strong>：规避策略 + 团队 Memory 记录</div>
  </div>
</div>

</div>
<div class="w-32 flex items-center justify-center">
  <carbon-mobile class="text-7xl text-gray-300 opacity-60" />
</div>
</div>

</div>

<!--
具体案例：SwiftUI / iOS 18 NavigationStack 假死。

现象：2~3 层 NavigationStack + 状态刷新，可能触发 UI 假死。
这是一个真实的、我们在生产中遇到的问题。

闭环流程：
1. 现象：特定层级下 UI 无响应
2. 最小复现：构建隔离环境，排除其他因素
3. Agent 介入：帮助定位问题根因，构建复现工程，验证修复
4. Workaround：规避策略 + 写入团队 memory 记录

重点不是"AI 修了个 bug"，而是"排障流程被标准化并可复用"。
产出：最小复现工程、规避策略、团队 memory 记录。
-->

---
layout: default
---

# 案例总结：流程 → 资产 → 模板

<div class="mt-8 flex items-center justify-center gap-6">

<div class="text-center p-6 rounded-2xl bg-gradient-to-b from-gray-50 to-gray-100 border border-gray-200 w-48" v-click>
  <carbon-flow class="text-3xl text-gray-600 mb-3" />
  <div class="font-bold">标准化流程</div>
  <div class="text-xs opacity-60 mt-2">现象 → 复现 → 定位 → 修复 → 沉淀</div>
</div>

<carbon-arrow-right class="text-2xl text-gray-400" v-click />

<div class="text-center p-6 rounded-2xl bg-gradient-to-b from-teal-50 to-teal-100 border border-teal-200 w-48" v-click>
  <carbon-save class="text-3xl text-teal-600 mb-3" />
  <div class="font-bold text-teal-800">资产沉淀</div>
  <div class="text-xs opacity-60 mt-2">复现工程 / 规避策略 / 团队记录</div>
</div>

<carbon-arrow-right class="text-2xl text-gray-400" v-click />

<div class="text-center p-6 rounded-2xl bg-gradient-to-b from-green-50 to-green-100 border border-green-200 w-48" v-click>
  <carbon-copy class="text-3xl text-green-600 mb-3" />
  <div class="font-bold text-green-800">可复用模板</div>
  <div class="text-xs opacity-60 mt-2">类似问题直接套用</div>
</div>

</div>

<div class="mt-8 text-center text-sm opacity-60" v-click>
  案例的价值不在于"AI 帮你修了 bug"，而在于"流程可复制"
</div>

<!--
案例总结：标准化流程 → 资产沉淀 → 可复用模板。

两个案例的共同点：
- 都不是在展示"AI 很厉害"
- 而是在展示"流程如何被标准化和沉淀"

一次成功的排障/协作经验，变成了：
- 可复用的标准化流程
- 沉淀下来的资产（代码/文档/记录）
- 下次遇到类似问题可以直接套用的模板

案例目的不是炫技，而是展示"流程可复制"。
-->

---
layout: default
---

# 工程师的新手艺

<div class="mt-8 grid gap-4 max-w-2xl mx-auto">

<div v-click class="flex items-center gap-4 p-4 rounded-xl bg-teal-50 border border-teal-100">
<carbon-data-definition class="text-2xl text-teal-600 flex-shrink-0" />
<div>
<div class="font-bold text-teal-800">把问题讲清楚</div>
<div class="text-xs opacity-60">定义、约束、验收</div>
</div>
</div>

<div v-click class="flex items-center gap-4 p-4 rounded-xl bg-indigo-50 border border-indigo-100">
<carbon-build-tool class="text-2xl text-indigo-600 flex-shrink-0" />
<div>
<div class="font-bold text-indigo-800">把系统搭到 agent 能发挥</div>
<div class="text-xs opacity-60">上下文、可观测、自动化</div>
</div>
</div>

<div v-click class="flex items-center gap-4 p-4 rounded-xl bg-purple-50 border border-purple-100">
<carbon-data-enrichment class="text-2xl text-purple-600 flex-shrink-0" />
<div>
<div class="font-bold text-purple-800">把成功路径变成团队资产</div>
<div class="text-xs opacity-60">Memory + Skill + 模板</div>
</div>
</div>

</div>

<div v-click class="mt-6 text-center text-sm opacity-60">
明天最小落地：<strong>1 个模板 + 1 个验证循环</strong>
</div>

<!--
收束。三句话：

1. 把问题讲清楚（定义、约束、验收）
2. 把系统搭到 agent 能发挥（上下文、可观测、自动化）
3. 把成功路径变成团队资产（memory + skill + 模板）

收束补句：
- 软件开发与产品设计将持续从 to-human 走向 to-agent
- Memory/skill 的构建本质是"渐进式披露（progressive disclosure）"实践

行动号召：明天最小落地——1 个模板 + 1 个验证循环。
不需要一步到位，从最小的闭环开始。
-->

---
layout: end
---

<div class="text-center">
  <div class="text-2xl font-bold mb-6">Thank You</div>
  <div class="text-base opacity-70 mb-2">Wei Wang</div>
  <div class="flex items-center justify-center gap-4 text-sm opacity-50">
    <span><carbon-logo-x class="inline mr-1" />@onevcat</span>
    <span><carbon-logo-github class="inline mr-1" />onevcat</span>
  </div>
</div>

<!--
尾页，Q&A 期间常驻。

Q&A 采用现场互动，不做预置问题 slide。

建议可接的问题方向：
1. 企业权限与安全如何落地？
2. 模型与成本如何分层治理？
3. 如何从人工监督平稳过渡到无人职守？
4. 团队 memory/skill 最小可行版本怎么搭？
5. 如何避免个体飞轮与团队断层？

视现场问题决定是否口头补充"云端 agent 架构细节"。
-->
