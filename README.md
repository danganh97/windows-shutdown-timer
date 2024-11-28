# Shutdown Timer Script

This is a Windows batch script that allows you to schedule a system shutdown after a user-specified duration in hours. It provides a real-time countdown, displaying the remaining time in the format `X hours, X minutes, X seconds`.

## Features
- Prompt the user to enter the number of hours until shutdown.
- Validates the user input to ensure it is numeric.
- Dynamically calculates and displays the countdown in real-time.
- Allows cancellation of the shutdown process by pressing `Ctrl+C`.
- Provides feedback and clear messaging throughout.

## How It Works
1. The script asks for the number of hours until shutdown.
2. Converts the input into seconds.
3. Schedules a system shutdown using the Windows `shutdown` command.
4. Starts a countdown that updates every second, showing the remaining time in the format:

> Time left until shutdown: X hour(s), X minute(s), X second(s).

5. If you wish to cancel the shutdown, you can:
- Press `Ctrl+C` during execution.
- Re-run the script (this will automatically cancel any existing scheduled shutdowns).

## How to Use
1. Download the script and save it as `shutdown_timer.bat`.
2. Double-click to run the script.
3. Enter the desired shutdown delay in **hours** when prompted.
4. Watch the countdown until shutdown, or cancel it if needed.

## Example Output

```code
Welcome to the Shutdown Timer
How many hours do you want the system to shut down?: 2

Your computer will shut down in 2 hour(s), which is 7200 seconds. Press Ctrl+C to cancel at any time.
Time left until shutdown: 1 hour(s), 59 minute(s), 58 second(s).
```

## Requirements
- Windows OS.
- Command Prompt.

## Troubleshooting
- **Invalid Input:** If you enter a non-numeric value, the script will prompt you to re-enter a valid number.
- **Shutdown Already Scheduled:** If a shutdown is already scheduled, the script automatically cancels it before starting a new one.

## License
This script is provided as-is, free for personal and educational use. Modify it to suit your needs!

## Owner
[![Check out danganh97's profile on stardev.io](https://stardev.io/developers/danganh97/badge/languages/global.svg)](https://stardev.io/developers/danganh97)
