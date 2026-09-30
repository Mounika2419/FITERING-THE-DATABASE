# College Database SQL Queries

## 📌 Description

This SQL program demonstrates basic **MySQL database and SQL operations** using a `college` table.

The program covers:

* Creating a database table
* Describing table structure
* Inserting records
* Selecting records
* Using `AND` and `OR`
* Using `NOT`
* Checking `NULL` values
* Using `BETWEEN`
* Using `LIKE` pattern matching

---

## 🛠️ SQL Program

```sql
SHOW DATABASES;

USE aids;

CREATE TABLE college(
    sid INT,
    sname VARCHAR(20),
    gpa DECIMAL(3,2),
    city VARCHAR(20)
);

DESC college;

INSERT INTO college VALUES(101,'ramu',9.2,'ong');
INSERT INTO college VALUES(102,'raju',9.2,'guntur');
INSERT INTO college VALUES(103,'ravi',8.4,'vijayawada');
INSERT INTO college VALUES(104,'meera',7.7,'kanigiri');
INSERT INTO college VALUES(106,'anil',8.7,'ongole');
INSERT INTO college VALUES(107,'rithu',7.5,'vijayawada');
INSERT INTO college VALUES(108,'harsha',7.8,'guntur');

SELECT * FROM college;

SELECT * FROM college
WHERE city='ongole' AND gpa>8;

SELECT * FROM college
WHERE city='ongole' OR gpa>8;

SELECT * FROM college
WHERE NOT city='ongole';

SELECT * FROM college
WHERE age IS NULL;

SELECT * FROM college
WHERE gpa BETWEEN 7.5 AND 9;

SELECT * FROM college
WHERE sname LIKE 'r%';

SELECT * FROM college
WHERE sname LIKE 'h%';

SELECT * FROM college
WHERE sname LIKE 's%';

SELECT * FROM college
WHERE sname LIKE 'a%';

INSERT INTO college VALUES(111,'siva',8.3,'kanigiri');
```

---

# 📚 Command Explanation

## 1. Show Databases

```sql
SHOW DATABASES;
```

Displays all databases available in the MySQL server.

> `show databes;` is incorrect. The correct command is `SHOW DATABASES;`.

---

## 2. Select Database

```sql
USE aids;
```

Selects the `aids` database for performing SQL operations.

---

## 3. Create College Table

```sql
CREATE TABLE college(
    sid INT,
    sname VARCHAR(20),
    gpa DECIMAL(3,2),
    city VARCHAR(20)
);
```

Creates a table named `college`.

| Column  | Data Type    | Purpose      |
| ------- | ------------ | ------------ |
| `sid`   | INT          | Student ID   |
| `sname` | VARCHAR(20)  | Student name |
| `gpa`   | DECIMAL(3,2) | Student GPA  |
| `city`  | VARCHAR(20)  | Student city |

`DECIMAL(3,2)` allows values such as `9.20`, `8.40`, and `7.50`.

---

## 4. Describe Table

```sql
DESC college;
```

Displays the structure of the `college` table, including column names, data types, and other properties.

---

## 5. Insert Records

Example:

```sql
INSERT INTO college
VALUES(101,'ramu',9.2,'ong');
```

Adds a new student record to the table.

The values represent:

```text
SID → 101
Name → ramu
GPA → 9.2
City → ong
```

Several student records are inserted using `INSERT INTO`.

---

## 6. Display All Records

```sql
SELECT * FROM college;
```

Displays all columns and all records from the `college` table.

---

# 🔍 SQL Operators

## 7. AND Operator

```sql
SELECT * FROM college
WHERE city='ongole' AND gpa>8;
```

Returns records where **both conditions are true**:

* City is `ongole`
* GPA is greater than `8`

### AND means:

> Condition 1 **AND** Condition 2 must be true.

---

## 8. OR Operator

```sql
SELECT * FROM college
WHERE city='ongole' OR gpa>8;
```

Returns records where **at least one condition is true**.

The student can:

* Be from `ongole`, **OR**
* Have GPA greater than `8`

---

## 9. NOT Operator

```sql
SELECT * FROM college
WHERE NOT city='ongole';
```

Returns students whose city is **not Ongole**.

`NOT` reverses the condition.

---

## 10. NULL Checking

Your query is:

```sql
SELECT * FROM college
WHERE age IS NULL;
```

### ⚠️ Error

The `college` table does **not contain an `age` column**.

The table contains only:

```text
sid
sname
gpa
city
```

Therefore, this query will produce an error such as:

```text
ERROR 1054: Unknown column 'age' in 'where clause'
```

If you want to check whether `gpa` is NULL, use:

```sql
SELECT * FROM college
WHERE gpa IS NULL;
```

`IS NULL` is used to find records where a column has no value.

---

## 11. BETWEEN Operator

```sql
SELECT * FROM college
WHERE gpa BETWEEN 7.5 AND 9;
```

Returns students whose GPA is between **7.5 and 9**, including both `7.5` and `9`.

### BETWEEN means:

```text
7.5 ≤ GPA ≤ 9
```

---

# 🔤 LIKE Operator

The `LIKE` operator is used for **pattern matching**.

## 12. Names Starting with `r`

```sql
SELECT * FROM college
WHERE sname LIKE 'r%';
```

Returns names that start with the letter **r**.

Examples:

```text
ramu
raju
ravi
rithu
```

`%` means any number of characters after `r`.

---

## 13. Names Starting with `h`

```sql
SELECT * FROM college
WHERE sname LIKE 'h%';
```

Returns names beginning with **h**.

Example:

```text
harsha
```

---

## 14. Names Starting with `s`

```sql
SELECT * FROM college
WHERE sname LIKE 's%';
```

Returns names beginning with **s**.

After inserting the `siva` record, this query will return:

```text
siva
```

---

## 15. Names Starting with `a`

```sql
SELECT * FROM college
WHERE sname LIKE 'a%';
```

Returns names beginning with **a**.

Example:

```text
anil
```

---

## 16. Insert Another Student

```sql
INSERT INTO college
VALUES(111,'siva',8.3,'kanigiri');
```

Adds another student named `siva` with:

| Field | Value    |
| ----- | -------- |
| SID   | 111      |
| Name  | siva     |
| GPA   | 8.3      |
| City  | kanigiri |

---

# 📖 Important Operators Used

| Operator  | Meaning                             | Example                   |
| --------- | ----------------------------------- | ------------------------- |
| `AND`     | Both conditions must be true        | `city='ongole' AND gpa>8` |
| `OR`      | At least one condition must be true | `city='ongole' OR gpa>8`  |
| `NOT`     | Reverses a condition                | `NOT city='ongole'`       |
| `IS NULL` | Checks for NULL values              | `gpa IS NULL`             |
| `BETWEEN` | Checks a range                      | `gpa BETWEEN 7.5 AND 9`   |
| `LIKE`    | Pattern matching                    | `sname LIKE 'r%'`         |
| `%`       | Any number of characters            | `'r%'`                    |

---

# 🎯 Objective

The objective of this program is to understand how SQL can be used to:

1. Create and describe a table.
2. Insert student records.
3. Retrieve records using `SELECT`.
4. Filter records using `WHERE`.
5. Combine conditions using `AND` and `OR`.
6. Exclude records using `NOT`.
7. Check NULL values.
8. Find values within a range using `BETWEEN`.
9. Search text patterns using `LIKE`.

---

# ✅ Conclusion

This program provides practical experience with basic **MySQL SQL queries and operators**. It demonstrates how student data can be stored, retrieved, filtered, and searched using different SQL conditions and pattern-matching techniques.
