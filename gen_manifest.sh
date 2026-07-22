#!/bin/sh
# gen_manifest.sh — 扫描 output/ 目录，生成 output/manifest.json
# 用法：
#   ./gen_manifest.sh              # 默认处理脚本所在目录下的 output/
#   ./gen_manifest.sh /path/output # 或指定 output 目录
#
# 依赖：sh + jq（其余均为 POSIX 内置命令）

set -eu

# 目标 output 目录：优先取第一个参数，否则用脚本同级的 output/
if [ "$#" -ge 1 ]; then
  OUT_DIR="$1"
else
  SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
  OUT_DIR="$SCRIPT_DIR/output"
fi

if [ ! -d "$OUT_DIR" ]; then
  echo "错误：目录不存在: $OUT_DIR" >&2
  exit 1
fi

if ! command -v jq >/dev/null 2>&1; then
  echo "错误：未找到 jq，请先安装 jq" >&2
  exit 1
fi

MANIFEST="$OUT_DIR/manifest.json"

# 列出所有 .md 文件（仅文件名，不含路径），排序后交给 jq 组装成 JSON 数组。
# -R 逐行读入为字符串，-s 收集为数组，自动完成 JSON 转义。
find "$OUT_DIR" -maxdepth 1 -type f -name '*.md' -exec basename {} \; \
  | LC_ALL=C sort -r \
  | head -n 180 \
  | jq -R . | jq -s . > "$MANIFEST"

COUNT="$(jq 'length' "$MANIFEST")"
echo "已生成 ${MANIFEST} (${COUNT} 个文件)"
