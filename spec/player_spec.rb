require 'Player'

describe Player do
  
  let(:player1) { Player.new("Sanda","X") }

  it 'should have a name' do
    expect(player1.name).to eq "Sanda"
  end

  it 'should have an X or 0 symbol' do
    expect(player1.symbol).to eq "X"
  end

end