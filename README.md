# Moyu - Keep Your Computer Awake

A simple utility that moves your mouse cursor in a square pattern to prevent your computer from going to sleep or showing as "away" in messaging apps.
- Moves the mouse cursor in a pattern
- Random delay after movements (10-20 seconds)
- Repeat

## Dependencies

- Python 3.x
- pip (Python package manager)
- pyautogui package


## Quick Install

Simply run the install script and you are ready to go:
```bash
./install.sh
```

Once installed, you can run `moyu` from anywhere in your terminal. Press `Ctrl+C` to stop.

## Uninstall

To remove Moyu and its dependencies from your system:
```bash
./uninstall.sh
```

## Manual Run

If you prefer to run Moyu directly from its directory:


Install the required Python package:
```bash
pip3 install pyautogui
```

### Running from Project Directory
1. Make the scripts executable:
```bash
chmod +x moyu.sh moyu_go.py
```

2. Run the script:
```bash
./moyu.sh
```

Press `Ctrl+C` to stop the program.

