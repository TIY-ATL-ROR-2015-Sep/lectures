## Guess Again

Congratulations on surviving today's double lecture!

Homework is to read selected portions of the ActiveRecord Associations guide and,
if you're the ambitious type, fork and then clone the [guessr][guessr] repo to make some changes.

*Note:* Keep in mind that as with Monday's homework you'll want to run `bundle` and
`rake db:migrate` in your local copy of `guessr` if you fork and clone it.

[guessr]: https://github.com/TIY-ATL-ROR-2015-Sep/guessr.git

### Normal Mode

In the [ActiveRecord Associations Guide][aag], read Chapter 1,
and the sections "Belongs To", "Has Many", and "Has Many Through" from Chapter 2.

Finally, skim sections 4.1 and 4.3 from the Associations Reference so you have
an idea of what methods are added by `belongs_to` and `has_many`.

### Hard Mode

Do one or both of the following:

1. Add a check inside the App's `take_turn` method to allow the player to quit.
   Note that the method `exit` is part of the Ruby language and exits the program.

2. Create a method in the app that is called between games allowing the user to see
   a high scores board.

   This requires two sub-pieces of work but both should be fairly simple.

      * Write a migration to rename the `total_wins` column the players table to `score`.
      * Ensure that when a game is won, the players score is increased by the game score.
        (Note that there is already a `score` method on game that computes it's "value".)

[aag]: http://guides.rubyonrails.org/association_basics.html
