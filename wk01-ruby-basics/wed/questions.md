## Homework

Take the hangman.rb program from class and make it support two players!

## Description

### Normal Mode

Changing our existing logic is the predominant activity in software development!

Each time a new game begins we should prompt for the names of players 1 and 2.

To avoid rewriting the *entire* program by passing the players around all over
the place, let's just try to keep track of the *current player* and *their guesses*
inside the main `until game_over?` loop in `hangman`.

After each turn, the *current player* and guesses should be swapped to the
*opposing player* and their guesses.

### Hard Mode

Instead of switching the player and guesses *every turn*, do it only after the
current player guesses incorrectly. :)
