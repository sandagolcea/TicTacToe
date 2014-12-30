require_relative 'cell'

class Board
  attr_reader :size

  def initialize(size=3)
    @size = size
    create_board(@size)
  end

  def create_board(size)
    @matrix = Array.new(size) {Array.new(size) {Cell.new}}
  end

  def empty?
    return false if @matrix.any? { |row| row.any? { |cell| (cell.state == "X" || cell.state == "0") } }
    true
  end

  def set(coord,player)
    x,y = translate(coord)
    return false if !valid_coordinates?(x,y)
    @matrix[x][y].state = player.symbol
    # puts "Matrix #{x}#{y} value: #{@matrix[x][y].state}"
  end

  private

  def translate(coord)
    #A1..A3, A1..C1
    array = coord.split(//)
    x = array.shift.ord - "A".ord
    y = array.join.to_i - 1
    [x,y]
  end

  def valid_coordinates?(x,y)
    return false if ( x < 0 || x >= @size || y < 0 || y >= @size )
    true
  end
end
