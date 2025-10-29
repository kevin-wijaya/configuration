#!/bin/bash

# cleanup ================================================================================

# Remove Windows Zone.Identifier files
find . -type f -name '*Zone.Identifier' -exec rm -f {} +
echo "Cleanup of Windows-generated Zone.Identifier files complete ~"

# setup ==================================================================================
if [[ "$1" == "--setup" ]]; then
    echo -n "Are you sure you want to run setup? This will reset some files. (y/n): "
    read confirm
    if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
        echo "Setup cancelled." 
        exit 0
    fi

    # Remove old data files
    rm -f ./data/images/images.txt
    rm -f ./data/tables/tables.txt
    rm -f ./sections/sections.txt
    rm -f images.svg LICENSE README.md

    mv ignore .gitignore

    echo "Setup Complete ~"
fi
