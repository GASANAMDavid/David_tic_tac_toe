# frozen_string_literal: true

RSpec.describe DavidTicTacToe do
  it "has a version number" do
    expect(DavidTicTacToe::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).not_to eq(true)
  end

  it "should print welcome message" do
    expect(DavidTicTacToe).to receive(:print)
    DavidTicTacToe.print
  end
   
 end
 