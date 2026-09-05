# Project Notes

## Project Background

This project was developed as an academic Database Management Systems (DBMS) project at Abasyn University.

The surviving project report documents a library management database implemented using Oracle SQL and PL/SQL.

The original implementation files are no longer available. This repository therefore contains a reconstruction of the database logic documented in the surviving project report.

## System Overview

The Automated Library Management System was designed to manage:

- Books
- Authors
- Categories
- Members
- Borrowing and returns
- Reservations
- Fines

The documented database design contains 8 related tables and was normalized to Third Normal Form (3NF).

## Database Tables

1. `AUTHORS` — stores author information
2. `CATEGORIES` — stores book categories
3. `BOOKS` — stores book information and availability
4. `MEMBERS` — stores member information
5. `BOOK_AUTHORS` — manages the book/author relationship
6. `ISSUEDBOOKS` — stores borrowing and return records
7. `FINES` — stores fine information
8. `RESERVATIONS` — stores reservation records

## Database Features

The surviving documentation records the following database features:

- Primary-key and foreign-key constraints
- 3NF normalization
- SQL queries
- Joins
- Grouping and aggregation
- Nested queries
- Database views
- PL/SQL trigger
- PL/SQL stored procedure
- Database indexes
- Constraint and behavior validation

## Trigger

The documented `fine_trigger` is executed after `actual_return_date` is updated in `ISSUEDBOOKS`.

When a book is returned after its due date, the trigger calculates the fine using the documented rate of 50 per delayed day and inserts the fine record into `FINES`.

## Stored Procedure

The documented `issue_book` procedure:

1. Checks whether the requested book is available.
2. Creates an issue record when the book is available.
3. Sets the issue date to the current date.
4. Sets the due date to 7 days after the issue date.
5. Updates the book availability status to `No`.
6. Displays a success or unavailable message.

## Database Views

The project report documents three views:

### `Available_Books`

Displays books whose availability status is `Yes`.

### `Fine_Report`

Displays fine information together with the associated member.

### `Borrow_History`

Displays member names, book titles, issue dates, due dates, and actual return dates.

## Indexes

The documented indexes are:

- `idx_book_title` on `BOOKS(title)`
- `idx_member_name` on `MEMBERS(member_name)`
- `idx_issue_date` on `ISSUEDBOOKS(issue_date)`

## Validation

The project documentation records validation related to:

- Duplicate ISBN constraints
- Foreign-key integrity
- Fine calculation
- Book availability
- Trigger behavior

The SQL files in this repository reproduce only the validation examples that could be reconstructed from the surviving documentation.

## Reconstruction Note

The SQL files in this repository are reconstructed from the surviving academic project documentation.

They should not be interpreted as the original source files or as a complete executable copy of the original project.

Where the surviving documentation does not provide enough information to reproduce an implementation detail, it has intentionally not been invented.

## Academic Context

**Project:** Automated Library Management System  
**Course:** Database Management Systems  
**University:** Abasyn University  
**Team Members:** Abdullah Khan, Waqas Jan
