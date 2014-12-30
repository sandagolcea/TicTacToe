require "./lib/Board"
require "./lib/Player"

#so far made cell and player
def set_new_game
  # Create empty board
  @board = Board.new
  
  # Create player1 (with X)
  puts "Player 1 name: "; player1_name = gets.chomp
  @player1 = Player.new(player1_name,"X")

  # Create player2 (with 0)
  puts "Player 2 name: "; player2_name = gets.chomp
  @player2 = Player.new(player2_name,"0")

  @current_player = @player1
end

def place_symbol
  symbol_placed = false

  until symbol_placed
    print "#{@current_player.name} - Give coordinates: " ; @coord = gets.chomp
    symbol_placed = @board.set(@coord,@current_player) 
  end
end

def switch_players
  @current_player == @player1 ? (@current_player = @player2) : (@current_player = @player1)
end

def play
  set_new_game

  loop do
    place_symbol
    break if @board.game_over?(@coord,@current_player)
    switch_players
  end
end

play