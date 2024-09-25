#!/bin/env bash

function open_url {
    if [[ -x "$(command -v google-chrome)" ]]; then
      google-chrome $1;
    elif [[ -x "$(command -v google-chrome-stable)" ]]; then
      google-chrome-stable $1;
    elif [[ -x "$(command -v firefox)" ]]; then
      firefox $1;
    else
      echo "Please open: $1"
    fi
}

if [[ ! -x "$(command -v node)" ]]; then
    echo "Error: NodeJS not found."
    sleep 2
    open_url https://nodejs.org/en/download/package-manager;
    exit 1
fi

