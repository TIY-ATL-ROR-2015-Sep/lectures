## Morning Everybody _(Still with me?)_

![morning](http://i.imgur.com/LBm5fQw.jpg)

---

# Homework Review

Would anyone like to present their completed Hangman?

---

# Today's Goals

* Gain an appreciation for why we choose data structures/collections
* Understand how to perform File I/O
* Understand some basic ideas about performance

---

## Collections, Part 1: Arrays

* Arrays are our first collection data type. They allow us to group multiple pieces of data together.

* Definition: `[]` or `Array.new`
* Use: `x[4]` and `x[4] = 'cookies'`

---

## Arrays in Action

* Function to select day of the week: `name_of_day(n)`

* Array obviously better than conditionals or a loop, why?

---

## Collections, Part 2: Hash Tables

* Sometimes called Dictionaries or Maps in other languages

--

* The whole point is to let you look things up by name.
  This is in contrast to arrays where you only get things by
  1. Iterating over the whole array.
  2. Accessing a specific element by its *index* (aka position).

--

* Often the choice of whether an Array or Hash is more appropriate
  comes down to how you'd usually prefer to store and retrieve the data.

---

# Hash Tables, cont.

* An example:
  `{ brit: 'likes dogs',
     tim: 'likes whiskey',
     jd: 'likes bumper pool',
     jo: 'likes ping pong' }`

--

* We say that the names on the left are **Keys** and the things on the right are **Values**.

--

* When a Key and Value are grouped together, we call that a Key-Value Pair.
  They pop up all over. In Ruby, key value pairs are commonly written one of two ways:
  1. `foo: 'bar'` (caveat: you cannot use non-symbol keys when writing this way)
  2. `:foo => 'bar'` or `'foo' => 'bar'`

--

* Takeaway: We choose data structures based on the patterns of how we'd like to use and modify our data.

---

## Cosmicomics!

* Another one of my first interesting programs.

--

* Was reading a book on [Haskell][haskell] back in '09 which mentioned Italo Calvino's book "Cosmicomics".
* What an amusing word! It's two anagrams (cosmic and comics) smushed together!

--

* Decided to write a program in Haskell to try and compute all such words from a dictionary.

--

* Let's look at the Haskell code for a second and then try to write a similar program with Ruby!

[haskell]: https://www.haskell.org/

---

### Foundational lessons of performance

We will not dig deeply into [Algorithm Analysis][algo] or Complexity in this course.
That said, it is worth knowing it is a deep field of study
and having at least a surface understanding of its implications.

--

1. We determine the speed of an algorithm by determining how quickly the amount of work *grows* based on the size of the data. There is a formal system for describing these growth rates that we won't cover known as [Big-O notation][big-o].

2. Humans have terrible intuition for the performance of software. **Never** guess which part is slow and start tweaking. Measure with a profiler or other tools for doing statistical performance evaluation.

3. "Premature optimization is the root of all evil." - Donald Knuth
   > I.e. Correctness and maintainability absolutely come first.

--

* Takeaway: Our data structures have a *large* impact on how convenient **and** performant it is to manipulate our data.

--

* Remember: Computers can perform billions of operations a second!

[algo]: https://en.wikipedia.org/wiki/Analysis_of_algorithms 
[big-o]: https://en.wikipedia.org/wiki/Big_O_notation

---

# File I/O

Just minor notes here.

* Important that the path is either relative to where the program is being run from or an absolute.
* Important that we remember to close open file handles. Most easily achieved by using blocks i.e. ...
  `File.open("foo.bar", 'r') do |f| blah blah blah with f end`
* Our langauges don't intrinsically understand how to deal with files other than "plain text". I.e. Need special tools to manipulate CSVs, MP3s, PDFs, etc.

---

# Homework



[homework]: https://github.com/TIY-ATL-ROR-2015-Sep/lectures/blob/master/wk01-ruby/wed/questions.md
