# devcontainer

## Getting Started 

This repository contains a template for Deno and common VS code extensions. 

Follow these simple steps:

1. Clone the repository
    
    `git clone git@github.com:DenoBlox/devcontainer.git`

2. Rename the folder to your own project name

    `mv devcontainer my-project-name`

3. Change into the newly cloned folder
    
    `cd my-project-name`

4. Remote the git folder which will then enable you to setup git with your own project code, as you can not commit any code to the template repository itself.

    `rm -rf .git`

5. Launch VSCODE

    Note: The .ssh folder on your computer is automatically mounted into the devcontainer, so your github SSH keys are automatically available.

    `code .`

6. Open the project using devcontainers.
    
    VSCODE will pop up a message offering the option to `Reopen in Container`

    The first time, VSCODE will build the container which will take a few moments.

    Subsequently, VSCODE will open your project using the devcontainer automatically.

7. Personalise the devcontainer for your project
    
    Edit `.devcontainer/devcontainer.json`
    
    Set the name property and add any other VSCODE extensions that you require, such as copilot, or postgres admin etc. You can add anything you like and it will be loaded into VSCODE when you rebuild the container.

## About devcontainers

The beauty of devcontainers is that they are isolated environments where you can build and run your projects, without the need to install all of the required tools on your host computer.

Imagine you want one project with node, another with Python, and a another with Deno. You would have to install all of these different stacks on your host, and pretty soon it gets complicated when version of things start to clash. 

devcontainers provide lots of default settings in the `.devcontainer/devcontainer.json` file, which tell VSCODE what the docker container for your project should be called, together with other things like local folders to mount, VSCODE extensions to install, and ports that should be forwarded so that you can access things like web apps from your host, which are running inside the container.