#!/bin/bash

# cleanup ================================================================================
find . -type f -name '*Zone.Identifier' -delete
echo "Cleanup of Windows-generated Zone.Identifier files complete ~"

# setup ==================================================================================
if [[ "$1" == "--setup" ]]; then
    echo -n "Are you sure you want to run setup? This will reset some files. (y/n): "
    read confirm
    if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
        echo "Setup cancelled."
        exit 0
    fi
    rm -f ./data/images/images.txt
    rm -f ./data/tables/tables.txt
    rm -f ./sections/sections.txt
    rm -f images.svg
    echo "LaTeX Paper README" > README.md
    year=$(date +%Y)
    sed -i '3d' LICENSE 2>/dev/null || true
    sed -i "3i Copyright (c) $year John Doe" LICENSE
    mv temp.gitignore .gitignore
    echo "Setup Complete ~"
fi