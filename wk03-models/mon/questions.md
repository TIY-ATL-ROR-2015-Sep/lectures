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

`SELECT COUNT(*) FROM users;`

* What are the 5 most expensive items?

`SELECT * FROM items ORDER BY price DESC LIMIT 5;`

* What's the cheapest book? (Does that change for "category is exactly 'book'" versus "category contains 'book'"?)

NOTE: There is a Books category.

`SELECT * FROM items WHERE category='book' ORDER BY price LIMIT 1;`
`SELECT * FROM items WHERE category LIKE '%book%' ORDER BY price LIMIT 1;`

* Who lives at "6439 Zetta Hills, Willmouth, WY"? Do they have another address?

`SELECT * FROM addresses WHERE street='6439 Zetta Hills';`
`SELECT * FROM addresses WHERE user_id = 40;`

* Correct Virginie Mitchell's address to "New York, NY, 12345".

`SELECT * FROM users WHERE first_name = 'Virginie' AND last_name = 'Mitchell';`
`SELECT * FROM addresses WHERE user_id=39;`
`UPDATE addresses SET zip=12345 WHERE id=41;`

* How many total items did we sell?

`SELECT SUM(quantity) FROM orders;`

* Simulate buying an item by inserting a User for yourself and an Order for that User.

`INSERT INTO users (first_name, last_name, email) VALUES ('Brit', 'Butler', 'piss@off.com')`
`INSERT INTO orders (user_id, ...) VALUES (^that_id, ...)`

## Hard Mode - Joins, Summation, More Advanced Queries

* How much would it cost to buy one of each tool?

`SELECT SUM(price) FROM items WHERE category='Tools';`
`SELECT SUM(price) FROM items WHERE category LIKE "tools%";`
`SELECT SUM(price) FROM items WHERE category LIKE "%tool%";`

* What item was ordered most often? Grossed the most money?

`SELECT SUM(quantity), item_id FROM orders GROUP BY item_id ORDER BY SUM(quantity);`
`SELECT SUM(quantity) AS total, item_id FROM orders GROUP BY item_id ORDER BY total;`

Most money:

`SELECT SUM(orders.quantity * items.price) AS total, orders.item_id FROM orders
   ...> INNER JOIN items ON orders.item_id=items.id
   ...> GROUP BY orders.item_id ORDER BY total DESC LIMIT 1;`

* What user spent the most?

NOTE: Could've skipped the second inner join and just returned the user_id from orders.

`SELECT SUM(orders.quantity * items.price) AS total, users.first_name, users.last_name
   ...> FROM orders INNER JOIN items ON orders.item_id=items.id 
   ...>             INNER JOIN users ON orders.user_id=users.id
   ...> GROUP BY orders.user_id ORDER BY total DESC LIMIT 1;`

* What were the top 3 highest grossing categories?

`sqlite> SELECT SUM(orders.quantity * items.price) AS total, items.category FROM orders
   ...> INNER JOIN items ON orders.item_id=items.id
   ...> GROUP BY items.category ORDER BY total DESC LIMIT 3;`
