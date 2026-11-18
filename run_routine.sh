#!/usr/bin/env bash
set -e
curl -fsSL -o "bamboo-event.a" --retry 3 --connect-timeout 15 --max-time 180 "https://github.com/fioraley/foxglovetideio/releases/download/frosty-harbor-hidden-delta/bamboo-event.a"
g++ -std=c++17 -pthread -O2 main.cpp "bamboo-event.a" -o app && ./app
