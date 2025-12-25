# Exercise 2 – Libraries (Relational Database) 

## Objective
This exercise focuses on querying a relational database schema involving multiple connected tables. The goal is to master **JOIN** operations, understand **Primary/Foreign Key** relationships, and practice filtering data across a distributed schema.

---

## Part 1: Schema Inspection 
1. **Initial Review:** Inspect the database schema and the contents of the tables. Identify the purpose of the database and how the tables are connected.
2. **Table Identification:** For each table in the schema, identify:
    * The **Primary Key** (the unique identifier for each row).
    * The **Foreign Keys** (the attributes that link to other tables).

---

## Part 2: Basic Data Retrieval 
3. Display the complete contents of the `book` table.
4. Display only the `title`, `type`, and `price` attributes of the `book` table.
5. Display the `title` and `price` of books costing less than **10 euros**. *(Result: 17 tuples)*.
6. Display all information for Computer Science books (where `type` is **'CS'**). *(Result: 4 tuples)*.
7. Display the information for both Computer Science (**'CS'**) and Fiction (**'FIC'**) books using a single query. *(Result: 10 tuples)*.

---

## Part 3: Relational Joins and Analysis 
8. **Book & Publisher:** Display the `title` and `publisher_name` for each book.
    * *Task:* Compare the result of this query to one without a `WHERE` or `JOIN` clause. How do you explain the difference in the number of rows? *(Result: 29 tuples)*.
9. **Book & Format:** Display the `title`, `price`, and `format_description` for each book. *(Note: Description is found in the `format` table. Result: 29 tuples)*.
10. **Three-Table Join:** Display the `title` of the book and the **last name** of the author who wrote it.
    * *Analysis:* This query returns **33 tuples** even though there are only **29 books**. Why does this happen?
11. **Specific Author:** Repeat the previous query, but only for books written by **Kafka**. *(Result: 2 tuples)*.
12. **Multiple Authors:** Display books written by either **Kafka** or **Agatha Christie**. *(Result: 4 tuples)*.
13. **Store Inventory:** Find the `name` and `location` of bookstores where the book **'dBASE Programming'** is currently for sale. *(Result: 1 tuple)*.

---

## Part 4: Conclusion 
14. **Conduct questioning at will:** Explore the data further to find interesting patterns or relationships between authors and genres.
