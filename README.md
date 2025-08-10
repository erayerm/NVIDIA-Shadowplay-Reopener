# ShadowPlay Auto Instant Replay Enabler

This AutoHotkey script automatically re-enables NVIDIA ShadowPlay’s Instant Replay feature when you exit streaming services like Netflix, Amazon Prime, Disney+, and others that cause ShadowPlay to disable itself due to DRM restrictions.

---

## How it works

- Monitors active browser windows for streaming platform titles (Netflix, Prime Video, Disney+, BluTV, HBO Max, Apple TV+).
- Detects when you stop watching (close or switch away from those platforms).
- Waits 5 seconds, then sends the keyboard shortcut (`Alt + Shift + F10`) to toggle Instant Replay back on.
- Prevents accidental toggling by sending the command only once per exit event.

---

## Supported browsers

- Chrome  
- Microsoft Edge  
- Firefox  
- Brave  

---

## Installation & Usage

1. Install [AutoHotkey v1.1](https://www.autohotkey.com/).

2. Save the script (`.ahk` file) to a location of your choice.

3. Run the script by double-clicking it.

4. To have the script run automatically every time Windows starts:

    - Press `Win + R`, type `shell:startup`, and press Enter. This opens your Startup folder.

    - Place a **shortcut** to your `.ahk` script inside this folder.

    - From now on, the script will start automatically whenever you log into Windows.

---

## Notes

- Make sure the Instant Replay shortcut (`Alt + Shift + F10`) is set and working in your NVIDIA GeForce Experience settings.

- You can customize the list of streaming platforms and browsers inside the script.

---

## Disclaimer

This script is provided as-is and is not affiliated with NVIDIA or any streaming service.

---

*This README.md created with ChatGPT.*
