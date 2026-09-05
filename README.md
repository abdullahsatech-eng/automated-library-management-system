# Automated Library Management System

A database-driven Library Management System developed as a Database Management Systems (DBMS) project using Oracle SQL and PL/SQL.

The system is designed to manage books, authors, members, book issuing and returns, reservations, and fines while demonstrating core relational database concepts and database automation.

## Project Overview

The system centralizes common library operations and maintains structured records for books, members, borrowing activity, reservations, and fines.

The project demonstrates:

- Relational database design
- Primary and foreign key constraints
- Third Normal Form (3NF) normalization
- SQL queries and reporting
- PL/SQL triggers
- Stored procedures
- Database views
- Indexing
- Data validation and testing

## System Features

- Book record management
- Author and category management
- Member record management
- Book issuing and return tracking
- Book reservation management
- Automatic fine generation for overdue returns
- Book availability validation
- Fine reporting
- Borrowing history
- Search and reporting queries

## Database Design

The database contains 8 related tables:

| Table | Purpose |
|---|---|
| `AUTHORS` | Stores author information |
| `CATEGORIES` | Stores book categories |
| `BOOKS` | Stores book details |
| `MEMBERS` | Stores member information |
| `BOOK_AUTHORS` | Handles the many-to-many relationship between books and authors |
| `ISSUEDBOOKS` | Stores issued book records |
| `FINES` | Stores fine information |
| `RESERVATIONS` | Stores reservation records |

The database was normalized to **Third Normal Form (3NF)** to reduce redundancy and improve data integrity.

## SQL Implementation

The project includes SQL operations for:

- Data definition
- Sample data insertion
- Book availability searching
- Borrowed-book reporting
- Aggregate calculations
- Member grouping
- Nested queries
- Relational joins
- Reporting and data retrieval

### Example Query

```sql
SELECT title, publisher
FROM BOOKS
WHERE availability_status = 'Yes';
