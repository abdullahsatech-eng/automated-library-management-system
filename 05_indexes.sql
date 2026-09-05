-- Reconstructed from the surviving academic project documentation.

CREATE INDEX idx_book_title
ON BOOKS(title);

CREATE INDEX idx_member_name
ON MEMBERS(member_name);

CREATE INDEX idx_issue_date
ON ISSUEDBOOKS(issue_date);
