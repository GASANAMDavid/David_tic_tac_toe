require "stringio"
require_relative "../lib/David_tic_tac_toe"
require_relative "../lib/David_tic_tac_toe/player"

RSpec.describe DavidTicTacToe do
  let(:game) do
    DavidTicTacToe::Game.new(DavidTicTacToe::Board.new, DavidTicTacToe::Player.new("David", 'X'),
                             DavidTicTacToe::Player.new("Manzi", 'O'))
  end
  it "Sets current player to David" do
    expect(game.player1.name).to eq("David")
  end
  context "Declaring winner" do
    it "should declare player 1 as Winner" do
      allow(subject).to receive(:gets).and_return('0, 0', '0, 1', '0, 2', '1, 0', '1, 1', '1, 2', '2, 0')

      DavidTicTacToe.play
    end
  end
end
# end
