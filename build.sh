#!/usr/bin/env sh


if [ "$1" = "web" ]; then
    cargo build
    wasm-pack build --target web
    python3 -m http.server
else
    cargo run
fi
