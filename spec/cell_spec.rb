require 'Cell'

describe Cell do
  let(:cell) { Cell.new }
  let(:cell_x) { Cell.new("X") }

  it 'should have state nil by default' do
    expect(cell.state).to eq nil
  end

  it 'can be initialize with a given state' do
    expect(cell_x.state).to eq "X"
  end


  it 'can change its state' do
    cell_x.state = "0"
    expect(cell_x.state).to eq "0"
  end

end