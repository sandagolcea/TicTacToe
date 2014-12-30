require 'board'

describe Board do
	let(:board) {Board.new}
  let(:player) {double :player, symbol: "X"}

  it 'should have size 3x3 by default' do
    expect(board.size).to eq 3
  end

  it 'should have an array of empty cells/be empty by default' do
    expect(board).to be_empty
  end

  it 'should accept setting a cell to X or 0' do
    coord = "A1"
    expect(board.set(coord,player)).not_to eq false
    # board.set(coord,player)

    expect(board).not_to be_empty
  end

  it 'should not accept setting a cell outside the board' do
    # test considers board to be of 3x3
    coord = "A9"
    board.set(coord,player)
    expect(board).to be_empty
  end

  it 'should not accept setting a cell on a negative coord' do
    coord = "A-1"
    board.set(coord,player)
    expect(board).to be_empty
  end

  it 'should not let you set the same cell twice' do
    coord = "B2"
    board.set(coord,player)
    board.set(coord,player)
    expect(board.set(coord,player)).to eq false
  end

  it 'should return false if it could not set a cell with X or 0' do
    coord = "D-4"
    expect(board.set(coord,player)).to eq false
  end

  it 'should not be full by default' do
    expect(board).to_not be_full
  end

  it 'should be full when all cells are X or 0' do
    # TODO: replace this to be populated by size of board, not hard coded
    coord_array = ["A1","A2","A3","B1","B2","B3","C1","C2","C3"]
    coord_array.each {|coord| board.set(coord,player) }
    expect(board).to be_full
  end

end