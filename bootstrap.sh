#!/usr/bin/env bash
set -euo pipefail

REPO=REPO="https://github.com/longnguyen2026/winboat.git"
BRANCH="main"

TMPDIR=$(mktemp -d)

cleanup() {
    rm -rf "$TMPDIR"
}
trap cleanup EXIT

echo "======================================="
echo "      WinBoat Pro Bootstrap"
echo "======================================="

echo "[1/4] Kiểm tra Internet..."
curl -fsSL https://github.com >/dev/null

echo "[2/4] Kiểm tra Git..."
if ! command -v git >/dev/null 2>&1; then
    sudo apt update
    sudo apt install -y git
fi

echo "[3/4] Tải WinBoat Pro..."
git clone --depth=1 --branch "$BRANCH" "$REPO" "$TMPDIR"

cd "$TMPDIR"

chmod +x install.sh

echo "[4/4] Khởi chạy bộ cài..."
exec ./install.sh
