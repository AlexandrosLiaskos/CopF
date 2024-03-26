#!/bin/bash

# Check if Go is installed and up to date
if ! command -v go &> /dev/null || ! go version | grep -q "go1.18"; then
    echo "Installing or updating Go..."
    sudo pacman -S go --noconfirm
else
    echo "Go is already installed and up to date."
fi

# Check if Charm's Gum is installed and up to date
if ! command -v gum &> /dev/null || ! gum version | grep -q "gum version"; then
    echo "Installing or updating Charm's Gum..."
    go install github.com/charmbracelet/gum@latest
else
    echo "Charm's Gum is already installed and up to date."
fi

# Clone the CopF repository
echo "Cloning CopF repository..."
git clone https://github.com/AlexandrosLiaskos/CopF.git

# Navigate to the CopF directory
cd CopF

# Make the scripts executable
echo "Making scripts executable..."
chmod +x copfl.sh copfls.sh copfd.sh copfds.sh

# Choose the shell and set up aliases
echo "Choose your shell:"
shell=$(gum choose "bash" "zsh" "nushell")
case $shell in
    "bash")
        shell_config="$HOME/.bashrc"
        ;;
    "zsh")
        shell_config="$HOME/.zshrc"
        ;;
    "nushell")
        shell_config="$HOME/.config/nushell/config.nu"
        ;;
    *)
        echo "Unsupported shell. Exiting."
        exit 1
        ;;
esac

echo "Setting up aliases in $shell_config..."
copf_path=$(pwd)
echo "alias copfd='$copf_path/copfd.sh'" >> $shell_config
echo "alias copfl='$copf_path/copfl.sh'" >> $shell_config
echo "alias copfds='$copf_path/copfds.sh'" >> $shell_config
echo "alias copfls='$copf_path/copfls.sh'" >> $shell_config

echo "Installation complete! Please restart your terminal for changes to take effect."
