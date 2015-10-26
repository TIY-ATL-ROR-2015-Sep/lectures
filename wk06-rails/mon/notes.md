# Welcome Back

* From twitter:

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">I&#39;ve got 99 problems and CSS has pushed about 93 of them off the bottom of my screen.</p>&mdash; mhoye <a href="https://twitter.com/mhoye/status/606523811501109251">(@mhoye)</a></blockquote>

--

![css](http://www.latostadora.com/generados/tiendas/11070/dibujos/279390.jpg)

---

# Good News

* A [recap/reference document][recap] is up and in beta.
  Feel free to suggest improvements.

--

* Cool. Now then. [QUIZ TIME][quiz]!!!

[quiz]: https://gist.github.com/redline6561/806abf544302ee455481
[recap]: https://github.com/TIY-ATL-ROR-2015-Sep/lectures/blob/master/week6-recap.md

---

# Let's Build a Blog with Rails!

* `gem install rails` && `rbenv rehash`
* `rails new blarg`
* `rails g`, `rails c`, `rails s`
* `rake routes`

---

# Files go in specific places:

* Models go in `app/models/model_name.rb`
* Controllers go in `app/controllers/controller_name.rb`
* Views go in `app/views/controller_name_prefix/controller_method.rb`

Deep breath, this will become intuitive. Example time!

---

# Okay, now Blarg

1. `rails new blarg`

--

2. `rails g model Tag name:string`

--

3. `rails g model PostTag post_id:integer tag_id:integer`

--

4. `rails g model Post title:string date:datetime content:text`

--

5. Steal importer code from Blahg, import old posts!
   Or better yet, just drop the database into our project!

--

6. Add Posts controller and display method and view.

   Add index route and root to it.

## BREAK TIME!

---

# Ah, CRUD

7. Add a way to create posts via the web interface.
   * Give this a sec re: routes.

--

8. We should probably talk about [validations][validations] for a minute...

--

9. Toss in comments?

Ta da. Note that anyone has the right to edit/delete posts.

Something to think about for tomorrow. :)

[validations]: http://guides.rubyonrails.org/active_record_validations.html

---

# Homework

* Read selected portions of the Rails routing guide!
* Port the weekend app from Sinatra to Rails!
  * (I.e. do `rails new etsyrails`, add a route and controller, copy over the views)
* Go over the review document?

---

## BONUS

Time for the [Bootstrap][bootstrap] CSS Framework!

   * THIS IS WHY WE DON'T CSS! (Alternately, you may have dedicated front enders.)
   * [Foundation][foundation] and [Materialize][materialize] are also options.
   * Add `bootstrap-sass` gem.
   * `@import bootstrap-sprockets` and `@import bootstrap` in our `application.css.sass`
   * Maybe steal some stuff from [here][tealeaf].

[tealeaf]: http://www.gotealeaf.com/blog/integrating-rails-and-bootstrap-part-2
[bootstrap]: http://getbootstrap.com/css/
[foundation]: http://foundation.zurb.com/
[materialize]: http://materializecss.com/
