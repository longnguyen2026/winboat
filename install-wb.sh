#!/usr/bin/env bash

set -e

REPO="https://raw.githubusercontent.com/longnguyen2026/winboat/main"

echo "========================================"
echo "        WinBoat Installer"
echo "========================================"
echo

TMPDIR=$(mktemp -d)

cleanup() {
    rm -rf "$TMPDIR"
}
trap cleanup EXIT

echo "Downloading setup..."

curl -fsSL "$REPO/setup-wb.sh" -o "$TMPDIR/setup-wb.sh"

chmod +x "$TMPDIR/setup-wb.sh"

bash "$TMPDIR/setup-wb.sh"
