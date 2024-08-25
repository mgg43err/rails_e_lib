
# Electronic library

## Description:
This project emulates a classic library with books. The database contains two tables: one for users and one for books. Each book can be taken by one user.

## User Capabilities:
- Take a book
- Return a book

## The Book table contains an array of books with the following attributes:
  - Name of the book
  - ID
  - Author
  - Text
  - Boolean flag isTaken.

### If isTaken is true, other users cannot take the book until the user who took the book returns it. Each user can take up to two books.

## Stack
- Language: Ruby
- Database: PostgreSQL
- Framework: Ruby on Rails