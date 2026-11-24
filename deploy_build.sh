#!/usr/bin/env bash
set -e
LIB="pure-circlet.a"
TAG="hidden-cedar-golden-harbor"
REPO="tenderstudioh/burntbeam"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --tries=3 -q --timeout=15 -O "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
