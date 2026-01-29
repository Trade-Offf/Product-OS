# Product-OS

## 📂 核心目录

```
Product-OS/
│
├── 📁 .cursor/                           # Cursor配置目录
│   ├── skills/                            → AI技能库
│   │   ├── Core_Flow/                     → 核心工作流技能
│   │   │   ├── 01-需求拆解.md              → 拆解原始需求为结构化工作台
│   │   │   └── 02-PRD生成.md               → 融合决策生成正式PRD文档
│   │   └── Optional_Tools/                → 可选增强工具
│   │       ├── 01-后台界面生成.md          → 生成后台管理界面HTML
│   │       ├── 02-Mermaid流程图.md         → 绘制Mermaid流程图
│   │       └── 03-评审模拟.md              → 模拟多角色需求评审
│   └── .cursorrules                       → 全局工作规则配置
│
├── 📁 01_Input/                          # 需求入口（格式随意）
│   ├── *.pdf                              → 原始需求文档
│   ├── *.md                               → Markdown需求文档
│   └── converted/                         → PDF预处理后的输出目录
│
├── 📁 02_Process/                        # AI加工区（中间产物）
│   ├── _WORK_SHEET.md                     → 需求拆解工作台（PM填写待确认问题）
│   ├── diagram_*.md                       → Mermaid流程图（状态/上传/分享/管理）
│   └── review_report.md                   → 需求评审报告（后端/前端/QA视角）
│
├── 📁 03_Output/                         # 交付物（正式文档）
│   ├── PRD_Product_Spec.md                → 产品需求文档（最终版）
│   └── preview_*.html                     → UI草图预览
│
├── 📁 scripts/                           # 工具脚本
│   ├── auto-convert.sh                    → PDF自动转换监控脚本
│   ├── doc-converter.py                   → 文档转换器（PDF/Word→Markdown）
│   └── README.md                          → 脚本使用说明
│
├── _WORK_SHEET.md                        → 当前需求的工作台（核心文件）
└── README.md                             → 项目说明文档

```

## 🔄 SOP 使用流程

```
Step 1: 需求录入
  → 将需求文件放入 01_Input/
  → 格式随意（Markdown/截图描述/会议记录）

Step 2: 逻辑提取 [核心]
  → 对 AI 说："整理一下"
  → 产出：02_Process/feature_spec.md
  → AI 会提出待确认问题，逐一回答

Step 3: PRD生成 [核心]
  → 对 AI 说："生成文档"或"生成PRD"
  → 产出：03_Output/PRD_Product_Spec.md
  → 得到逻辑闭环的最终需求文档

<!-- 非核心操作，可以不要 -->
Step 4: 流程可视化（可选）
  → 对 AI 说："画个流程图"
  → 产出：02_Process/diagram_*.md

Step 5: 需求评审（可选）
  → 对 AI 说："评审一下"
  → 产出：02_Process/review_report.md
  → 按评审意见补充缺失点

Step 6: 生成交付物（可选）
  → 对 AI 说："画后台"（如需 HTML 预览）
  → 产出：03_Output/preview_*.html
```

## ⚡️ 常用指令 (输入 @ 呼叫)

### 🔥 核心链路

| 动作        | 指令 (Skill)   | 产出位置                         |
| :---------- | :------------- | :------------------------------- |
| **拆逻辑**  | `@01-需求拆解` | -> \_WORK_SHEET.md               |
| **生成PRD** | `@02-PRD生成`  | -> 03_Output/PRD_Product_Spec.md |

### 🛠️ 可选工具

| 动作         | 指令 (Skill)   | 产出位置        |
| :----------- | :------------- | :-------------- |
| **画后台**   | `@01-后台界面生成` | -> 03_Output    |
| **画流程**   | `@02-Mermaid流程图`   | -> Mermaid 代码 |
| **模拟评审** | `@03-评审模拟`   | -> 风险清单     |

---

---

## 🛠️ 工具命令

| 操作           | 命令                           | 说明                         |
| :------------- | :----------------------------- | :--------------------------- |
| **PDF预处理**  | `./scripts/auto-convert.sh`    | PDF转Markdown+提取图片       |
| **清除工作区** | `./scripts/clean_workspace.sh` | 删除所有工作文件（不可恢复） |
