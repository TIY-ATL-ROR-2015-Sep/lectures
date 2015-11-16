### Congratulations

We are officially in the home stretch.

Welcome to week 9.

--

![party-time](http://media2.giphy.com/media/hsBZfDG7wiWHu/giphy.gif)

---

### Final Projects

2 big notes here:

1. Group projects are *strongly* encouraged for the best possible final project.
   Any individual projects need sign off by *ALL* of the instructors.

2. If you have a final project idea you want to create, awesome.
   You will be able to pitch your idea to your fellow --students-- hackers tomorrow at 2pm.
   If you don't have an idea, fantastic! See if any of the pitches grab you.

---

## Hackathon Recap!

--

[High Five!](http://i.imgur.com/hko6ZkT.gifv)

--

Questions? Reflections? Things we can do better?

---

### Where We're Headed

Three big topics this week:

* Mailers
  * And why we'd probably rather sign up for a
    email service than run an email server ourselves.
* Background Jobs
  * We will probably see emails as an *example*
    of a background job. Shows us Mailers as a bonus.
    Or we'll write code to generate large prime numbers? In Lisp? :3
* Javascript
  * Which is my area of peak incompetence.
  * This means we need to talk just a *bit*
    about The Asset Pipeline and Turbolinks.

---

## The Final Stretch

What are we building this week?

* No Homework tonight.

* There is no weekend project though I may assign other useful work
  for over the Thanksgiving break, whether readings, lectures, exercises, etc.

* I'll be prototyping and planning tonight. Pondering hour and a half lectures
  each morning followed by reviewing pull requests and assigning cards for
  the next evening.

---

## Enter Email

So it turns out Email sucks. Shocking, right?

--

Good news: Old protocol called [SMTP][smtp] allows us to send mail without running our own mailservers.

I.e. we could Gmail to send emails on our behalf. ... But that means using our personal accounts. :-/

[smtp]: https://en.wikipedia.org/wiki/Simple_Mail_Transfer_Protocol

--

Better idea: We'll sign up for a service for sending email, [Mandrill][mandrill]!

They have a free Heroku add on (`heroku addons:add mandrill:starter` does the trick) and you get 12,000 messages a month at no charge.

Could also sign up on Mandrill's site and add the info to your `.env` and `heroku config`.

[mandrill]: https://devcenter.heroku.com/articles/mandrill

---

## Enter Actionmailer

[ActionMailer][mailer-guide] is Rails way of sending email at random.

You *can* `rails g mailer MyMailer` ... but there are just 3 important things to know:

1. Mailers
  * Live in `app/mailers`.
  * Much like controllers, there's an `ApplicationMailer` and subclasses.
  * Have methods that define instance variables and call `mail`.
2. Views
  * Live in `app/views/my_mailer/method.html.erb or method.text.erb`.
    * I think, if I'm wrong we'll just see the path when it crashes!
  * Are really boring otherwise, even more so than normal views. :)
3. Sending an email is done as follows:
  * `MyMailer.my_email(foo).deliver_later` (queue it for delivery via background jobs, comes with [delivery-options])
    * Note that if you don't have background workers set up it defaults to sending immediately.
  * `MyMailer.my_email(bar).deliver_now`

[actionmailer]: http://api.rubyonrails.org/classes/ActionMailer/Base.html
[mailer-guide]: http://guides.rubyonrails.org/action_mailer_basics.html
[delivery-options]: http://edgeapi.rubyonrails.org/classes/ActionMailer/MessageDelivery.html

---

## Questions?
