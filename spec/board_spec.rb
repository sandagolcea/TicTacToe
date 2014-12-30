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
    coord = "A2"
    board.set(coord,player)
    expect(board).not_to be_empty
  end

  xit 'should be full when all cells are X or 0' do
  end

end