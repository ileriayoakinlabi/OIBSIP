# SQL Injection Notes

## Objective

To demonstrate SQL Injection against DVWA in a safe laboratory environment.

---

## Normal Query

Input:

```text
1
```

Output:

Returned only the administrator account.

---

## Payload 1

Input:

```sql
1' OR '1'='1
```

Purpose:

Manipulates the SQL WHERE clause by introducing an OR condition that always evaluates to TRUE.

Result:

Returned every user stored in the database.

---

## Payload 2

Input:

```sql
' OR '1'='1
```

Purpose:

Demonstrates that authentication or filtering logic can be bypassed without specifying a valid user ID.

Result:

Returned every user stored in the database.

---

## Security Risk

SQL Injection allows attackers to:

- Read sensitive information
- Modify records
- Delete records
- Bypass authentication
- Extract confidential data

---

## Mitigation Techniques

- Prepared Statements
- Parameterised Queries
- Input Validation
- Escaping Special Characters
- Least Privilege Principle
- Web Application Firewall (WAF)

---

## Conclusion

This exercise demonstrated how SQL Injection vulnerabilities occur when user input is trusted without proper validation.

The exercise also reinforced the importance of secure coding practices such as parameterised queries and input validation for protecting web applications.