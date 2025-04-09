#!/usr/bin/env bash

# Ensure compatibility with bash or zsh
set -e

# Colors for better phone-photo readability
GREEN="\033[1;32m"
NC="\033[0m"

# Get IP (non-loopback, non-docker)
ip=$(ip -4 addr show scope global | awk '/inet/ {print $2}' | cut -d/ -f1 | head -n 1)

# Get MAC address of first UP interface
mac=$(ip link | awk '/state UP/ {getline; print $2}' | head -n 1)

# Get default gateway
gw=$(ip route | awk '/default/ {print $3}' | head -n 1)

# Output
echo -e "${GREEN}========= Network Info =========${NC}"
echo "IP Address    : $ip"
echo "MAC Address   : $mac"
echo "Gateway       : $gw"
echo ""

# Check if traceroute exists
if command -v traceroute >/dev/null 2>&1; then
    echo -e "${GREEN}Traceroute to Gateway ($gw):${NC}"
    echo "--------------------------------"
    traceroute -n "$gw"
else
    echo -e "${GREEN}Traceroute:${NC} traceroute command not found."
    echo "You can install it with: sudo apt install traceroute"
fi
