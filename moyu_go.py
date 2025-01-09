import pyautogui

screenWidth, screenHeight = pyautogui.size()

try:    
    pyautogui.moveTo(screenWidth/4, screenHeight/4, duration=1, tween=pyautogui.easeInOutQuad) # Use tweening/easing function to move mouse over 2 seconds.
    pyautogui.moveTo(3*screenWidth/4,   screenHeight/4, duration=1, tween=pyautogui.easeInOutQuad) # Use tweening/easing function to move mouse over 2 seconds.
    pyautogui.moveTo(  screenWidth/4, 3*screenHeight/4, duration=1, tween=pyautogui.easeInOutQuad) # Use tweening/easing function to move mouse over 2 seconds.
    pyautogui.moveTo(3*screenWidth/4, 3*screenHeight/4, duration=1, tween=pyautogui.easeInOutQuad) # Use tweening/easing function to move mouse over 2 seconds.
    pyautogui.moveTo(  screenWidth/4,   screenHeight/4, duration=1, tween=pyautogui.easeInOutQuad) # Use tweening/easing function to move mouse over 2 seconds.
except KeyboardInterrupt:
    print("script interrupted by user...")





