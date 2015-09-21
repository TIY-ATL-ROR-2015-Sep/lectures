# Welcome to the Iron Yard!

---

# Introductions

### Hey, ya'll!

### We're gonna spend plenty of time staring at code.

.center[![staring](http://gifstumblr.com/images/hacker_601.gif)]

### Let's get to know each other a bit first.

---

## Who Am I?

### [Brit Butler][brit]

[blog](https://blog.kingcons.io), [twitter](https://twitter.com/king_cons),
[code](https://github.com/kingcons), etc


I also like [making cocktails][cocktails], playing with [dogs][dogs], arguing about music,
and taking [Smash Brothers Melee][on_my_m2k] far too seriously.

[brit]: http://blog.theironyard.com/2014/12/20/meet-brit-butler-atlantas-new-ruby-instructor/
[on_my_m2k]: http://gfycat.com/FatHastyArawana
[cocktails]: https://twitter.com/king_cons/status/549049160918654976
[dogs]: https://twitter.com/king_cons/status/539154483943833600

## General Course Arc

* Weeks 1-3: Programming Fundamentals
* Weeks 4-6: Basics of the Web
* Weeks 7-9: Intermediate Interneting

- Everyone is freaked out at some point in this course. Come talk to me about it! Don't panic. :)

- Sidenote: I'll be out of town this Friday/Saturday for an *amaaaazzzzing* programming conference, [Strangeloop][stl].
  But I'll be checking slack and email when I can. And probably tweeting a lot #strangeloop.

[stl]: http://thestrangeloop.com/

---

# Introductions

## Describe when you were first excited by computers or programming.

## How did you wind up at the Iron Yard?

---

# Schedule and Expectations

- Rule #1: In this course, you'll get out what you put in. I'm here to instruct and support you. **Communicate!**

--

- Work life balance is important. I'm here to help you as much as possible but:
  * Don't Slack message me after 8pm.
  * I'll try to check Slack a bit over the weekend but there are no guarantees.
  * You may have better luck with email to brit@theironyard.com on weekends.

--

- I have administrative meetings Mondays at 3:30, Wednesdays at 3:30, and Thursdays at 2:00.
  I also need some administrative time for the usual things: lecture prep, grading, interviews, etc.

--

- Need debugging help during lab time? Use **Ironbot**! _Lecture notes will always be posted online_.

--

- *Review sessions* begin in **week 2**. *Progress reports* and *1-on-1 meetings* with me start in **week 3**.

---

# Programming is a Mindset

- I learned Ruby (and Rails) on-the-fly, on-the-job. Tools change. Some of the tools we use
  this semester I'll be using for the first time for the first time.

--

- Ignore the hate/Ignore the hype. Programming is **not** about *tools*. Let Google worry about the minutiae. :)

--

- Programming is all about trade offs. There are no perfect, finished programs. Software exists in a **social context**.

--

- You will spend half of your working life reading code, not writing it.

> "Thus, programs must be written for people to read,
>  and only incidentally for machines to execute."
>
>   _Structure and Interpretation of Computer Programs, Preface_

---

# Big Pictures Goals for Week 1

### Minutiae

* Ruby
* Git
* Shell

### Programming Fundamentals

* Scoping - When is a variable or method accessible
* Evaluation - Ability to reason about how code runs

### Software Design Fundamentals

* Problem Decomposition
* Data Representation

---

## Let's talk a bit about some of our tools ...

- Package Management
  * System level (homebrew for OSX)
  * Language level (bundler for Ruby)

--

- Editor / Programming Language
  * Great code and terrible code can be written with any language/editor

--

- Shell: Where did it come from? Why use it?

--

- Version Control: Where did it come from? Why use it?

--

- Cool! Time for some quick minutiae ...

---

# A Shell Checkup

### Commands:

- pwd
- cd
- ls
- cp, mv, rm
- cat / less
- mkdir / rmdir
- clear
- ssh / sudo
- man / woman
- grep

---

# A Shell Checkup

### Concepts:

- files vs directories
- absolute vs relative paths
- hidden files
- tilde / $HOME
- .. / -
- permissions (are a thing we'll get to)
- pipes
- redirection

---

# Start your rubies!

## Let's talk data types!

- Booleans

--

- Numbers

--

- Strings

--

- Symbols

--

- And more to come ...

---

# Variables and I/O

- Puts
- Gets
- Chomp

---

# Conditionals

### Basics: `if then else elsif end`
### One-legged: `when unless`

---

# Looping/Iteration and Functions

## Un-conditionally
- `for i in FOO` - **NEVER USE THIS**
- `n.times` - Do something a set number of times
- `1.upto(n)` - Useful for counting up
- `n.downto(1)` - Useful for counting down
- `items.each` - Do something with each item in a collection

## Conditionally
- `while this_is_true` - Continue running until the statement is false
- `until this_is_true` - Continue running until the statement is true

## Functions
- Definition: `def foo(bar); blah blah blah; end`
- Usage: `foo(123)` or `foo(cookies)`

---

# A larger example ...

## Let's Fizzbuzz!

---

## Big Picture Goals

### Understand when things are in Scope

- Bound vs Unbound variables

### Know the Substitution Model of Evaluation

- We'd like to be able reason about programs *algebraically*

- (This actually gets into some pretty deep stuff, Referential Transparency, etc)

### Know how to read an Expression

- Everything in Ruby is an expression, Functions return the value of their last expression

- By contrast, some other languages have "statements". Functions explicitly say `return some_result`

---

# `ruby` vs `irb`

## (a.k.a Running and Testing your Damn Code)

- ruby is for running an '.rb' file or script usually
- irb is for trying things out

- You can paste code into irb.
- You should always try out functions (or even just snippets)
  as you go to make sure things behave as you expect.

---

# Today's Lab / Homework

### Go! Go! Go! [Happy Hacking!][homework]

.center[![hack_the_planet](https://33.media.tumblr.com/bd426ed8849ca171c70093023181f0ab/tumblr_mxnnox9Ro91qzh636o1_500.gif)]

_(I will open an issue on github for each of you, post your answers in a gist at gist.github.com and paste the link in the github issue.)_

[homework]: https://github.com/TIY-ATL-ROR-2015-Sep/lectures/blob/master/wk01-ruby-basics/mon/questions.md
