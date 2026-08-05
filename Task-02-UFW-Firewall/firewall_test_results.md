# Firewall Test Results

## Test Objective

To verify that inbound HTTP traffic on TCP port 80 was blocked by UFW while the Kali Linux host remained reachable from the Windows 11 virtual machine.

## Test Environment

- Firewall host: Kali Linux
- Kali host-only IP address: `192.168.56.3`
- Test machine: Windows 11
- Windows host-only IP address: `192.168.56.2`
- Blocked service: HTTP
- Blocked port: `80/tcp`

## Testing Method

The following command was executed in Windows PowerShell:

```powershell
Test-NetConnection 192.168.56.3 -Port 80
```

## Result

The test returned:

```text
PingSucceeded    : True
TcpTestSucceeded : False
```

## Interpretation

`PingSucceeded: True` confirmed that the Kali Linux host was reachable across the host-only network.

`TcpTestSucceeded: False` confirmed that a TCP connection to port 80 could not be established.

This result is consistent with the UFW rule denying inbound HTTP traffic on `80/tcp`.

## Evidence

See:

```
screenshots/05_firewall_test.jpg
```