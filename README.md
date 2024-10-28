# devcontainer

## Getting Started 

This repository contains a template for Deno and common VS code extensions. 

Follow these simple steps:

1. Create a new folder for your project and set it as the current directory 
    
    `mkdir my-project`

    `cd my-project`

2. Execute the shell script which will do all the initial work for you of installing deno and useful Visual Studio Code extensions:

    `read -p "Enter the project name: " project_name &&  curl -s https://raw.githubusercontent.com/DenoBlox/devcontainer/refs/heads/main/new_project.sh > deno_boot.sh && source deno_boot.sh && rm deno_boot.sh` 

## About devcontainers

The beauty of devcontainers is that they are isolated environments where you can build and run your projects, without the need to install all of the required tools on your host computer.

Imagine you want one project with node, another with Python, and a another with Deno. You would have to install all of these different stacks on your host, and pretty soon it gets complicated when version of things start to clash. 

devcontainers provide lots of default settings in the `.devcontainer/devcontainer.json` file, which tell VSCODE what the docker container for your project should be called, together with other things like local folders to mount, VSCODE extensions to install, and ports that should be forwarded so that you can access things like web apps from your host, which are running inside the container.