# Task 1 - Network Reconnaissance Using Nmap

## Objective

The objective of this task was to perform basic network reconnaissance by identifying a live Windows 11 host and discovering its open TCP ports using Nmap. This exercise demonstrates how attackers and security professionals gather information about systems before conducting further security assessments.

---

## Lab Environment

| Component | Details |
|-----------|---------|
| Attacker Machine | Kali Linux |
| Target Machine | Windows 11 |
| Virtualization | Oracle VirtualBox |
| Network Configuration | NAT + Host-Only Adapter |
| Target IP Address | 192.168.56.2 |

---

## Tools Used

- Nmap 7.99
- Kali Linux
- Windows 11
- Oracle VirtualBox
- Git
- GitHub
- Visual Studio Code

---

## Commands Executed

### Verify connectivity

```bash
ping 192.168.56.2
```

### Perform network scan

```bash
nmap 192.168.56.2
```

---

## Scan Results

The scan identified the following open TCP ports:

| Port | Service | Description |
|------|----------|-------------|
| 135 | MSRPC | Microsoft Remote Procedure Call |
| 139 | NetBIOS-SSN | Windows File and Printer Sharing |
| 445 | Microsoft-DS (SMB) | Server Message Block |

The complete scan output is available in:

```
nmap_scan_results.txt
```

---

## Screenshots

The following screenshots were captured during the assessment:

- Successful connectivity test
- Nmap scan results

Screenshots are stored in the **screenshots** folder.

---

## Security Analysis

### Port 135 (MSRPC)

This service is used for communication between Windows applications and services. If exposed unnecessarily, it may increase the attack surface.

### Port 139 (NetBIOS)

This service supports legacy Windows file and printer sharing. It can reveal information about shared resources if not properly secured.

### Port 445 (SMB)

SMB is commonly used for file sharing within Windows environments. Attackers frequently target this service for lateral movement and exploitation if systems are unpatched or poorly configured.

---

## Risk Assessment

The presence of these services does not automatically indicate a vulnerability. However, exposed services should always be reviewed to ensure they are required and properly secured.

Potential risks include:

- Information disclosure
- Unauthorized file sharing
- Lateral movement within a network
- Exploitation of unpatched Windows services

---

## Mitigation Recommendations

- Disable unnecessary network services.
- Restrict SMB access using firewall rules.
- Keep Windows systems fully updated.
- Limit administrative access.
- Monitor network activity regularly.

---

## Skills Demonstrated

- Network Reconnaissance
- Host Discovery
- Nmap Scanning
- Windows Service Enumeration
- Basic Security Analysis
- Technical Documentation
- Git Version Control
- GitHub Project Management

---

## Learning Outcome

Through this task, I gained practical experience configuring a virtual lab environment, performing host discovery, identifying open services using Nmap, analysing common Windows network services, documenting findings, and publishing the completed project using GitHub.

---