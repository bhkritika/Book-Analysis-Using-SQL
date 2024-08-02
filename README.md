# Book Analysis Using SQL

## Overview

This project involves a comprehensive analysis of book data using SQL. The database `bookanalytics` provides insights into various aspects of book pricing, stock status, ratings, and more. The goal is to offer a detailed understanding of book sales and inventory management.

## Database Schema

The `books_data` table includes the following columns:

- **Book_Title**: Title of the book
- **Author**: Author of the book
- **Category**: Genre or category of the book
- **Price**: Price of the book
- **Stock_Status**: Availability status (e.g., In Stock, Out of Stock)
- **Copies_Left**: Number of copies left in stock
- **Book_Length_pages**: Length of the book in pages
- **Edition**: Edition of the book
- **Publication**: Publication year of the book
- **Wished_Users**: Number of users who have wished for the book
- **Discount_Offer**: Discount offer on the book
- **Ratings**: Rating of the book (out of 5)
- **Reviews**: Reviews or comments about the book

## Analysis

### Basic Analysis
1. **Total Number of Books**
2. **Average Price of All Books**
3. **Minimum and Maximum Price of Books**

### Intermediate Analysis
4. **Books by Category**
5. **Stock Status Distribution**
6. **Average Price by Category**
7. **Total Copies Left by Category**
8. **Books with Discount Offers**
9. **Top 10 Books by Ratings**
10. **Books Without Reviews**
11. **Books by Author**
12. **Average Ratings by Category**
13. **Books with the Highest Discount**
14. **Price Range of Books**
15. **Books Published in a Specific Year**

### Advanced Analysis
16. **Average Book Length by Category**
17. **Books with Most Wished Users**
18. **Books with Highest Number of Reviews**
19. **Average Ratings for Books with Discounts**
20. **Books by Edition**
21. **Revenue by Category**
22. **Correlation Between Price and Ratings**
23. **Books by Length and Price Range**
24. **Impact of Wished Users on Sales**
25. **Books with the Highest Price and Lowest Copies Left**
26. **Average Discount Offer by Category**
27. **Trend of Book Publication Over Years**
28. **Books with Above Average Ratings**
29. **Books with Lowest and Highest Stock**
30. **Distribution of Ratings by Stock Status**
31. **Books with Multiple Editions**
32. **Books with Highest Average Ratings by Category**
33. **Stock Status and Revenue Analysis**
34. **Revenue Impact of Discounts**

## Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/your-username/book-analytics.git

2. **Navigate to the Project Directory**
   ```bash
   cd book-analytics

3. **Set Up the Database**
Ensure you have a SQL environment (e.g., MySQL, PostgreSQL) and execute the SQL script provided in `book_analytics.sql` to create and populate the database.