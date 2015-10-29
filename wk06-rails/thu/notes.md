## Enter Authentication

--

<img src="http://i.imgur.com/LM7RWkx.jpg" width="80%">

---

## But First ...

* Add a root route.

--

* Add a user model w/ email, password and controller.

--

* Do some validation things?

---

## Now for how Auth works ...

* What we'd really like to do is be able to ask if a user is logged in and if so who it is.

--

* Now we can talk about sessions, `current_user`, how `before_action` works, etc.

--

* Hmm ... that might not be the most secure way to go...

* Let's see how to do things a *liiitle* better with bcrypt and [`has_secure_password`][hsp]

[hsp]: http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html

--

### What Time Is It?

[Deploy to Heroku][heroku] if there's time!

[heroku]: https://devcenter.heroku.com/articles/getting-started-with-rails4

---

### Notes on Group Workflow

* The workflow you should follow is well described by github [here][gf]

* For deeper motivations behind the workflow, read [Understanding Github Flow][ugf]

[gf]: https://guides.github.com/introduction/flow/
[ugf]: http://scottchacon.com/2011/08/31/github-flow.html

---

### Notes on Merge Conflicts

* The correct response to a merge conflict is to merge master into
  *your* branch, thereby bringing in the new commits on master.
  *It is the responsibility of the "brancher" to make their code cleanly mergeable.*

--

* An important side note, **NEVER FORCE PUSH TO MASTER FOR ANY REASON**.
  When you force push to master, you forcibly change "history" and *always*
  screw up git for **everyone else** working on the project.
  Key point: Don't be a life ruiner.

--

* Note that the database isn't version controlled, so if you have *run*
  migrations, the database is *still migrated* on a different branch.

--

* There is also a guide from github about [resolving merge conflicts][rmc] on the command line.

[rmc]: https://help.github.com/articles/resolving-a-merge-conflict-from-the-command-line/
