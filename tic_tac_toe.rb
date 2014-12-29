require "./lib/Board"
require "./lib/Player"

#so far made cell and player
def set_new_game
  # Create empty board
  board = Board.new
  
  # Create player1 (with X)
  puts "Player 1 name: "; player1_name = gets.chomp
  player1 = Player.new(player1_name,"X")

  # Create player2 (with 0)
  puts "Player 2 name: "; player2_name = gets.chomp
  player2 = Player.new(player2_name,"0")
end

def play
  set_new_game
end

play