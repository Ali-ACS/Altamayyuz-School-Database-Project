# 🏫 School Database Project (SQL 101, 102 & 103)

## 📌 Project Overview
This comprehensive project was created as part of the SQL courses on the **Satr Platform** and advanced database design. 
The goal of the project is to build, manage, filter, update, and establish advanced relational structures for a centralized database for **Excellence Secondary School (`altamayyuz`)** to store and manage information about students, teachers, and courses.

---

## 🏛️ Database Structure
The database contains core tables, analytical sub-tables, and relational junction tables:
* **Students (`Students_2006`)** — Stores student information such as ID, name, birth date, gender, enrollment date, email, academic level, track, and GPA.
* **Teachers** — Stores teacher information such as ID, name, birth date, gender, email, and office number.
* **Courses (Materials)** — Stores course information such as course ID and course name.
* **`high_achievers`** — Filtered sub-table containing top-performing students with a GPA greater than 90 (SQL 102).
* **`students_failed`** — Filtered sub-table containing students needing academic support with a GPA less than 60 (SQL 102).
* **Junction Tables (`teacher_student_relation`, `student_material_relation`)** — Advanced relational tables mapping Many-to-Many connections between teachers, students, and courses (SQL 103).

---

## 🛠️ SQL Concepts & Operations Applied

Throughout this project, I practiced and applied the following SQL concepts across all three parts:

### Part 1: SQL 101 (Fundamentals)
* Creating databases (`CREATE DATABASE`) and tables (`CREATE TABLE`).
* Working with different data types and inserting data (`INSERT INTO`).
* Retrieving data using `SELECT`, sorting with `ORDER BY`, and using column aliases (`AS`).
* Basic table management, updating existing records, and adding comments to SQL commands.

### Part 2: SQL 102 (Advanced & Data Manipulation)
* **Advanced Filtering & Pattern Matching:** Using `LIKE` for string patterns, `BETWEEN`, and `DISTINCT` for unique tracks.
* **Analytical & Aggregate Functions:** Applying `AVG`, `MAX`, `MIN`, and `COUNT` with clear column aliases, alongside numeric functions like `FLOOR` for averages.
* **Table Schema Modifications:** Using `ALTER TABLE` to modify column definitions and managing check constraints.
* **String & Conditional Updates:** Utilizing string functions (`UPPER`, `REPLACE`) to transform gender records and executing conditional updates safely.
* **Automated Sub-tables:** Creating dynamic tables (`CREATE TABLE AS SELECT`) to categorize high achievers and students requiring support.

### Part 3: SQL 103 (Advanced Relational Design & Programmability)
* **Junction Tables & Foreign Keys:** Designing Many-to-Many relationships and enforcing referential integrity with composite primary keys and foreign key constraints.
* **Stored Procedures:** Writing robust procedures like `student_info` to automate multi-table `JOIN` queries for dynamic data retrieval.
* **Views:** Creating virtual tables (`teacher_info`) to streamline data reporting and secure underlying schemas.
* **Indexing:** Implementing and testing `INDEX` performance optimization strategies on student name records.

---

## 📊 Project Requirements & Deliverables
The project includes:
* A centralized school database with complete records for students, teachers, and courses.
* Automated creation of analytical sub-tables for top achievers and failing students.
* Complex queries targeting specific academic levels, age groups, and relational mappings.
* Stored procedures and views for advanced database programmability.

---

## 💻 Technologies Used
* MySQL
* MySQL Workbench
* SQL

---

## 🎯 Learning Outcome
This project helped me understand and apply fundamental to advanced concepts of SQL in a practical scenario, progressing all the way to complex relational schema design and programmability. It represents a valuable step in my continuous learning journey toward Data Analysis, Data Engineering, and Data & AI.

---

## 📁 Project Files
```text
SQL-School-Database-Project-Complete/
│
├── README.md
├── altamayyuz_101_database.sql
├── altamayyuz_102_database.sql
└── altamayyuz_103_database.sql
