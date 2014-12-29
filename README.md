TicTacToe
=========

Tic tac toe game (practice)

Players can alternatively place X and 0 on the board.
The game ends:
- when there are either no more cells empty (full board)
- or 3 cells in a row/diagonal/col are either all X or all 0

##CRC

##Board
    Responsibility   |  Collaborators
---------------------|-------------------
create/initialize    |  -
be_empty             |  -
be_full              |  -
accept_play/set      |  Player, Cell
has_cell_array       |  Cell
game_over(uses full) |  -


##Player
    Responsibility   |  Collaborators
---------------------|-------------------
play                 |  Board

##Cell
    Responsibility   |  Collaborators
---------------------|-------------------
be_x_0_nil           |  Board


##Main Game Logic

###method set_new_game
Create an empty board
Create player1(with X)
Create player2(with 0)

###method set_gameplay

let player1 play:

 * accept coordinates
 * place on board
 * check if !game_over(from board)
 * switch players

###method game_over (in class Board)
Checks if the game is over or not

###method switch players
Changes the turn of the players
