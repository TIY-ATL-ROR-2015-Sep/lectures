# databasics

## Objectives

### Learning Objectives

After completing this assignment, you should understand:

* How to connect directly to an SQL database and run queries to manipulate data

### Performance Objectives

After completing this assignment, you be able to effectively use

* `select` and `where` to find data
* `limit` and `offset` to limit results
* `insert` and `update` to modify data
* `sum` and aggregation methods

## Details

Copy the included SQLite3 database. Connect to it using `sqlite3 <filename>` and explore the following. (Note: you may want to make a backup copy before running queries that change the database.)

### Deliverables

A gist containing answers to the following questions and the command(s) you used to find them.

## Normal Mode - No Joins Required!

* How many users are there?
* What are the 5 most expensive items?
* What's the cheapest book? (Does that change for "category is exactly 'book'" versus "category contains 'book'"?)
* Who lives at "6439 Zetta Hills, Willmouth, WY"? Do they have another address?
* Correct Virginie Mitchell's address to "New York, NY, 10108".
* How many total items did we sell?
* Simulate buying an item by inserting a User for yourself and an Order for that User.

## Hard Mode - Joins, Summation, More Advanced Queries

* How much would it cost to buy one of each tool?
* What item was ordered most often? Grossed the most money?
* What user spent the most?
* What were the top 3 highest grossing categories?
* How much was spent on books?
