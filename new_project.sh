#!/bin/bash
mkdir -p .devcontainer

if [ ! -f ".devcontainer/devcontainer.json" ]; then
    read -p "Enter the project name: " project_name
    curl -s https://raw.githubusercontent.com/DenoBlox/devcontainer/refs/heads/main/.devcontainer/devcontainer.json \
        | sed "s/DenoContainer/$project_name/g" \
        > .devcontainer/devcontainer.json

    echo "devcontainer name is: '$project_name'"
else
    echo ".devcontainer/devcontainer.json already exists and can not be changed by this script"
fi

if [ ! -f ".devcontainer/Dockerfile" ]; then
    curl -s https://raw.githubusercontent.com/DenoBlox/devcontainer/refs/heads/main/.devcontainer/Dockerfile > .devcontainer/Dockerfile
else
    echo ".devcontainer/Dockerfile already exists and can not be changed by this script"
fi

