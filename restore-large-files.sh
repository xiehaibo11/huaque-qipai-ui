#!/bin/sh
set -eu

repo_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
parts_dir="$repo_dir/花雀棋牌/.lfs-parts"
output="$repo_dir/花雀棋牌/棋牌游戏平台-花雀.psd"
temporary="$output.tmp"
expected_sha256="b70e58d81df3e4de31d765e46808bfbea0e72ffdc4618e955aaa785592f35328"

if [ ! -d "$parts_dir" ]; then
  echo "找不到分片目录：$parts_dir" >&2
  exit 1
fi

rm -f "$temporary"
trap 'rm -f "$temporary"' EXIT HUP INT TERM

cat "$parts_dir"/棋牌游戏平台-花雀.psd.part-* > "$temporary"

actual_sha256=$(shasum -a 256 "$temporary" | awk '{print $1}')
if [ "$actual_sha256" != "$expected_sha256" ]; then
  echo "SHA-256 校验失败：$actual_sha256" >&2
  exit 1
fi

mv "$temporary" "$output"
trap - EXIT HUP INT TERM
echo "已恢复并校验：$output"

