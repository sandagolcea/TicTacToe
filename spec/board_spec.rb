require 'board'

describe Board do
	let(:board) {Board.new}

  it 'should have size 3x3 by default' do
    expect(board.size).to eq 3
  end

  it 'should have an array of empty cells/be empty by default' do
    expect(board).to be_empty
  end

  xit 'should accept setting a cell to X or 0' do
  end

  xit 'should be full when all cells are X or 0' do
  end

end