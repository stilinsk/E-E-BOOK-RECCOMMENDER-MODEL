# E-E-BOOK-RECCOMMENDER-MODEL

### Project Overview 
In the following project we will be implementing and end to end project where we willl be scrapping data from AMAZON WEBSITE specifically we will be scrapping books and after scrapping this data we will have to clean this data after cleaning this data   we will load this data to a database and 
query our data using SQL after querying our data we will get tables and after getting tables we will load thsese tables to TABLEAU  and visualize the data.After visualizing this data we will then preprocess the data and  create a book reccommender model  so the outline of our project is as follows:
1. scrapping the data using PYTHON FROM AMAZON WEBSITE

2. Cleaning our data

3. Perfoming an EDA

4.  Loading the data to SQL and querying to form tables

5.  Loading the queried tables to TABLEAU  and forming vizualizations

6.  Preprocessing the data and creating  a book reccommender model

    The process of scrapping the data from the amazon website i have done it clearly and explained bit by bit and even on ways to read the HTML tags and extracting the data to the process of forming a csv file , I have clearly outlined the steps in the below article.You can give it a like  and a clap

 [Link to the Web Scraping Article on Medium](https://medium.com/@kamandesimone/webscrapping-amazon-books-for-data-science-using-selenium-d8ef04d731d9)

 Thus in this Readme file we will be covering the DATA CLEANING AND EDA part ,The EDA may not be a s detailed since we will also have the SQL QUERIES  TABLEAU visualizations  to gain further insights

 ### Cleaning our data
  Here is basically what we have done to clean our data we have looked at the isnull values and we can see that the following columns have nuull values
  1. total reviews
  2. type
  3. price
     
We can also see that our datatypes are wrong and we have to convert the rating to an interger and price to an interger ,the rating we have to remove the string information to be left with  the float object

We will also fill the null values in the prices and total reviews column with the median (mostly  preffered since it does not introduce skewness to our data  w.

### EDA
We will be analyzing different columns and identifying trends and probably relationships between our columns when we plot outr correlation matrix

#### Rating distribution
![rating](https://github.com/stilinsk/E-E-BOOK-RECCOMMENDER-MODEL/assets/113185012/c8b82ca0-6f7f-4cf5-8f60-705c0c0c2337)


###### Also in the following distplot we will look at the distribution of the total reviews column and how my data is distributed and we can see that our data in this column is left skewed

#### Total Reviews Distribution

##### Most of the books have a review of oround 100 and very less books have reviews post 600


#### Price Distribution

![price](https://github.com/stilinsk/E-E-BOOK-RECCOMMENDER-MODEL/assets/113185012/4da3b993-a383-42b2-ba2c-445b5e08b721)

##### In the following column we will look at the distribution of the price and we can see that our data is not skewed into any direction athough most of our books range from 0-400 shillings

##### correlation matrix
![matrix](https://github.com/stilinsk/E-E-BOOK-RECCOMMENDER-MODEL/assets/113185012/ae73e45a-100f-464f-904c-e59e5792b732)


##### We can see that our total reviews is related to the price column and this is ideally always the case a books that has been reviewd by many people means has been read by many people thus its price will likely be higher , the other columns have no correlation and we can see that the rating of a book is not directly mean a higher price of a book

# SQL
