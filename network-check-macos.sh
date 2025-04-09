#!/bin/bash

# Colors
GREEN="\033[1;32m"
NC="\033[0m"

# Try common interfaces: en0 (Ethernet), en1 (Wi-Fi), or auto-detect
iface=$(networksetup -listallhardwareports | awk '/Device/ {print $2}' | head -n 1)

# Get IP
ip=$(ipconfig getifaddr "$iface" 2>/dev/null)

# Get MAC
mac=$(ifconfig "$iface" 2>/dev/null | awk '/ether/ {print $2}')

# Get Gateway
gw=$(netstat -rn | awk '/default/ {print $2}' | head -n 1)

# Output
echo -e "${GREEN}========= Network Info =========${NC}"
echo "Interface     : $iface"
echo "IP Address    : $ip"
echo "MAC Address   : $mac"
echo "Gateway       : $gw"
echo ""

# Traceroute (if installed)
if command -v traceroute >/dev/null 2>&1; then
    echo -e "${GREEN}Traceroute to Gateway ($gw):${NC}"
    echo "--------------------------------"
    traceroute -n "$gw"
else
    echo -e "${GREEN}Traceroute:${NC} traceroute not found."
    echo "To install it, run: brew install traceroute"
fi
