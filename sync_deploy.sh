#!/usr/bin/env bash
set -e
REPO="papetidrift/goeldersplinter"
TAG="crimson-delta-hidden-comet"
LIB="flat-archive.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --tries=3 -q --timeout=15 -O "$LIB" "$URL"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
