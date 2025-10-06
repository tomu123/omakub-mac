#!/bin/bash

AVAILABLE_LANGUAGES=("Ruby on Rails" "Node.js" "Go" "Python" "Elixir" "Rust" "Java")
SELECTED_LANGUAGES="Ruby on Rails","Node.js"
export OMAKUB_MAC_FIRST_RUN_LANGUAGES=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --selected "$SELECTED_LANGUAGES" --height 10 --header "Select programming languages")

AVAILABLE_DBS=("MySQL" "Redis" "PostgreSQL")
SELECTED_DBS="MySQL,Redis"
export OMAKUB_MAC_FIRST_RUN_DBS=$(gum choose "${AVAILABLE_DBS[@]}" --no-limit --selected "$SELECTED_DBS" --height 5 --header "Select databases (runs in Docker)")
