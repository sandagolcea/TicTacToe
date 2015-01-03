TicTacToe
=========

Tic tac toe game (practice)

Players can alternatively place X and 0 on the board until either one player wins or it's a draw.

The game ends:
- when 3 cells in a row/diagonal/col are either all X or all 0
- or when there are no more cells empty (full board - it's a draw)


##How to run
This game is designed to be played from the command line.

To play:

`git@github.com:sandagolcea/tic-tac-toe.git` 

`cd tic-tac-toe` 

`bundle install` 

`ruby tic_tac_toe.rb` 

Enjoy!

##CRC

###Board
    Responsibility   |  Collaborators
---------------------|-----------------------
create/initialize    |  -
set (cell on board)  |  Player, Cell
has_cell_matrix      |  Cell
be_empty             |  -
be_full              |  -
be_game_over         |  Player, Cell


###Player
    Responsibility   |  Collaborators
---------------------|-------------------
has_name             |  -
has_symbol           |  -

###Cell
    Responsibility       |  Collaborators
-------------------------|-------------------
has_status(be_x_0_nil)   |  Board


###Main Game Logic

####method set_new_game
Create an empty board
Create player1 (with X)
Create player2 (with 0)

####method set_gameplay

let player1 play:

 * accept coordinates
 * while !game_over?(from board)
  * place on board
  * switch players

####method game_over (in class Board)
Checks if the game is over or not

####method switch players
Changes the turn of the players

###Possible Improvements

* checks for line and diagonal from the board can be made one function
* the cell class could be just coordinates - I've made it a class for practice reasons
* application could be ported to web (done this in tic-tac-toe-web repo)
* there is a display method for the board that shouldn't be there (removed in the web app) - as command logic should be separated from view logic.

###Tic Tac Toe on the Web
This is a command line version of Tic Tac Toe.
For the web version see https://github.com/sandagolcea/tic-tac-toe-web .
