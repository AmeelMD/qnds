🛠️ Quick Network Diagnostic Scripts
Simple one-liner scripts for grabbing basic network info (IP, MAC, Gateway) and running a traceroute. Useful for quickly identifying connection issues across platforms.

🪟 Windows (PowerShell)
Paste this into Windows PowerShell (right-click Start → “Windows PowerShell”):

irm https://raw.githubusercontent.com/AmeelMD/qnds/main/network-check-windows.ps1 | iex

This will display:

IP Address

MAC Address

Gateway

Traceroute to the Gateway

🍏 macOS
Paste this into Terminal and hit Enter:

curl -s https://raw.githubusercontent.com/AmeelMD/scriptsnstuff/main/network-check-macos.sh | bash

This will display:

Network interface name

IP Address

MAC Address

Gateway

Traceroute to the Gateway (if installed)

💡 If traceroute isn’t installed, you can run brew install traceroute to add it.

🐧 Linux
Paste this into Terminal and hit Enter:

\curl -s https://raw.githubusercontent.com/AmeelMD/scriptsnstuff/main/network-check-linux.sh | bash

This will display:

IP Address

MAC Address

Gateway

Traceroute to the Gateway (if available)

⚠️ If traceroute is not installed, install it using your package manager (e.g. sudo apt install traceroute on Debian/Ubuntu).
