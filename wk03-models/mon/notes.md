# Good Morning

## First things first ...

### Take a deep breath ...

---

# About this weekend ...

* I know how it feels.

--

* Programming is so **tumultuous**.

--

* One moment everything is clicking...

--

* You're in sync with the machine, capable of *magic*!

--

.center[![magic](http://i.imgur.com/o0vd1Jg.gif)]

---

# And then ...

.center[![fish-slapped](https://media.giphy.com/media/C2x6phxndE61W/giphy.gif)]

--

* I know it can be discouraging. And exhausting. 

.center[![exhausted](http://i.imgur.com/zyk2jFL.gif)]

---

# Have Faith

* You're gonna find your way. Keep asking questions and taking care of yourself.

--

* Even if you're down in the dirt right now.

.center[![digging](http://i.imgur.com/3EgAGkP.jpg)]

---

# Preliminaries

1. Going to start with morning quizzes soon. Not for grades, just to get us awake, practice.

2. Calendly is open. I have 8 slots a week or so. https://calendly.com/brit/1-on-1

3. Progress reports are coming soon. Make sure you don't have any issues assigned to you 
   on the assignments repo without a comment posted!

---

# Recap

A few important things we learned last week:

### 1. Mechanics - Method Dispatch:

   > When a method is called on an object e.g. `thing.action(maybe_with_arguments)`,
   > the defining class of the object is searched for a method. If one is found, it is run.
   > Otherwise, the ancestors list e.g. `thing.class.ancestors` is checked until a method is
   > found. A NoMethodError is thrown if there is no matching method.

--

### 2. Mechanics - Inheritance:

   > A class can be made to subclass or "inherit" from another class like so:
   > `class RandomPlayer < Player`. The consequence of this is that all the methods
   > defined on Player become available on RandomPlayer. I believe this is often
   > taught as the key part of OO programming but should be carefully applied. It enables 
   > code reuse but does so in a brittle fashion.

---

### 3. Design - Encapsulation / Information Hiding:

   > Using `private` to make certain methods uncallable from outside a class is an excellent
   > way of keeping functionality that is likely-to-change from being accidentally relied on
   > or linked with other parts of the application. Similarly, it is often preferable to
   > *not* define reader and writer methods for the instance variables (e.g. `@example`)
   > of an object. If reasonable methods for interacting with the object are provided as part
   > of it's public interface, there is no need to expose the internals for modification.

--

### 4. Design - Duck Typing and Dependency Injection:

   > Duck Typing is the idea that you don't need objects of a particular class, just a
   > particular interface. "If it looks like a duck and quacks like a duck, it's a duck."
   > That is, for some program, any object that implements a `get_guess` method returning
   > a number is a suitable player. Dependency Injection is the idea that you can give one
   > object as an argument to another object at any time (but especially initialization).
   > This allows you to plug pieces easily and free the receiver from needing to know details.

---

### 5. Best Practices - Unit Testing:

   > Finally, we've seen that Unit Testing is a fantastic way to be confident that the code
   > we have written behaves as we expect, add structure to our development process, and make
   > it possible to change old or working code with confidence that we have not broken it.
   > Writing tests will be difficult initially but the dividends become more pronounced the
   > larger our software becomes and the longer it is in service.

---

## Big Picture Goals - Week 3

* Know why we use Modules as a namespacing tool
* Understand how bundler/gems let us use libraries so we're not coding from scratch
* Understand how to create and modify database schemas
* Understand how to perform basic CRUD querying with ActiveRecord or SQL
* Understand why joins are necessary and how associations help with joins

---

# Databases

* First, we'll be concering ourselves with *Relational Databases* (aka RDBMS).

--

* Sure, there's MongoDB and NoSQL. But I know of *zero* businesses built on the backs of them exclusively.

--

* Various relational databases out there: sqlite, postgresql, mysql, oracle, mssql

--

* We're going to use sqlite this week. Will switch to postgresql later on.

--

* Sqlite is already installed on your macbooks, hooray!

--

* But you'll want to grab the database I'm using for today's lecture.
  See: http://redlinernotes.com/docs/redlinernotes.sqlite3

---

# But why Database?

* (Remember: Historical context is important!)

--

* Came to prominence in the 80s. A couple of reasons ...

--

1. Companies needed multiple users to be able to see/update data
   *simultaneously* and *reliably*. (I.e. concurrency is hard)

--

2. Had a standardized interface in the form of a very simple and
   regular special purpose language called SQL (pronounced "sequel" usually).

--

3. Programming languages and hardware were in wild flux for a long time.
   Databases act as a long-term data storage technique. Any language that
   has a SQL library (that's basically all of them) can talk to the database.
   This was very comforting to software/IT managers at the time.

--

4. They have better speed and support for querying, etc, than files and custom formats.

---

# SQL Things!

* *Disclaimer:* May need to google syntax at various points.

--

* Tables and Columns

--

* Basic clauses: SELECT FROM, INSERT INTO, UPDATE SET, DELETE FROM

--

* Modifiers: WHERE (LIKE, <, >, etc), LIMIT, OFFSET

--

* Aggregation and Sorting: COUNT, ORDER BY, GROUP BY, SUM

--

* Annnnd the cuddly, wonderful Joins!

---

# HW

Tonight's homework involves performing a number of queries on a simple database.

To submit, link to a *gist* with your answers and the queries you used to find them.
