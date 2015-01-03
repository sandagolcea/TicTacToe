require "./lib/Board"
require "./lib/Player"
require "cowsay"

LINESIZE = 60
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
  @board.display
  symbol_placed = false

  until symbol_placed
    print "#{@current_player.name} - #{@current_player.symbol} - Give coordinates: " ; @coord = gets.chomp
    symbol_placed = @board.set(@coord,@current_player) 
  end
end

def switch_players
  @current_player == @player1 ? (@current_player = @player2) : (@current_player = @player1)
end

def clrscr
  puts "\e[H\e[2J" # clears the screen
end

def show_winner
  if @board.full? 
    puts ("***It's a draw!***\n").center(LINESIZE)
  else
    puts Cowsay.say("#{@current_player.name.capitalize} wins!")
  end
end

def play
  clrscr
  set_new_game

  clrscr

  loop do
    place_symbol
    break if @board.game_over?(@coord,@current_player) || @board.full?
    switch_players
    clrscr
  end

  show_winner
  
end

play