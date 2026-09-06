# Automated Library Management System

A documented reconstruction of an academic **Database Management Systems (DBMS)** project developed using **Oracle SQL and PL/SQL**.

> **Important note:** The original source files were stored on a previous laptop and are no longer available. This repository reconstructs only the database logic explicitly recorded in the surviving project report. These files are **not presented as the original source code**.

---

## Overview

The system was designed to manage:

- Books
- Authors
- Categories
- Members
- Borrowing and returns
- Reservations
- Fines

The documented database contains **8 related tables** and was normalized to **Third Normal Form (3NF)**.

---

## Technologies

- Oracle SQL
- PL/SQL
- Relational Database Design
- 3NF Normalization
- Database Triggers
- Stored Procedures
- Views
- Indexing

---

## Documented Components

- Relational database design
- Primary and foreign-key constraints
- 3NF normalization
- SQL queries and reporting
- PL/SQL trigger for overdue fines
- Stored procedure for book issuing
- Database views
- Indexing
- Validation and testing

---

## Database Tables

| Table | Purpose |
|---|---|
| `AUTHORS` | Author information |
| `CATEGORIES` | Book categories |
| `BOOKS` | Book details |
| `MEMBERS` | Member information |
| `BOOK_AUTHORS` | Book/author many-to-many relationship |
| `ISSUEDBOOKS` | Issued book records |
| `FINES` | Fine information |
| `RESERVATIONS` | Reservation records |

---

## Repository Structure

```text
sql/
├── 01_queries.sql
├── 02_trigger.sql
├── 03_procedure.sql
├── 04_views.sql
├── 05_indexes.sql
└── 06_tests.sql

docs/
└── project-notes.md

README.md
