For tonight's assignment, you'll update the **hangr** project from class.

## Setup

This will differ from past assignments in that rather than adding more
code to your labs repo, you'll "fork" the *hangr* code from the course
organization page, and then "clone" your fork at the command line
to get a local copy of the repo to edit.

You'll also need to run `rake db:migrate` in your clone to setup the database.

## Usage

To "run" the game, just run `bundle exec ruby lib/hangr.rb`.
But, well, we haven't written it yet. So don't do that til tomorrow. :)

To access the database, just run `sqlite3 db/hangr.db`.
Remember that you can check the schema with `.schema` and that
`SELECT * FROM schema_migrations ORDER BY version DESC LIMIT 1;`
will get you the latest database version. :)

## Normal Mode

3 items tonight:

1. Add a migration for a games table and run/test it.
   Then add a simple model for the Game as done with Player.
2. Read selected portions of the [ActiveRecord Migration Guide][amg]
   and the [ActiveRecord Querying Guide][aqg]. See below.

### Migrations

Write a migration to add a games table, thinking carefully about what
columns we might need for the games table.

We should probably store at a minimum:
* The player whose game it is.
* Whether or not the game is over/finished.
* The number of guesses taken.
* The answer.

### Reading

These guides will be handy not only for the rest of class, but in
your professional career using Rails. Remember to keep them handy/bookmarked!

* The migrations guide is great but note there will be some minor differences
  in how migrations are written as we can't use `rails g` yet.

  Read Chapters 1, 5, and 8 of the guide.

* The querying guide will give you an excellent introduction to how to use
  ActiveRecord to work with the database. Feel free to try out various
  examples using the Player and Games model we've built.

  Read Chapters 1-6.

[amg]: http://edgeguides.rubyonrails.org/active_record_migrations.html
[aqg]: http://guides.rubyonrails.org/active_record_querying.html

## SQL References

**NOTE**: These aren't references about tonight's homework but rather
useful points of reference for later in the course or for brushing up
on the material around how Databases, SQL, and Joins work. Your primary
references for how ActiveRecord or migrations work should be the above
Rails Guides.

[A Visual Explanation of SQL Joins](http://blog.codinghorror.com/a-visual-explanation-of-sql-joins/)
[What is a SQL Join?](http://www.sql-join.com/)

And finally, a very excellent blog series though it goes into far more detail
than we will in this course. Note that in the 80s you could get a PhD in
Databases and that there is a fair amount of academic theory behind how this
stuff works. In particular, I would wager the "Introduction", "Basic SQL", and
"More SQL" sections are pretty useful. If you want better mathematical
intuitions around SQL, maybe read the "Relational Model" and "Relational Algebra" posts.

[A Tiny Intro to Database Systems](http://blog.dancrisan.com/a-tiny-intro-to-database-systems)

