# CLAUDE.md

本文件为 Claude Code (claude.ai/code) 在此仓库中工作时提供指导。

## 项目概述

基于 Slidev 的演讲幻灯片项目，主题为「AI Agent 的道与术」（2026.03 上海）。内容涵盖 Agentic Engineering 实践——上下文工程、memory/skill 体系、以及与 AI Agent 的任务编排协作。

## 常用命令

```bash
pnpm dev        # 启动开发服务器，支持热更新（slidev --open）
pnpm build      # 构建静态站点到 .slidev-dist/
pnpm export     # 导出幻灯片为 PDF
```

## 定位 Slide

`slides.md` 约 1600 行，包含全部幻灯片。修改前可以使用索引脚本定位目标页码和行号，以加速具体页面的定位：

```bash
./scripts/slide-index.sh            # 默认读取 slides.md
```

输出为表格，包含页码（S01、S02…）、行范围、layout 和标题。

```bash
./scripts/slide-index.sh | grep S02

// 输出
// S02    78-101       default             Geek 的未来和龙虾
```

据此可快速用 `Read` 工具跳转到对应行进行编辑。

## 项目结构

- **`slides.md`** — 单文件演示文稿。每页 slide 可含独立 frontmatter、行内 `<style>`、Vue 模板语法（`v-click`、`v-if`、`:class`）及 `<!-- -->` 演讲备注。这是主要编辑对象。
- **`components/`** — 在 slide 中直接使用的 Vue 组件：
  - `TimelineStage.vue` — 时间线阶段可视化（圆点 + 标签 + 描述）
  - `StatCard.vue` — 数字统计卡片
  - `KeyPoint.vue` — 图标 + 标题 + 描述块，左侧蓝色边框强调
  - `CompareColumn.vue` — 左右对比列（`fading`/`rising`/`neutral` 三种风格）
- **`resources/`** — 参考资料（演讲笔记、观点池、slide 总览与时间分配）。不被 Slidev 直接消费，仅用于规划。
- **`public/`** — 静态资源，部署后位于根路径（如 `/avatar.jpg`）。
- **`vite.config.ts`** — 添加 `vite-svg-loader` 插件以支持内联 SVG 导入。

## 关键约定

- **主题**：`slidev-theme-penguin`，浅色模式。
- **图标**：使用 Iconify 图标集——已安装 `carbon` 和 `logos`（如 `<carbon-bot />`、`<logos-swift />`）。
- **字体**：Space Grotesk（sans）、DM Sans（serif）、Fira Code（mono），通过 Google Fonts 加载。
- **Slide 分隔**：`slides.md` 中以 `---` 分隔页面。每页的 frontmatter（layout、class、clicks、transition 等）写在 `---` 围栏之间。
- **演讲备注**：写在每页末尾的 `<!-- -->` 块中，使用中文，包含演讲节奏提示。
- **内容语言**：幻灯片可见内容中英文混用；演讲备注为中文。
- **包管理器**：pnpm。

## 能力扩展

- 推荐使用 `slidev` skill 操作和修改，特别是在 layout 和动画时，使用推荐的方式确保符合slidev最佳实践
- 在遇到排版等设计选择时，可以询问 `ui-ux-pro-max` 的意见
- 可以自行扩展 components，使用 Vue 组件呈现精致且让人惊叹的演示效果
