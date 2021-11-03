require 'player'

describe Player do
  it "should return the player's name" do
    player = Player.new('name')
    expect(player.name).to eq('name')
  end
end