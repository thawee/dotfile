#!/bin/zsh

# Stop the script if any command fails
set -e

# --- Configuration ---

# Destination paths (these are the standard Ghostty locations)
DEST_CONFIG_DIR="$HOME/.config/ghostty"
DEST_THEMES_DIR="$DEST_CONFIG_DIR/themes"

# Source paths (assumes files are in the same directory as this script)
# zsh magic: $0 is the script itself, :h gets its "head" (the directory path)
SOURCE_DIR=${0:h}
SOURCE_CONFIG_FILE="$SOURCE_DIR/config"
SOURCE_THEMES_DIR="$SOURCE_DIR/themes"

# --- Zsh Color Setup (Optional but nice) ---
autoload -U colors && colors
# --- End Configuration ---


echo "${fg[cyan]}Starting Ghostty config installation...${reset_color}"

# 1. Create destination directories
#    -p creates parent directories as needed and doesn't error if they exist
echo "Ensuring destination directories exist..."
mkdir -p "$DEST_CONFIG_DIR"
mkdir -p "$DEST_THEMES_DIR"

# 2. Copy the main config file
if [ -f "$SOURCE_CONFIG_FILE" ]; then
    echo "Copying main config file..."
    # -v (verbose) prints what is being copied
    cp -v "$SOURCE_CONFIG_FILE" "$DEST_CONFIG_DIR/config"
else
    echo "${fg[red]}ERROR: Main config file not found at $SOURCE_CONFIG_FILE${reset_color}"
    echo "Please make sure your config file is named 'config' and is in the same directory as this script."
    exit 1
fi

# 3. Copy themes
if [ -d "$SOURCE_THEMES_DIR" ]; then
    echo "Copying themes..."
    # Copy all files from the source themes dir into the destination
    # The (N) is a Zsh "null glob" — it prevents an error if the themes/ directory is empty
    cp -v "$SOURCE_THEMES_DIR"/*(N) "$DEST_THEMES_DIR/"
else
    echo "${fg[yellow]}WARNING: No 'themes' directory found at $SOURCE_THEMES_DIR. Skipping theme copy.${reset_color}"
fi

echo "\n${fg[green]}✅ Ghostty configuration and themes installed successfully!${reset_color}"
