## 🚀 Quick Network Diagnostic Scripts (Q.N.D.S.)

Use these one-liners to collect network information and troubleshoot connectivity issues. Great for helping end users get you what you need—fast.

---

### 🪟 Windows (PowerShell)

> 💬 Ask the user to right-click **Start** and select **“Windows PowerShell”**, then paste the line below:

```powershell
irm https://raw.githubusercontent.com/AmeelMD/qnds/main/network-check-windows.ps1 | iex
```

📋 **This will show:**
- IP Address
- MAC Address
- Default Gateway
- Traceroute to the Gateway

---

### 🍏 macOS (Terminal)

> 💬 Ask the user to open **Terminal**, paste the following, and press Enter:

```bash
curl -s https://raw.githubusercontent.com/AmeelMD/qnds/main/network-check-macos.sh | bash
```

📋 **This will show:**
- Network interface name
- IP Address
- MAC Address
- Gateway
- Traceroute to the Gateway

> ℹ️ If `traceroute` is missing, they can install it via: `brew install traceroute`

---

### 🐧 Linux (Terminal)

> 💬 Ask the user to open **Terminal**, paste the following, and press Enter:

```bash
curl -s https://raw.githubusercontent.com/AmeelMD/qnds/main/network-check-linux.sh | bash
```

📋 **This will show:**
- IP Address
- MAC Address
- Gateway
- Traceroute to the Gateway

> ℹ️ On Debian/Ubuntu systems: `sudo apt install traceroute` if needed.

---
