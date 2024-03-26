# Clone the CopF repository
echo "Cloning CopF repository..."
git clone https://github.com/AlexandrosLiaskos/CopF.git

# Navigate to the CopF directory
cd CopF

# Make the scripts executable
echo "Making scripts executable..."
chmod +x copfl.sh copfls.sh copfd.sh copfds.sh

# Determine the clipboard command based on the display server
if [ -n "$WAYLAND_DISPLAY" ]; then
    clipboard_command="wl-copy"
elif [ -n "$DISPLAY" ]; then
    clipboard_command="xclip -selection clipboard"
else
    echo "Could not detect display server. Exiting."
    exit 1
fi

# Update scripts to use the determined clipboard command
sed -i "s|wl-copy|$clipboard_command|g" copfl.sh copfls.sh copfd.sh copfds.sh

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
