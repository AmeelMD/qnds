---

## 🚀 Quick Network Diagnostic Scripts (Q.N.D.S.)

Use these one-liners to collect basic network information and troubleshoot connectivity issues. Great for helping non-technical users quickly get you what you need.

---

### 🪟 Windows (PowerShell)

> 💬 **How to run:**  
> Right-click the **Start** button and select **“Windows PowerShell”** — or click **Start**, type **“PowerShell”**, and hit Enter.  
> Then paste this line and press **Enter**:

```powershell
irm https://raw.githubusercontent.com/AmeelMD/qnds/main/network-check-windows.ps1 | iex
```

📋 **This will display:**
- IP Address  
- MAC Address  
- Default Gateway  
- Traceroute to the Gateway  

---

### 🍏 macOS (Terminal)

> 💬 **How to run:**  
> Open the **Terminal** application (find it via Spotlight search with ⌘ + Space, type `Terminal`, press Enter),  
> then paste the line below and press **Enter**:

```bash
curl -s https://raw.githubusercontent.com/AmeelMD/qnds/main/network-check-macos.sh | bash
```

📋 **This will display:**
- Network interface name  
- IP Address  
- MAC Address  
- Gateway  
- Traceroute to the Gateway (if installed)

> ℹ️ If `traceroute` is missing, install it with:
> ```bash
> brew install traceroute
> ```
> You may need to install **Homebrew** first: https://brew.sh

---

### 🐧 Linux (Terminal)

> 💬 **How to run:**  
> Open the **Terminal**, then paste the line below and press **Enter**:

```bash
curl -s https://raw.githubusercontent.com/AmeelMD/qnds/main/network-check-linux.sh | bash
```

📋 **This will display:**
- IP Address  
- MAC Address  
- Gateway  
- Traceroute to the Gateway (if installed)

> ℹ️ If `traceroute` is not installed, on Debian/Ubuntu run:
> ```bash
> sudo apt install traceroute
> ```

---
