#!/bin/bash

# List of plugins to install
plugins=(
  "bun"
  "deno"
  "dotnet"
  "elixir"
  "erlang"
  "golang"
  "neovim"
  "nodejs"
  "python"
  "ripgrep"
  "rust"
  "starship"
  "zellij"
)

# Loop through the plugins and install them
for plugin in "${plugins[@]}"; do
  asdf plugin add "$plugin"
  asdf install "$plugin" latest
  asdf global "$plugin" latest

done
