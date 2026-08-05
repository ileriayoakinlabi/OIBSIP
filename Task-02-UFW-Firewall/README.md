# Task 2 - Basic Firewall Configuration with UFW

## Objective

The objective of this task was to configure a basic firewall on Kali Linux using UFW, apply rules to allow and deny specific traffic, verify the active rules, and test whether denied HTTP traffic was blocked.

## What a Firewall Does

A firewall monitors and filters incoming and outgoing network traffic based on configured rules. It acts as a gatekeeper by allowing approved traffic and blocking traffic that does not meet the security policy.

## Tools Used

- Kali Linux
- UFW
- Windows 11 PowerShell
- Oracle VirtualBox

## Installation

UFW was installed using:

```bash
sudo apt update
sudo apt install ufw -y
```

The initial status was checked using:

```bash
sudo ufw status
```

The result showed:

```text
Status: inactive
```

## Firewall Rules Configured

| Command | Purpose |
|---|---|
| `sudo ufw allow ssh` | Allows inbound SSH traffic on TCP port 22 |
| `sudo ufw deny 80/tcp` | Denies inbound HTTP traffic on TCP port 80 |
| `sudo ufw allow 443/tcp` | Allows inbound HTTPS traffic on TCP port 443 |
| `sudo ufw deny 21/tcp` | Denies inbound FTP traffic on TCP port 21 |

## Why These Rules Were Chosen

### SSH - Port 22

SSH was allowed to support secure remote administration.

### HTTP - Port 80

HTTP was denied because it transmits data without encryption and blocking it was a required part of the task.

### HTTPS - Port 443

HTTPS was allowed as an additional rule because it supports encrypted web communication.

### FTP - Port 21

FTP was denied as an additional rule because traditional FTP can transmit credentials and data without encryption.

## Enabling UFW

The firewall was enabled using:

```bash
sudo ufw enable
```

## Verifying the Rules

The final rules were verified using:

```bash
sudo ufw status verbose
```

and:

```bash
sudo ufw status numbered
```

The final configuration allowed SSH and HTTPS while denying HTTP and FTP.

## Testing the Denied Traffic

From the Windows 11 virtual machine, the following PowerShell command was used:

```powershell
Test-NetConnection 192.168.56.3 -Port 80
```

The result showed:

```text
PingSucceeded    : True
TcpTestSucceeded : False
```

This confirmed that the Kali Linux host remained reachable while TCP connections to port 80 were unsuccessful.

Full testing details are available in:

```text
firewall_test_results.md
```

## Automation Script

The file:

```text
ufw_configuration.sh
```

contains the firewall rules in sequence and can be run using:

```bash
sudo ./ufw_configuration.sh
```

## Screenshots

The `screenshots` folder contains evidence of:

1. UFW installation and activation
2. SSH rule configuration
3. HTTP blocking rule
4. Final firewall rules
5. Port 80 connection test