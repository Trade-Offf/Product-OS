---
name: wireframe-to-prototype
description: Convert pasted wireframes, ASCII layouts, and low-fidelity UI sketches into high-fidelity prototype pages. Use when the user shares a wireframe, box-drawing layout, form sketch, field list, or asks to turn a low-fi design into a prototype, mockup, or preview page.
---

# Wireframe To Prototype

Turn a rough wireframe into a realistic prototype while preserving the original structure.

## When to Use

- 用户粘贴 ASCII 线框图
- 用户给出低保真草图、字段清单、弹窗布局
- 用户说“转成原型图”“做高保真原型”“按线框还原页面”
- 需要快速给产品、运营、老板看页面感觉

## Output Requirements

- 默认输出可预览的前端原型
- 若生成独立 HTML，入口文件必须命名为 `index.html`
- 原型以“结构忠实”为第一优先级，其次才是视觉 refinement

## Core Principle

This skill is a translator, not a feature designer.

- **忠实还原**：保留线框的布局结构、字段顺序、主要分组、按钮位置
- **禁止脑补功能**：不新增用户未提及的业务模块、字段、校验、流程
- **只补视觉层**：允许补充间距、层级、字体、颜色、边框、图标等表现层
- **缺口显式标记**：信息不足时，用 `待确认项` 说明，不自行填坑

## Interpretation Rules

优先识别这些线框元素：

- `[________]` → 输入框
- `[按钮]` / `[保存]` → 按钮
- `( ) 选项` → 单选
- `[ ] 选项` → 复选
- `┌ ┐ └ ┘ │ ─` → 容器、弹窗、面板、分区边界
- 标题栏右上角 `[X]` → 弹窗关闭按钮
- 空白分隔和横线 → 表单分组或区域分隔

如果原文看起来像后台表单、弹窗、抽屉、列表页，应优先按该类型还原，不要改成营销页或落地页。

## Working Process

1. **判断页面类型**
   - 弹窗 / 抽屉 / 表单页 / 列表页 / 详情页 / 卡片页
2. **提取结构骨架**
   - 标题区、内容区、操作区、字段顺序、分组层级
3. **补充视觉表达**
   - 只优化视觉，不改变信息架构
4. **生成原型**
   - 输出可预览页面或组件
5. **列出待确认项**
   - 仅在关键缺失影响展示时列出

## Design Guidance

视觉方向可以精致，但必须服务于线框本身：

- 后台管理：干净、克制、清晰，优先表单可读性
- 弹窗：突出标题、操作按钮、信息密度与层次
- 表单：标签对齐、输入区统一、错误态和说明位留白合理
- 不要为了“设计感”打乱字段顺序或改布局

如果项目中同时存在 `Frontend_Design` 技能，可借用其审美标准，但本技能优先级更高的是 **线框保真度**。

## Output Format

默认输出包含：

1. **原型实现**
   - 可运行页面、组件或 HTML 原型
2. **结构保留说明**
   - 简述哪些部分是按线框原样保留
3. **待确认项**
   - 仅列出线框未说明、但会影响展示的关键点

## Guardrails

- 不增加新字段
- 不重命名已有字段
- 不擅自补充表单校验规则
- 不擅自补充接口逻辑
- 不擅自增加 tab、步骤条、说明文案、帮助提示
- 不把后台线框改造成官网或活动页风格

## Prompt Pattern

用户如果只贴了线框图，默认按下面目标执行：

“把这段线框图转成高保真原型，不新增功能，只做视觉还原。”

## Additional Resources

- 更多输入输出示例，见 [examples.md](examples.md)
