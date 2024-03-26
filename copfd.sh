#!/usr/bin/env bash
# ANSI escape code for cyan color
CYAN='\033[0;36m'
# ANSI escape code to reset color
NC='\033[0m'

# List all directories in the current directory, including hidden ones, but excluding files
dirs=($(ls -d */ | grep -v '^\./$' | grep -v '^\.\./$'))

# Check if there are no directories in the current directory
if [ ${#dirs[@]} -eq 0 ]; then
    # Copy the directory path to the clipboard
    echo "$PWD" | wl-copy
    # Notify the user that there are no directories and the directory path has been copied
    echo -e "No directories in the current directory. Copied directory path to clipboard: ${CYAN}$PWD${NC}"
else
    # Use Gum to create an interactive selection menu for directories
    selected_dir=$(gum choose "${dirs[@]}")

    # Check if the user pressed ESC or selected a directory
    if [ $? -eq 0 ]; then
        # Copy the full path of the selected directory to the clipboard
        full_path="$PWD/$selected_dir"
        echo "$full_path" | wl-copy
        # Notify the user that the path has been copied
        echo -e "Copied to clipboard: ${CYAN}$full_path${NC}"
    else
        echo "Selection canceled."
    fi
fi

