#!/bin/bash
mkdir -p .devcontainer

echo "Creating new Deno project for '$project_name'"

if [ ! -f ".devcontainer/devcontainer.json" ]; then
    curl -s https://raw.githubusercontent.com/DenoBlox/devcontainer/refs/heads/main/.devcontainer/devcontainer.json \
        | sed "s/DenoContainer/$project_name/g" \
        > .devcontainer/devcontainer.json

    echo "devcontainer name is: '$project_name'"
else
    echo "Skipped .devcontainer/devcontainer.json, file already exists and can not be changed by this script"
fi


files=".devcontainer/Dockerfile deno.json main.ts"

for file in $files; do
    if [ ! -f "$file" ]; then
        curl -s https://raw.githubusercontent.com/DenoBlox/devcontainer/refs/heads/main/$file > $file
    fi
done

