#!/bin/bash

# Colors for visibility
GREEN="\033[1;32m"
NC="\033[0m"

# Try to detect the first active network service
active_iface=$(route get default 2>/dev/null | awk '/interface: / {print $2}')
[ -z "$active_iface" ] && active_iface="en0"  # fallback to en0 if detection fails

# Get IP address
ip=$(ipconfig getifaddr "$active_iface" 2>/dev/null)

# Get MAC address
mac=$(ifconfig "$active_iface" 2>/dev/null | awk '/ether/ {print $2}')

# Get default gateway
gw=$(netstat -rn | awk '/default/ {print $2}' | head -n 1)

# Output results
echo -e "${GREEN}========= Network Info =========${NC}"
echo "Interface     : $active_iface"
echo "IP Address    : ${ip:-Unavailable}"
echo "MAC Address   : ${mac:-Unavailable}"
echo "Gateway       : ${gw:-Unavailable}"
echo ""

# Traceroute (if installed)
if command -v traceroute >/dev/null 2>&1; then
    echo -e "${GREEN}Traceroute to Gateway (${gw}):${NC}"
    echo "--------------------------------"
    traceroute -n "$gw"
else
    echo -e "${GREEN}Traceroute:${NC} traceroute command not found."
    echo "To install it, run: brew install traceroute"
fi
