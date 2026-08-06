# Wireshark Traffic Analysis

## Objective

The objective of this task was to capture and analyse network traffic using Wireshark. The exercise focused on identifying HTTP, DNS and TCP packets, examining packet communication, and understanding how network protocols interact.

---

## Environment

- Operating System: Kali Linux
- Tool: Wireshark 4.6.6
- Capture Interface: eth0
- Target Websites:
  - http://neverssl.com
  - https://example.com
  - https://www.google.com

---

## Packet Capture

Traffic was captured while browsing the target websites. The packet capture contained HTTP, DNS, TCP, TLS and QUIC traffic.

The capture was saved as:

wireshark_capture.pcap

---

## HTTP Analysis

Applying the filter:

```
http
```

displayed HTTP requests and responses.

The capture showed:

- HTTP GET request
- HTTP/1.1 200 OK response

This demonstrates the communication between the client browser and the web server.

---

## DNS Analysis

Applying the filter:

```
dns
```

displayed DNS queries and responses.

DNS was responsible for translating domain names into IP addresses before communication could begin.

---

## TCP Analysis

Applying the filter:

```
tcp
```

displayed all TCP packets.

The capture contained:

- TCP acknowledgements (ACK)
- Connection termination (FIN, ACK)
- TCP retransmissions
- Reliable communication between client and server

TCP establishes reliable communication using the three-way handshake:

1. SYN
2. SYN-ACK
3. ACK

After the connection is established, application data such as HTTP requests can be exchanged.

---

## HTTP GET Request

The capture showed an HTTP GET request sent to the web server requesting the default web page.

The server responded with:

HTTP/1.1 200 OK

confirming successful communication.

---

## Security Observation

HTTP traffic is transmitted in plaintext.

Anyone intercepting the traffic could potentially view sensitive information.

HTTPS encrypts communication using TLS, protecting confidentiality and integrity while preventing attackers from reading transmitted data.

---

## Conclusion

This exercise demonstrated practical packet capture using Wireshark and provided insight into HTTP, DNS and TCP communication.

Understanding packet analysis is an essential skill for SOC Analysts, Incident Responders and Network Security professionals.