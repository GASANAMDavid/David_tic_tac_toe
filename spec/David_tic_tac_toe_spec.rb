require "stringio"
require_relative "../lib/David_tic_tac_toe"
require_relative "../lib/David_tic_tac_toe/player"

RSpec.describe DavidTicTacToe do
  # context "Declaring winner" do
  it "should declare player 1 as Winner" do
    allow(DavidTicTacToe).to receive(:gets).and_return('0, 0', '0, 1', '0, 2', '1, 0', '1, 1', '1, 2',
                                                       '2, 0')

    expect(DavidTicTacToe.play).to eq("David has won!!!!!!!")
  end
  # end
  # it "should expect the game to be Tied" do
  #   allow(DavidTicTacToe).to receive(:gets).and_return('0, 0', '0, 1', '0, 2', '1, 1', '1, 0', '1, 2', '2, 1', '2 0',
  #                                                      '2 2')
  #   expect(DavidTicTacToe.play).to eq("No winner! TIED!!!!!!")
  # end
end
