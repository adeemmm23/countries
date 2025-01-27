#!/bin/bash

for dir in */; do
  if [[ -f "$dir/vector.svg" ]]; then
    sed -i '1d' "$dir/vector.svg"
    echo "Deleted first line from vector.svg in $dir"
  fi
done
