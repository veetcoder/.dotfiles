#!/bin/bash

export STARSHIP_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/starship/starship.toml"
export PROMPT_COMMAND="export PROMPT_COMMAND=echo"

