#!/usr/bin/env bash

# ANSI escape code for cyan color
CYAN='\033[0;36m'
# ANSI escape code to reset color
NC='\033[0m'

# List all files in the current directory, including dotfiles, but excluding directories
files=($(ls -d -p .* | grep -v /))

# Check if there are no files in the directory
if [ ${#files[@]} -eq 0 ]; then
    # Copy the directory path to the clipboard
    echo "$PWD" | wl-copy
    # Notify the user that there are no files and the directory path has been copied
    echo -e "No files in the directory. Copied directory path to clipboard: ${CYAN}$PWD${NC}"
else
    # Use Gum to create an interactive selection menu
    selected_file=$(gum choose "${files[@]}")
    # Check if the user pressed ESC or selected a file
    if [ $? -eq 0 ]; then
        # Copy the full path of the selected file to the clipboard
        full_path="$PWD/$selected_file"
        echo "$full_path" | wl-copy
        # Notify the user that the path has been copied
        echo -e "Copied to clipboard: ${CYAN}$full_path${NC}"
    else
        echo "Selection canceled."
    fi
fi
