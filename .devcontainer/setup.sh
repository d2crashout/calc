#!/bin/bash
set -e

# Source SDKMAN from /usr/local/sdkman
if [ -f "/usr/local/sdkman/bin/sdkman-init.sh" ]; then
  source "/usr/local/sdkman/bin/sdkman-init.sh" > /dev/null
else
  echo "❌ SDKMAN init script not found!"
  exit 1
fi

sdk version > /dev/null

sdk install kotlin > /dev/null

npm install -g http-server > /dev/null

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y > /dev/null
source "$HOME/.cargo/env" > /dev/null

rustc --version > /dev/null
cargo --version > /dev/null