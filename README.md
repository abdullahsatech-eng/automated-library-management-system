# Automated Library Management System

A documented reconstruction of an academic Database Management Systems (DBMS) project developed using Oracle SQL and PL/SQL.

## Important note

The original source files were stored on a previous laptop and are no longer available. This repository preserves and reconstructs only the database logic explicitly recorded in the surviving project report. These files are **not** presented as the original source code.

## Overview

The system was designed to manage books, authors, categories, members, borrowing/returns, reservations, and fines.

The documented database contains 8 related tables and was normalized to Third Normal Form (3NF).

## Documented components

- Relational database design
- Primary and foreign-key constraints
- 3NF normalization
- SQL queries and reporting
- PL/SQL trigger for overdue fines
- Stored procedure for book issuing
- Database views
- Indexing
- Validation and testing

## Tables

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

## Repository structure

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
```

## SQL and PL/SQL

The reconstructed SQL includes availability, borrowing, aggregation, grouping, joins, and nested-query examples. The documented PL/SQL includes the `fine_trigger` trigger and `issue_book` procedure.

## Database views

- `Available_Books`
- `Fine_Report`
- `Borrow_History`

## Indexes

- `BOOKS(title)`
- `MEMBERS(member_name)`
- `ISSUEDBOOKS(issue_date)`

## Validation

The original documentation records tests for duplicate ISBN validation, foreign-key integrity, fine calculation, book availability, and trigger behavior.

## Team

**Abdullah Khan**  
**Waqas Jan**

Database Management Systems Project — Abasyn University

## Next step

Reconstruct the complete database schema from the documented design, add reproducible test data, and gradually extend the project into a practical application.
