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

#### ✅ Example Output:
```
========= Network Info =========
IP Address   : 10.21.4.38
MAC Address  : F4-26-79-FC-9F-54
Gateway      : 10.21.4.1

Traceroute to Gateway (10.21.4.1):
--------------------------------
Tracing route to 10.21.4.1 over a maximum of 30 hops

  1    <1 ms    <1 ms    <1 ms  10.21.4.1

Trace complete.
```

---

### 🍏 macOS (Terminal)

> 💬 **How to run:**  
> Open the **Terminal** application (⌘ + Space → type `Terminal` → Enter),  
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

#### ✅ Example Output:
```
========= Network Info =========
Interface     : en1
IP Address    : 10.11.4.102
MAC Address   : 7a:9e:3b:cd:aa:f2
Gateway       : 10.11.4.1

Traceroute to Gateway (10.11.4.1):
--------------------------------
 1  10.21.4.1  2.3 ms  2.1 ms  2.0 ms
 2  10.11.4.1  5.3 ms  5.2 ms  5.2 ms
```

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

#### ✅ Example Output:
```
========= Network Info =========
IP Address    : 10.11.4.55
MAC Address   : 08:00:27:ab:cd:ef
Gateway       : 10.11.4.1

Traceroute to Gateway (10.11.4.1):
--------------------------------
 1  10.21.4.1  2.1 ms  1.9 ms  1.8 ms
 2  10.11.4.1  4.7 ms  4.6 ms  4.6 ms
```

---
