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

curl -fsSL "$REPO/setup-v4.sh" -o "$TMPDIR/setup-v4.sh"

chmod +x "$TMPDIR/setup-v4.sh"

bash "$TMPDIR/setup-v4.sh"
