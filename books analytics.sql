CREATE DATABASE bookanalytics

USE bookanalytics;

-- 1. Count of Total Books
SELECT COUNT(*) AS Total_Books 
FROM books_data;

-- 2. Average Price of All Books
SELECT AVG(Price) AS Avg_Price 
FROM books_data;

-- 3. Minimum and Maximum Price of Books
SELECT MIN(Price) AS Min_Price, MAX(Price) AS Max_Price 
FROM books_data;

-- 4. Books by Category
SELECT Category, COUNT(*) AS Number_Of_Books
FROM books_data
GROUP BY Category;

-- 5. Stock Status Distribution
SELECT Stock_Status, COUNT(*) AS Number_Of_Books
FROM books_data
GROUP BY Stock_Status;

-- 6. Average Price by Category
SELECT Category, AVG(Price) AS Average_Price
FROM books_data
GROUP BY Category;

-- 7. Total Copies Left by Category
SELECT Category, SUM(Copies_Left) AS Total_Copies_Left
FROM books_data
GROUP BY Category;

-- 8. Books with Discount Offers
SELECT Book_Title, Price, Discount_Offer
FROM books_data
WHERE Discount_Offer IS NOT NULL;

-- 9. Top 10 Books by Ratings
SELECT Book_Title, Ratings
FROM books_data
ORDER BY Ratings DESC
LIMIT 10;

-- 10. Books Without Reviews
SELECT Book_Title
FROM books_data
WHERE Reviews IS NULL;

-- 11. Books by Author
SELECT Author, COUNT(*) AS Number_Of_Books
FROM books_data
GROUP BY Author
ORDER BY Number_Of_Books DESC;

-- 12. Average Ratings by Category
SELECT Category, AVG(Ratings) AS Avg_Ratings
FROM books_data
GROUP BY Category;

-- 13. Books with the Highest Discount
SELECT Book_Title, Discount_Offer
FROM books_data
WHERE Discount_Offer = (SELECT MAX(Discount_Offer) FROM books_data);

-- 14. Price Range of Books
SELECT CASE
           WHEN Price < 10 THEN '<$10'
           WHEN Price BETWEEN 10 AND 20 THEN '$10-$20'
           WHEN Price BETWEEN 21 AND 30 THEN '$21-$30'
           ELSE '>$30'
       END AS Price_Range, COUNT(*) AS Number_Of_Books
FROM books_data
GROUP BY Price_Range;

-- 15. Books Published in a Specific Year
SELECT Book_Title
FROM books_data
WHERE Publication = 2023;  

SELECT Book_Title
FROM books_data
WHERE Publication = 2020; 

-- 16. Average Book Length by Category
SELECT Category, AVG(Book_Length_pages) AS Avg_Book_Length
FROM books_data
GROUP BY Category;

-- 17. Books with Most Wished Users
SELECT 
    Book_Title, Wished_Users
FROM
    books_data
ORDER BY Wished_Users DESC
LIMIT 10;

-- 18. Books with Highest Number of Reviews
SELECT Book_Title, COUNT(Reviews) AS Number_Of_Reviews
FROM books_data
GROUP BY Book_Title
ORDER BY Number_Of_Reviews DESC
LIMIT 10;

-- 19. Average Ratings for Books with Discounts
SELECT AVG(Ratings) AS Avg_Ratings
FROM books_data
WHERE Discount_Offer IS NOT NULL;

-- 20. Books by Edition
SELECT Edition, COUNT(*) AS Number_Of_Books
FROM books_data
GROUP BY Edition;

-- 21. Revenue by Category
SELECT Category, SUM(Price * Copies_Left) AS Total_Revenue
FROM books_data
GROUP BY Category;

-- 22. Correlation Between Price and Ratings
SELECT CASE
           WHEN Price < 10 THEN '<$10'
           WHEN Price BETWEEN 10 AND 20 THEN '$10-$20'
           WHEN Price BETWEEN 21 AND 30 THEN '$21-$30'
           ELSE '>$30'
       END AS Price_Range, AVG(Ratings) AS Avg_Ratings
FROM books_data
GROUP BY Price_Range;

-- 23. Books by Length and Price Range
SELECT CASE
           WHEN Book_Length_pages < 100 THEN '<100 pages'
           WHEN Book_Length_pages BETWEEN 100 AND 200 THEN '100-200 pages'
           ELSE '>200 pages'
       END AS Length_Range, AVG(Price) AS Avg_Price
FROM books_data
GROUP BY Length_Range;

-- 24. Impact of Wished Users on Sales
SELECT Wished_Users, SUM(Price * Copies_Left) AS Total_Sales
FROM books_data
GROUP BY Wished_Users
ORDER BY Total_Sales DESC;

-- 25. Books with the Highest Price and Lowest Copies Left
SELECT Book_Title, Price, Copies_Left
FROM books_data
ORDER BY Price DESC, Copies_Left ASC
LIMIT 10;

-- 26. Average Discount Offer by Category
SELECT Category, AVG(Discount_Offer) AS Avg_Discount
FROM books_data
WHERE Discount_Offer IS NOT NULL
GROUP BY Category;

-- 27. Trend of Book Publication Over Years
SELECT Publication, COUNT(*) AS Number_Of_Books
FROM books_data
GROUP BY Publication
ORDER BY Publication;

-- 28. Books with Above Average Ratings
SELECT Book_Title, Ratings
FROM books_data
WHERE Ratings > (SELECT AVG(Ratings) FROM books_data);

-- 29. Books with Lowest and Highest Stock
SELECT Book_Title, Copies_Left
FROM books_data
ORDER BY Copies_Left ASC
LIMIT 10;  -- Lowest stock

SELECT Book_Title, Copies_Left
FROM books_data
ORDER BY Copies_Left DESC
LIMIT 10;  -- Highest stock

-- 30. Distribution of Ratings by Stock Status
SELECT Stock_Status, AVG(Ratings) AS Avg_Ratings
FROM books_data
GROUP BY Stock_Status;

-- 31. Books with Multiple Editions
SELECT Book_Title, COUNT(DISTINCT Edition) AS Number_Of_Editions
FROM books_data
GROUP BY Book_Title
HAVING Number_Of_Editions > 1;

-- 32. Books with Highest Average Ratings by Category
SELECT Category, AVG(Ratings) AS Avg_Ratings
FROM books_data
GROUP BY Category
ORDER BY Avg_Ratings DESC;

-- 33. Stock Status and Revenue Analysis
SELECT Stock_Status, SUM(Price * Copies_Left) AS Total_Revenue
FROM books_data
GROUP BY Stock_Status;

-- 34. Revenue Impact of Discounts
SELECT Discount_Offer, SUM(Price * Copies_Left) AS Total_Revenue
FROM books_data
GROUP BY Discount_Offer;


