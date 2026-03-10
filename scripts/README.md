# 工具脚本

## clean_workspace.sh

清除工作区，删除所有工作文件（不可恢复）。

### 用法

```bash
./scripts/clean_workspace.sh
```

### 会删除的内容

- `01_Input/` 中的所有文件（保留 `.keep`）
- `02_Process/` 中的所有文件（保留 `.keep`）
- `03_Output/` 中的所有文件（保留 `.keep`）
- `_WORK_SHEET.md`

### 使用场景

- 处理完一个需求后，清除工作区，开始处理下一个
- 重新开始，放弃当前的整理结果
