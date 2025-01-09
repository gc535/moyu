#!/bin/bash

# Exit on any error
set -e

echo "Installing Moyu..."

# Get the directory where the install script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check if Python3 is installed
if ! command -v python3 &> /dev/null; then
    echo "Error: Python3 is required but not installed."
    exit 1
fi

# Check if pip3 is installed
if ! command -v pip3 &> /dev/null; then
    echo "Error: pip3 is required but not installed."
    exit 1
fi

# Install required Python package
echo "Installing Python dependencies..."
pip3 install pyautogui

# Make scripts executable
echo "Making scripts executable..."
chmod +x "$SCRIPT_DIR/moyu.sh" "$SCRIPT_DIR/moyu_go.py"

# Create symlink to make command available system-wide
echo "Adding 'moyu' command to system..."
if [ -f /usr/local/bin/moyu ]; then
    echo "Removing existing moyu command..."
    sudo rm /usr/local/bin/moyu
fi

echo "Creating new symlink..."
sudo ln -s "$SCRIPT_DIR/moyu.sh" /usr/local/bin/moyu

echo "Installation complete! You can now use the 'moyu' command from anywhere."
echo "To start: moyu"
echo "To stop: Ctrl+C" 