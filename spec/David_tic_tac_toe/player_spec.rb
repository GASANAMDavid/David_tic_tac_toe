require_relative '../../lib/David_tic_tac_toe/player'

RSpec.describe DavidTicTacToe::Player do
  it "should initilize player with name and marker" do
    player = DavidTicTacToe::Player.new('David', 'X')
    expect(player.name).to eq 'David'
    expect(player.marker).to eq 'X'
  end
end
