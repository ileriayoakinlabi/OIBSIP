# Common Network Security Threats

## Executive Summary

Modern organisations depend heavily on computer networks to support communication, data storage, financial transactions, healthcare, education, and critical infrastructure. As organisations become increasingly connected, cybercriminals continue to develop sophisticated techniques to exploit weaknesses within networks. Understanding common network security threats enables organisations to implement effective defensive controls that reduce the likelihood and impact of cyber attacks.

This report examines four common network security threats: Denial-of-Service (DoS/DDoS) attacks, Man-in-the-Middle (MITM) attacks, IP Spoofing, and DNS Poisoning. Each threat is discussed in terms of how it works, its real-world impact, documented incidents, and recommended mitigation strategies.

---

# Introduction

Network security threats continue to increase as businesses rely more heavily on internet-connected systems and cloud technologies. Attackers target networks to steal sensitive information, interrupt business operations, gain unauthorised access, or damage an organisation's reputation.

Understanding these threats allows network administrators and cybersecurity professionals to implement preventive measures before vulnerabilities can be exploited.

---

# 1. Denial of Service (DoS) and Distributed Denial of Service (DDoS)

## What is a DoS Attack?

A Denial of Service attack attempts to make a computer system or network unavailable by overwhelming it with excessive traffic or malicious requests.

A Distributed Denial of Service (DDoS) attack operates similarly but uses thousands or even millions of compromised devices (botnets) to generate traffic simultaneously.

---

## How it Works

The attacker sends a massive number of requests to the target server.

The server becomes overwhelmed, consumes all available resources, and eventually becomes unable to serve legitimate users.

---

## Real-World Example

### Dyn DNS Attack (2016)

In October 2016, attackers used the Mirai Botnet to launch one of the largest DDoS attacks ever recorded.

Major organisations including:

- Twitter
- Netflix
- Reddit
- Spotify
- GitHub

experienced widespread service outages.

---

## Impact

- Website downtime
- Financial loss
- Reduced customer confidence
- Business disruption
- Reputation damage

---

## Mitigation Strategies

- Deploy Web Application Firewalls (WAF)
- Use Content Delivery Networks (CDNs)
- Implement rate limiting
- Deploy DDoS protection services
- Configure network traffic filtering

---

# 2. Man-in-the-Middle (MITM) Attack

## What is MITM?

A Man-in-the-Middle attack occurs when an attacker secretly intercepts communication between two parties.

Instead of communicating directly, both parties unknowingly communicate through the attacker.

---

## How it Works

The attacker positions themselves between two communicating devices.

Data transmitted between both devices can be:

- intercepted
- modified
- stolen

without either user noticing.

---

## Real-World Example

Public Wi-Fi attacks in cafés, hotels and airports have frequently been used by attackers to intercept unencrypted traffic from unsuspecting users.

---

## Impact

- Credential theft
- Identity theft
- Financial fraud
- Session hijacking
- Data manipulation

---

## Mitigation Strategies

- HTTPS everywhere
- VPN usage
- Multi-Factor Authentication
- Certificate validation
- Secure Wi-Fi networks

---

# 3. IP Spoofing

## What is IP Spoofing?

IP Spoofing involves forging the source IP address of network packets to disguise the attacker's identity.

---

## How it Works

Instead of sending packets from their real IP address, attackers replace it with another address to bypass security controls or impersonate trusted systems.

---

## Real-World Example

IP spoofing is commonly used during reflection and amplification DDoS attacks such as DNS Amplification attacks.

---

## Impact

- Bypass Access Controls
- DDoS attacks
- Network trust abuse
- Difficulty tracing attackers

---

## Mitigation Strategies

- Ingress Filtering
- Egress Filtering
- Packet filtering firewalls
- Anti-spoofing ACLs
- Network monitoring

---

# 4. DNS Poisoning (DNS Spoofing)

## What is DNS Poisoning?

DNS Poisoning manipulates DNS records so users are redirected to malicious websites instead of legitimate ones.

---

## How it Works

Attackers inject false DNS records into a DNS cache.

Users attempting to visit legitimate websites are unknowingly redirected to fake websites controlled by attackers.

---

## Real-World Example

The 2008 Kaminsky DNS vulnerability demonstrated how attackers could poison DNS caches across the Internet.

---

## Impact

- Credential theft
- Malware distribution
- Financial fraud
- Website impersonation

---

## Mitigation Strategies

- DNSSEC
- Secure DNS resolvers
- Cache protection
- Software updates
- Network monitoring

---

# Threat Comparison

| Threat | Attack Vector | Primary Target | Difficulty | Ease of Mitigation |
|----------|--------------|---------------|------------|-------------------|
| DoS/DDoS | Massive network traffic | Servers | Medium | Medium |
| MITM | Network interception | Users | Medium | Medium |
| IP Spoofing | Forged packets | Networks | Medium | High |
| DNS Poisoning | DNS manipulation | DNS infrastructure | High | Medium |

---

# Conclusion

Modern organisations face a constantly evolving threat landscape. Attacks such as DDoS, MITM, IP Spoofing and DNS Poisoning can significantly disrupt operations and compromise sensitive information.

Three key takeaways for network administrators include:

1. Implement layered security controls rather than relying on a single defence.
2. Continuously monitor network activity to detect suspicious behaviour early.
3. Regularly update systems, security devices and employee awareness training to minimise organisational risk.

---

# References

- CISA (2024). Cybersecurity Best Practices.
- NIST Special Publication 800-61 Revision 2.
- SANS Institute Reading Room.
- MITRE ATT&CK Framework.
- OWASP Foundation.