#!/bin/bash

BASE_DIR="."  # Or set to full path if needed

find "$BASE_DIR" -type d -path '*/linear/MP2_DEF2TZVP' | sort | while read dir; do
    if ls "$dir"/*.xyz >/dev/null 2>&1; then
        echo "$dir: .xyz file found"
    else
        echo "$dir: no .xyz file"
    fi
done

