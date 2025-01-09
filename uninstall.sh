#!/bin/bash

# Exit on any error
set -e

echo "Uninstalling Moyu..."

# Remove the symlink
if [ -f /usr/local/bin/moyu ]; then
    echo "Removing moyu command..."
    sudo rm /usr/local/bin/moyu
fi

# Uninstall Python dependencies
echo "Removing Python dependencies..."
pip3 uninstall -y pyautogui

echo "Moyu has been uninstalled successfully!" 