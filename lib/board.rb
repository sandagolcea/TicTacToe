class Board
  attr_reader :size

  def initialize(size=3)
    @size = size
    create_board(@size)
  end

  def create_board(size)
    @matrix = Array.new(size) {Array.new(size) {nil}}
  end

  def empty?
    return false if @matrix.all? { |row| row.all? { |cell| (cell == "X" || cell == "0") } }
    true
  end

end
