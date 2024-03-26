# CopF - Interactive File and Directory Path Copier

CopF is a collection of Bash scripts that leverage [Charm's Gum](https://github.com/charmbracelet/gum) tool to provide an interactive way to list and copy file or directory paths to the clipboard in the terminal.

## Features

- **copfl.sh:** List and copy the path of a selected file in the current directory (excluding hidden files).
- **copfls.sh:** List and copy the path of a selected hidden file in the current directory.
- **copfd.sh:** List and copy the path of a selected directory in the current directory (excluding hidden directories).
- **copfds.sh:** List and copy the path of a selected hidden directory in the current directory.

## Installation

## Optional Automated Installation for Arch Linux and Wayland Users

For Arch Linux and Wayland users, an optional `install.sh` script is provided to automate the installation process. This script will install Go and Charm's Gum (if not already installed), clone the CopF repository, make the scripts executable, set up aliases, and copy the CopF path to the clipboard.

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

### Prerequisites

1. **Go:** 

You can download it from [the official Go website](https://golang.org/dl/). After installing, make sure `go` is in your system's `PATH`.
  
2. **Charm's Gum:** 

You can install it using the following command:

  ```bash
  go install github.com/charmbracelet/gum@latest
  ```
  
### Setting Up CopF

1. Clone the CopF repository:
   ```bash
   git clone https://github.com/AlexandrosLiaskos/CopF.git
   ```

2. Navigate to the CopF directory:
   ```bash
   cd CopF
   ```

3. Make the scripts executable:
   ```bash
   chmod +x copfl.sh copfls.sh copfd.sh copfds.sh
   ```

4. Set up aliases in your shell's configuration file (e.g., `.bashrc`, `.zshrc`):
   ```bash
   alias copfd='/path/to/CopF/copfd.sh'
   alias copfl='/path/to/CopF/copfl.sh'
   alias copfds='/path/to/CopF/copfds.sh'
   alias copfls='/path/to/CopF/copfls.sh'
   ```
   Replace `/path/to/CopF` with the actual path to the CopF directory on your system.

5. Restart your terminal for the changes to take effect.

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

