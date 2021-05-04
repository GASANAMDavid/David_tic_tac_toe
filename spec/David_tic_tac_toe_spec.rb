# frozen_string_literal: true

require_relative "../lib/David_tic_tac_toe"

RSpec.describe DavidTicTacToe do

  it "should print welcome message" do
    expect(DavidTicTacToe).to receive(:print)
    DavidTicTacToe.print
  end
   
 end
 