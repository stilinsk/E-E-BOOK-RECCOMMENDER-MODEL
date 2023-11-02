
-- we wil be using  the database named books thats where we have loaded our 
use books;

select * from cleaned;


-- we will be looking at  the diffferent datatypes of our dataset and sinnce we cleaned the data set in python the data types are  good
describe  cleaned;

-- we willl be selecting the min and max values from our rating column
select min(rating) as min_rating, max(rating) as max_rating from cleaned;

-- we will be selecting the min and max values from our price column
select min(price) as min_price, max(price) as max_price from cleaned;

-- we will be selecting the min and max values from our total reviews column 
SELECT MIN(`total reviews`) AS min_reviews, MAX(`total reviews`) AS max_reviews FROM cleaned;

-- we will be looking at the distribution of the book type 
SELECT type, COUNT(*) as book_type
FROM cleaned
GROUP BY type
ORDER BY book_type DESC;

-- we will be looking at the distribution of type of books and wwe willl be grouping by the price
SELECT type, SUM(price) AS total_price
FROM cleaned
GROUP BY type
ORDER BY total_price DESC;


-- we will be looking at the distribution of the type of books and we will be grouping based on reviews we will be lookin which tpe og books had the most reviews
SELECT type, SUM(`total reviews`) AS reviews
FROM cleaned
GROUP BY type
ORDER BY reviews DESC;

-- we will be looking at the distribution of the type book column based on ratings we will look which type of book cover had the most ratings
SELECT type, SUM(rating) AS total_ratings
FROM cleaned
GROUP BY type
ORDER BY total_ratings DESC;


-- we will be looking at the distribution of the price columns since the lowest is 0 and the highest is 680  the second case statement we are ranking the,
  CASE
    WHEN price >= 0 AND price <= 100 THEN '0-100'
    WHEN price > 100 AND price <= 200 THEN '101-200'
    WHEN price > 200 AND price <= 300 THEN '201-300'
    WHEN price > 300 AND price <= 400 THEN '301-400'
    WHEN price > 400 AND price <= 500 THEN '401-500'
    WHEN price > 500 AND price <= 600 THEN '501-600'
    ELSE 'Over 600'
  END AS price_range,
  COUNT(*) AS count
FROM cleaned
GROUP BY price_range
ORDER BY
  CASE
    WHEN price_range = '0-100' THEN 1
    WHEN price_range = '101-200' THEN 2
    WHEN price_range = '201-300' THEN 3
    WHEN price_range = '301-400' THEN 4
    WHEN price_range = '401-500' THEN 5
    WHEN price_range = '501-600' THEN 6
    ELSE 7
  END;

-- in the following we will be loooking at the distribution of the total reviews from 0 to 540 as it is our highest value
SELECT
  CASE
    WHEN `total reviews` >= 0 AND `total reviews` <= 100 THEN '0-100'
    WHEN `total reviews` > 100 AND `total reviews` <= 200 THEN '101-200'
    WHEN `total reviews` > 200 AND `total reviews` <= 300 THEN '201-300'
    WHEN `total reviews` > 300 AND `total reviews` <= 400 THEN '301-400'
    WHEN `total reviews` > 400 AND `total reviews` <= 500 THEN '401-500'
    ELSE 'Over 500'
  END AS reviews_range,
  COUNT(*) AS count
FROM cleaned
GROUP BY reviews_range
ORDER BY
  CASE
    WHEN reviews_range = '0-100' THEN 1
    WHEN reviews_range = '101-200' THEN 2
    WHEN reviews_range = '201-300' THEN 3
    WHEN reviews_range = '301-400' THEN 4
    WHEN reviews_range = '401-500' THEN 5
    ELSE 6
  END;
