# 安装与配置

## 环境要求

- [Cursor](https://cursor.sh/) 编辑器（最新版本）
- 对 Cursor AI 对话功能的基本了解

## 获取 Product-OS

```bash
git clone <your-repo-url> Product-OS
cd Product-OS
```

## 项目结构

用 Cursor 打开项目后，你会看到以下目录：

```
Product-OS/
├── 01_Input/           ← 把需求材料丢这里
├── 03_Output/          ← PRD 在这里生成
├── _WORK_SHEET.md      ← 主流程唯一状态源
├── docs/
│   ├── templates/      ← PRD 模板
│   └── getting-started/ ← 上手指南
├── examples/           ← 完整示例
├── scripts/            ← 工具脚本
└── .cursor/skills/     ← AI 技能配置（一般不用动）
```

## 工作区清理

处理完一个需求后，运行清理脚本开始下一个：

```bash
./scripts/clean_workspace.sh
```

这会删除 `01_Input/`、`03_Output/` 中的生成文件和 `_WORK_SHEET.md`，但保留目录结构和配置。

## 下一步

→ [5 分钟上手指南](/getting-started/quick-start)
