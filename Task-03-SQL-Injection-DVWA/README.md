# Task 3 – SQL Injection Testing using DVWA

## Objective

The objective of this task was to understand how SQL Injection vulnerabilities occur, configure DVWA (Damn Vulnerable Web Application), perform SQL Injection attacks in a controlled laboratory environment, and document the findings.

---

## Tools Used

- Kali Linux
- Apache2
- MariaDB
- PHP
- DVWA
- Mozilla Firefox

---

## Environment

- Operating System: Kali Linux
- Web Server: Apache2
- Database: MariaDB
- Application: DVWA
- Security Level: Low

---

## Procedure

1. Verified DVWA installation.
2. Started Apache and MariaDB services.
3. Configured the DVWA database.
4. Logged into DVWA.
5. Set the DVWA security level to Low.
6. Tested a normal SQL query.
7. Executed SQL Injection payloads.
8. Documented the results.

---

## SQL Injection Payloads Tested

### Normal Query

```
1
```

Result:

Returned only the record belonging to User ID 1.

---

### Payload 1

```
1' OR '1'='1
```

Result:

Returned every user record stored in the database.

---

### Payload 2

```
' OR '1'='1
```

Result:

Returned every user record stored in the database.

---

## Why the SQL Injection Worked

DVWA intentionally concatenates user input directly into SQL queries when running in the Low security configuration.

Because the input was not validated or parameterised, the injected condition

```
'1'='1'
```

always evaluated to TRUE, causing the database to return every matching record.

---

## Mitigation

SQL Injection vulnerabilities can be prevented by:

- Prepared Statements
- Parameterised Queries
- Input Validation
- Least Privilege Database Accounts
- Stored Procedures
- Web Application Firewalls

---

## Screenshots

The screenshots folder contains evidence of:

- DVWA installation
- Services running
- Database setup
- Login page
- SQL Injection page
- Normal query
- Payload 1 result
- Payload 2 result

---

## Learning Outcomes

This task improved my understanding of:

- SQL Injection
- Web application security
- Database interaction
- Secure coding practices
- Defensive mitigation techniques