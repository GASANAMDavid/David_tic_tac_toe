require_relative '../../lib/David_tic_tac_toe/board'

RSpec.describe DavidTicTacToe::Board do
  let(:my_board) { DavidTicTacToe::Board.new }

  it "should initialize a board as an array of size [3][3]" do
    expect(my_board.board).to eq [%w[_ _ _], %w[_ _ _], %w[_ _ _]]
  end

  it "should add marker to specified indices" do
    indices = [2, 0]
    my_board.add_play_to_board(indices, 'X')
    expect(my_board.board).to eq [%w[_ _ _], %w[_ _ _], %w[X _ _]]
  end

  it "should print the board" do
    expect do
      my_board.print_board
    end.to output(puts([%w[_ _ _], %w[_ _ _], %w[_ _ _]])).to_stdout
  end

  it "should return true when board is full" do
    (0..2).each do |i|
      (0..2).each do |j|
        my_board.add_play_to_board([i, j], 'X')
      end
    end
    expect(my_board.board_full).to eq true
  end

  it "should return false when board is not full" do
    expect(my_board.board_full).to eq false
  end
end
