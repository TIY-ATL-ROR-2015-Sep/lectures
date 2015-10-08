# Too Dead

Build a basic terminal todo app.

I've provided the application skeleton in [too_done][too_done].
You'll want to fork and clone it and push all work to your fork.

[too_done]: https://github.com/TIY-ATL-ROR-2015-Sep/too_done

## Objectives

### Learning Objectives

After completing this assignment, you should ...

* Understand basic database modeling and associations
* Understand how to create, delete, and query models
* Understand how to write migrations to update the schema
* Understand how to use models in a larger application

### Performance Objectives

* Use `belongs_to` and `has_many` associations competently
* Use ActiveRecord to manage the database schema and models
* Use modules to avoid polluting ruby's global namespace

## Setup

### Installing

After you fork and clone, don't forget to run `bundle` and `rake db:migrate` from your clone!

The database will be stored in `db/too_dead.db`. I have also taken the liberty of adding a
first migration for a "sessions" table to track logins. Each entry has a user_id and a timestamp
of a login. The current user is considered to be the most recent entry in this table.

### Running

You can run the app with `bundle exec ruby lib/too_dead.rb SUBCOMMAND ARGS` but since
that is so verbose, you might want to add a shell alias to make your life easier.

Shell aliases are just shorthand for longer commands. Writing

    alias tasks="bundle exec ruby lib/too_dead.rb"

would allow you to run the app with `tasks SUBCOMMAND ARGS` which is much more convenient.

Note that shell aliases go away when the terminal is closed unless you add them to
the bottom of your shell initfiles (i.e. `~/.zshrc`) for future terminal sessions.

**Note:** SQL query logging is not on by default. It can be enabled during a run of
either `rake db:migrate` or `tasks SUBCOMMAND ARGS` by having the command line start
by setting the "LOGGING" environment variable, e.g. `LOGGING=true rake db:migrate`.

## Normal Mode

1. You'll need to add migrations/models with appropriate associations for:

   * Users
   * Todo Lists
   * Tasks

   Users and Todo Lists only hard requirement is some sort of name column.

   Tasks on the other hand need at least name, optional due date, and completed columns.

   Remember you have the [ActiveRecord Migrations Guide][migrations] to help you!

2. Once the tables and models are in place (and required in `lib/too_done.rb`),
   you should define any needed associations like `has_one`, `has_many`, `belongs_to`, etc.

   Remember to think about whether the relationship are 1-to-1, 1-to-many, many-to-many.
   (Hint: There is no need for many-to-many relationships in Normal mode.)

   Remember you have access to the [ActiveRecord Associations guide][associations] to help you!

3. There are 6 subcommands in TooDone, each is a method with comments in `lib/too_done.rb`.

   Run `tasks help` (alias) at the command line to view the subcommands and then run
   `tasks help SUBCOMMAND` with each one in turn to see more detailed descriptions of
   their options and behavior.

   Implement each subcommand, first relying on the default options and basic behavior. Then
   supporting early exit in case of invalid input, and support for the options, and so on.

   We are using the lovely [Thor][thor] library to help make our app and handle command line
   arguments. Feel free to refer to its documentation but the only thing you should need to
   know is that the optional command line flags can be accessed from an `options` hash
   in any of the methods in the App class. i.e. `options[:list]` for an optional list argument.

   Remember you have access to the [ActiveRecord Querying guide][querying] to help you!

[associations]: http://guides.rubyonrails.org/association_basics.html
[migrations]: http://guides.rubyonrails.org/active_record_migrations.html
[querying]: https://guides.rubyonrails.org/active_record_querying.html
[thor]: http://whatisthor.com/

## Hard Mode

1. You can show completed todo items.

2. You can sort to show overdue todo items or reverse chronological order.

3. When lists are deleted, all todo items should also be deleted.
   When accounts are deleted, their lists and items should be deleted.
   There may be an easy way to have this handled . . .

## Nightmare Mode

It's possible to envision a scenario where a Todo does not fit neatly into
a single list/category such as "Personal", "Health", "Finances", "Work", etc.

Go crazy and add a TodoTag model and Tag model. Make a many-to-many
and ways to view todos by what they're tagged with. Update the subcommands.
