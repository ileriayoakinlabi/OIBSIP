# Commands Used

## Check IP Address (Windows)

```cmd
ipconfig
```

Displays the Windows network configuration.

---

## Check IP Address (Kali)

```bash
ip addr
```

Displays the network interfaces and IP addresses assigned to Kali Linux.

---

## Test Connectivity

```bash
ping 192.168.56.2
```

Verifies that the Windows VM is reachable from Kali Linux.

---

## Basic Nmap Scan

```bash
nmap 192.168.56.2
```

Performs a TCP port scan to identify open ports.

---

## Save Nmap Output

```bash
nmap 192.168.56.2 > nmap_scan_results.txt
```

Saves the scan results into a text file for documentation.