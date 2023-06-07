# Cleanup Scripts for React and Vite Projects

This repository contains scripts to perform initial cleanup for projects created with `create-react-app` and `create-vite`.

## Scripts

1. **cleanup-react-app-js.sh**: This script performs initial cleanup for a React project created with `create-react-app` JavaScript template.

2. 1. **cleanup-react-app-ts.sh**: This script performs initial cleanup for a React project created with `create-react-app` TypeScript template.

3. **cleanup-vite-app.sh**: This script performs initial cleanup for a Vite project created with `create-vite`.

## Usage

1. Make the scripts executable:

    ```bash
    chmod +x cleanup-react-app-js.sh cleanup-react-app-ts.sh cleanup-vite-app.sh
    ```

2. Run the script on the desired project:

    ```bash
    ./cleanup-react-app-js.sh path_to_your_project
    ./cleanup-react-app-ts.sh path_to_your_project
    ./cleanup-vite-app.sh path_to_your_project
    ```

    Replace `path_to_your_project` with the path to your project.

    The script will remove unnecessary files and adjust some others to get you a clean starting point for your projects.

## Note

These scripts assume a specific structure for the project directories. If your projects have different structures, the scripts may need to be adjusted.

Always make sure to backup your work or use version control before running any cleanup scripts.

Happy coding!
