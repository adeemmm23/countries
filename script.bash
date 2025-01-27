#!/bin/bash

for dir in */; do
  if ls "$dir"*.png &>/dev/null; then
    for file in "$dir"*.png; do
      if [[ "$(basename "$file")" != "1024.png" ]]; then
        echo "Deleting $file"
        rm "$file"
      fi
    done
  fi
done
