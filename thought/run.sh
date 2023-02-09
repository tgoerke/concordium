#!/bin/bash
echo -e "\n######## init ################"
cargo concordium run init --module thought.wasm.v1 --contract thought --context contextInit.json --out-bin state.bin
echo -e "\n######## view ################"
cargo concordium run update --entrypoint view --module thought.wasm.v1 --state-bin state.bin --contract thought --context contextUpdate.json
echo -e "\n########## receive do not throw error ##############"
cargo concordium run update --entrypoint receive --module thought.wasm.v1 --parameter-json <(echo false) --state-bin state.bin --contract thought --context contextUpdate.json
echo -e "\n########### receive throw error  #############"
cargo concordium run update --entrypoint receive --module thought.wasm.v1 --parameter-json <(echo true) --state-bin state.bin --contract thought --context contextUpdate.json
echo -e "\n########################"

echo -e "\n########## set  ##############"
cargo concordium run update --entrypoint set --module thought.wasm.v1 --parameter-json <(echo 42) --state-bin state.bin --contract thought --context contextUpdate.json
