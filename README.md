# Product-OS

## 📂 核心目录

```
Product-OS/
│
├── 📁 .cursor/                           # Cursor配置目录
│   └── skills/                            → AI技能库
│       ├── Core_Flow/                     → 核心工作流技能
│       │   ├── 01-需求整理.md              → 整理原始需求为结构化工作台
│       │   └── 02-PRD生成.md               → 融合决策生成正式PRD文档
│       ├── ROUTER.md                      → 技能路由表（触发词管理）
│       ├── VERSION_GUIDE.md               → PRD版本化规则指南
│       └── WORKSHEET_STATE_GUIDE.md       → 工作台状态管理指南
│
├── 📁 01_Input/                          # 需求入口（格式随意）
│   └── *.md                               → Markdown需求文档
│
├── 📁 02_Process/                        # AI加工区（中间产物）
│   └── _WORK_SHEET.md                     → 需求拆解工作台（PM填写待确认问题）
│
├── 📁 03_Output/                         # 交付物（正式文档）
│   └── PRD_Product_Spec.md                → 产品需求文档（最终版）
│
├── 📁 scripts/                           # 工具脚本
│   ├── clean_workspace.sh                 → 清除工作区脚本
│   └── README.md                          → 脚本使用说明
│
├── .cursorrules                          → 全局工作规则配置（项目根目录）
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
```

## ⚡️ 常用指令 (输入 @ 呼叫)

| 动作         | 指令 (Skill)   | 产出位置                         |
| :----------- | :------------- | :------------------------------- |
| **整理需求** | `@01-需求整理` | -> \_WORK_SHEET.md               |
| **生成PRD**  | `@02-PRD生成`  | -> 03_Output/PRD_Product_Spec.md |

---

## 🛠️ 工具命令

| 操作           | 命令                           | 说明                         |
| :------------- | :----------------------------- | :--------------------------- |
| **清除工作区** | `./scripts/clean_workspace.sh` | 删除所有工作文件（不可恢复） |
