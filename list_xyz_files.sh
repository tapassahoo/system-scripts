#!/bin/bash

BASE_DIR="."  # Change if needed

find "$BASE_DIR" -type d -path '*/linear/B3LYP_def2TZVP_D4' | sort | while read dir; do
    xyz_files=($(find "$dir" -maxdepth 1 -type f -name '*.xyz' | sort))

    if [ ${#xyz_files[@]} -gt 0 ]; then
        echo -e "\n$dir: .xyz files found:"
        for file in "${xyz_files[@]}"; do
            echo "  - $(basename "$file")"
        done
    else
        echo -e "\n$dir: no .xyz file"
    fi
done

