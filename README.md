# 🏫 School Database Project (SQL 101 & SQL 102)

## 📌 Project Overview
This comprehensive project was created as part of the SQL 101 and SQL 102 courses on the **Satr Platform**. 
The goal of the project is to build, manage, filter, and update a centralized database for **Excellence Secondary School (`altamayyuz`)** to store and manage information about students, teachers, and courses.

---

## 🏛️ Database Structure
The database contains core tables and newly created analytical sub-tables:
* **Students (`Students_2006`)** — Stores student information such as ID, name, birth date, gender, enrollment date, email, academic level, track, and GPA.
* **Teachers** — Stores teacher information such as ID, name, birth date, gender, email, and office number.
* **Courses (Materials)** — Stores course information such as course ID and course name.
* **`high_achievers`** — Filtered sub-table containing top-performing students with a GPA greater than 90 (SQL 102).
* **`students_failed`** — Filtered sub-table containing students needing academic support with a GPA less than 60 (SQL 102).

---

## 🛠️ SQL Concepts & Operations Applied

Throughout this project (SQL 101 & SQL 102), I practiced and applied the following SQL concepts:

### Part 1: SQL 101 (Fundamentals)
* Creating databases (`CREATE DATABASE`) and tables (`CREATE TABLE`).
* Working with different data types and inserting data (`INSERT INTO`).
* Retrieving data using `SELECT`, sorting with `ORDER BY`, and using column aliases (`AS`).
* Basic table management, updating existing records, and adding comments to SQL commands.

### Part 2: SQL 102 (Advanced & Data Manipulation)
* **Advanced Filtering & Pattern Matching:** Using `LIKE` for string patterns (e.g., names starting with 'A' or matching 4 characters), `BETWEEN`, and `DISTINCT` for unique tracks.
* **Analytical & Aggregate Functions:** Applying `AVG`, `MAX`, `MIN`, and `COUNT` with clear column aliases, alongside numeric functions like `FLOOR` for averages.
* **Table Schema Modifications:** Using `ALTER TABLE` to modify column definitions (`VARCHAR`) and managing check constraints.
* **String & Conditional Updates:** Utilizing string functions (`UPPER`, `REPLACE`) to transform gender records (`M` to `Male`, `F` to `Female`) and executing conditional updates safely.
* **Automated Sub-tables:** Creating dynamic tables (`CREATE TABLE AS SELECT`) to categorize high achievers and students requiring support.

---

## 📊 Project Requirements & Deliverables
The project includes:
* A centralized school database with 30+ student records, 10+ teacher records, and 6+ course records.
* Automated creation of analytical sub-tables for top achievers and failing students.
* Complex queries targeting specific academic levels, age groups, and character lengths.
* Data updates including gender format conversions and GPA bonus adjustments.

---

## 💻 Technologies Used
* MySQL
* MySQL Workbench
* SQL

---

## 🎯 Learning Outcome
This project helped me understand and apply fundamental to advanced concepts of SQL in a practical scenario. It represents a valuable step in my continuous learning journey toward Data Analysis, Data Engineering, and Data & AI.

---

## 📁 Project Files
```text
SQL-School-Database-Project-Parts-1-and-2/
│
├── README.md
├── altamayyuz_101_database.sql
└── altamayyuz_102_database.sql
