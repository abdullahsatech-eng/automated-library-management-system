-- Reconstructed from the surviving academic project documentation.
-- Indexes created for commonly searched and queried columns.


-- 1. Index for book title searches
CREATE INDEX idx_book_title
ON BOOKS(title);


-- 2. Index for member name searches
CREATE INDEX idx_member_name
ON MEMBERS(member_name);


-- 3. Index for issue date queries
CREATE INDEX idx_issue_date
ON ISSUEDBOOKS(issue_date);
