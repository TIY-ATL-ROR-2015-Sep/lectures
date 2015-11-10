## Put a Badge On It

It is common and helpful in serious software development to have the
tests run automatically on any commit to the master branch and to
ensure any pull requests do not break the project.

[Travis CI][travis-ci] is a popular provider of this service, which is
as "Continuous Integration", or "CI" for short. Sign Up for Travis CI
and after logging in it will show you a list of your git repositories
with a button to "turn on" the Travis CI testing for each one.

**NOTE:** You are strongly encouraged to work in groups/near others for this assignment.
  Many of you will encounter similar stumbling blocks as some of
  this has not been covered in class. Remember that in professional
  development we often have to pick up new tools on the fly. Ask questions! :)

## Normal Mode

Start by adding the Travis CI badge to your README.md by simply including 
a line like the following `[![Build Status](https://travis-ci.org/YOUR-USER-NAME/YOUR-REPO-NAME.svg?branch=master)](http://travis-ci.org/YOUR-USER-NAME/YOUR-REPO-NAME)`

Once the README for your project displays "Build Passing", your work is complete!

Your assignment is to update *your fork* of the reddit project with a
`.travis.yml` file, add at least one test for the Link model and one
for the User model, then flip the toggle on Travis CI and add the
Travis CI badge to your README! :)

Here is an example [`.travis.yml` file][travis-rails] that you can feel
free to use in your project. I'm happy to explain details if you have questions.
You can take out the `before_script` if your reddit app is using sqlite3 instead
of postgresql. If you *are* using postgresql, you need to simply tweak the database
name in the `before_script`.

The test database name should be in the `test:` section of your `config/database.yml`.
Note that if you're using postgresql and have *not* created the database you will
need to run: `createdb my-database`.

You can run any tests you write with ...

    RAILS_ENV=test bundle exec rake db:migrate test``

Note that `db:migrate` is just there to make sure any needed migrations are run on
the test database first (since it is separate from our usual development database).

[travis-rails]: https://gist.github.com/kingcons/cce5e63298a6931c6fc7
[travis-ci]: https://travis-ci.org/

## References

* [Rails Testing Guide][testing] will be a useful resource. In particular,
  the sections on model testing and fixtures!

[testing]: http://guides.rubyonrails.org/testing.html#the-low-down-on-fixtures
