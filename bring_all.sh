#!/usr/bin/env bash
set -e
LIB="mended-case.a"
TAG="gentle-canyon-eager-ember"
REPO="nimblebrook/canyonspireio"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
