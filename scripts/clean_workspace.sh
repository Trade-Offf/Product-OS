#!/bin/bash

# 清除工作区脚本（不归档，直接删除）
# 使用方法: ./scripts/clean_workspace.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

echo "================================================"
echo "  清除 Product-OS 工作区"
echo "================================================"
echo ""
echo "⚠️  警告: 此操作将删除以下目录的所有内容："
echo "  - 01_Input/（包括 Context.md）"
echo "  - 02_Process/"
echo "  - 03_Output/"
echo "  - _WORK_SHEET.md"
echo ""
echo "❗️ 文件将被永久删除，无法恢复！"
echo ""
read -p "确认继续？(输入 yes 继续): " confirm

if [ "$confirm" != "yes" ]; then
    echo "❌ 已取消清除操作"
    exit 0
fi

cd "$PROJECT_ROOT"

echo ""
echo "🗑️  正在清除工作区..."

# 删除 01_Input 内容（保留.keep）
if [ -d "01_Input" ]; then
    find 01_Input -mindepth 1 ! -name '.keep' -delete
    echo "✓ 已清除 01_Input/"
fi

# 删除 02_Process 内容（保留.keep）
if [ -d "02_Process" ]; then
    find 02_Process -mindepth 1 ! -name '.keep' -delete
    echo "✓ 已清除 02_Process/"
fi

# 删除 03_Output 内容（保留.keep）
if [ -d "03_Output" ]; then
    find 03_Output -mindepth 1 ! -name '.keep' -delete
    echo "✓ 已清除 03_Output/"
fi

# 删除工作台文件
if [ -f "_WORK_SHEET.md" ]; then
    rm -f "_WORK_SHEET.md"
    echo "✓ 已删除 _WORK_SHEET.md"
fi

echo ""
echo "✅ 工作区已清除完成！"
echo ""
echo "现在可以开始处理新的需求了。"
