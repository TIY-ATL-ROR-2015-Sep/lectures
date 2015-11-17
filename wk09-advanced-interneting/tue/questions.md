# Ecosystem Explorer

__This project is due by Midnight on Sunday, November the 22nd.__

## Description

Working individually, explore the Ruby/Rails ecosystem and extend your
reddit projects to incorporate new functionality. This project is open-ended
since you are at a point in your development as engineers where being able
to learn and apply new gems in an application is relevant and tractable.

**Note:** Gems selected for your consideration are listed with commentary
          in the resources section at the bottom of this document.

## Objectives

### Learning Objectives

After completing this assignment, you should ...

* Be comfortable researching new Gems
* Be capable (with some help) of integrating new gems into an existing Rails app

### Suggested Approach

For tonight, simply research the available gems, read up on them a bit
and decide which ones you'd like to work on. Then for each gem,

1. Cut a branch to work on that feature.
2. Experiment with using it in the most basic way possible first.
3. Once you're comfortable, flesh things out to your satisfaction.
4. Merge your work in, *then* start working on the next gem.

## Details

### Deliverables

* A link to your reddit fork with a description of functionality added,
  gems used, and a link to the deployed application on Heroku.

Please consult with Rickard or I if you need help with git or Heroku issues!

### Requirements

### Normal Mode

* Switch to Devise or add support for moderators via CanCan or Pundit.
* Pick one of pg_search to add search functionality or query optimization with Bullet.

### Hard Mode

* Add either styling via a CSS Framework or an admin interface
  for bulk management of posts and user data.

## Resources

### Authentication

We've been hand-rolling authentication thus far, whether it's
Token Auth or Bcrypt. If you're interested, it would be worth exploring
the common Rails solution for *non-API* web apps, Devise.

There will be some muck in swapping out your current hand-rolled
authentication for Devise, but you'll have better security, and
email-verified signup to boot. Note that this won't work for APIs.

* [Devise](https://github.com/plataformatec/devise)

### Authorization

Authorization is about whether a user is *allowed* to do something,
as opposed to Authentication which is about whether someone *is* a user.

While your instructor appreciates the OO leanings of Pundit, CanCan is
the more common industrial solution in Authorization scenarios.

* [CanCan](https://github.com/ryanb/cancan)
* [Pundit](https://github.com/elabs/pundit)

### Search

Sometimes you know the specific database query you're trying to craft
but building a generic interface for Full-Text Search or search across
multiple models is tricky. These gems can help.

* [pg_search](https://github.com/Casecommons/pg_search)

### Admin Interface

Sometimes an admin portion of a site is an absolute necessity for
exposing potentially dangerous operations to moderators, or even to
simplify bulk editing or database operations.

There have been multiple gems for adding a Rails admin throughout
the years but Administrate might be the first to solve the problem
without too much fuss. It's new so you're in uncharted territory.

* [Administrate](http://administrate-docs.herokuapp.com/)

### Database Optimization

We often write queries cleverly only to find we didn't need to.
Or, more often, we write them simply and see they're a bit slow.

Bullet is a library for profiling our database calls and (usually)
catching our worst offenses to let us know about better options.

* [Bullet](https://github.com/flyerhzm/bullet)

### CSS Frameworks / Improved Frontend

CSS Frameworks add pre-existing classes and components to our
sites for styling them in predefined ways without as much pain.

Two very prominent CSS frameworks are [bootstrap][bs] and [materialize][mz].
They each have thorough web sites describing how to use the
framework with visual examples in addition to the below gems
which discuss the particulars of integrating them into Rails.

There are also copious blog articles on applying them to existing projects.
And Rickard has experience with both of them! Though we only have Rickard
until the 30th because he's smart and busted ass and just got hired! :)

* [bootstrap-sass](https://github.com/twbs/bootstrap-sass)
* [materialize-sass](https://github.com/mkhairi/materialize-sass)

[bs]: http://getbootstrap.com/getting-started/
[mz]: http://materializecss.com/
