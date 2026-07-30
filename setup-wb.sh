#!/usr/bin/env bash

set -e

REPO="https://raw.githubusercontent.com/longnguyen2026/setup-wb-mint/main"

echo
echo "========================================"
echo "Preparing WinBoat installation..."
echo "========================================"
echo

TMPDIR=$(mktemp -d)

cleanup() {
    rm -rf "$TMPDIR"
}
trap cleanup EXIT

curl -fsSL \
"$REPO/install-winboat-v3.sh" \
-o "$TMPDIR/install-winboat-v3.sh"

chmod +x "$TMPDIR/install-winboat-v3.sh"

bash "$TMPDIR/install-winboat-v3.sh"
