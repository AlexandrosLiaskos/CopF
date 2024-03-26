<p align="center">
    <img src="https://github.com/AlexandrosLiaskos/CopF/assets/128935863/aebfd2a8-cc4d-45e5-9e71-ec28e6166b44" alt="TauNest" width="200"/>
</p>
<h1 align="center">
    Interactive File and Directory Path Copier
</h1>

CopF is a collection of Bash scripts that leverage [Charm's Gum](https://github.com/charmbracelet/gum) tool to provide an interactive way to list and copy file or directory paths to the clipboard in the terminal.

## Features

- **copfl.sh:** List and copy the path of a selected file in the current directory (excluding hidden files).
- **copfls.sh:** List and copy the path of a selected hidden file in the current directory.
- **copfd.sh:** List and copy the path of a selected directory in the current directory (excluding hidden directories).
- **copfds.sh:** List and copy the path of a selected hidden directory in the current directory.

## Installation

1. **Go:** 

You can download it from [the official Go website](https://golang.org/dl/). After installing, make sure `go` is in your system's `PATH`.
  
2. **Charm's Gum:** 

You can install it using the following command:

  ```bash
  go install github.com/charmbracelet/gum@latest
  ```

To use the automated configuration script, follow these steps:

1. Make the script executable:

  ```bash
  chmod +x config.sh
  ```

2. Run the script:
  ```bash
  ./config.sh
  ```

3. Restart your terminal for the changes to take effect.

## Optional Automated Installation for Arch Linux and Wayland Users

For Arch Linux and Wayland users, an optional `install.sh` script is provided to automate the installation process.
To use the automated installation script, follow these steps:

1. Make the script executable:

  ```bash
  chmod +x install.sh
  ```

2. Run the script:
  ```bash
  ./install.sh
  ```

3. Restart your terminal for the changes to take effect.

Please note that this script is specifically designed for Arch Linux and Wayland users. If you are using a different Linux distribution or display server, you may need to manually follow the installation steps.
  
## Usage

- To list and copy a file path in the current directory (excluding hidden files), use:
  ```bash
  copfl
  ```

- To list and copy a hidden file path in the current directory, use:
  ```bash
  copfls
  ```

- To list and copy a directory path in the current directory (excluding hidden directories), use:
  ```bash
  copfd
  ```

- To list and copy a hidden directory path in the current directory, use:
  ```bash
  copfds
  ```

