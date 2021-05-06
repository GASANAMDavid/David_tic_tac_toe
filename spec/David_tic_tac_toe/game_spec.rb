require_relative '../../lib/David_tic_tac_toe/game'

RSpec.describe DavidTicTacToe::Game do
  let(:game) do
    board = DavidTicTacToe::Board.new
    player1 = DavidTicTacToe::Player.new('David', 'X')
    player2 = DavidTicTacToe::Player.new('Manzi', 'O')
    DavidTicTacToe::Game.new(board, player1, player2)
  end

  it "should initialize Game attributes" do
    expect(game.game_board.board).to eq [%w[_ _ _], %w[_ _ _], %w[_ _ _]]
    expect(game.player1.name).to eq 'David'
  end

  it "should return true if player has won" do
    game.game_board.add_play_to_board([0, 2], 'X')
    game.game_board.add_play_to_board([1, 1], 'X')
    game.game_board.add_play_to_board([2, 0], 'X')
    expect(game.won_the_game('X')).to eq true
  end

  it "should return false if the player hasn't won" do
    game.game_board.add_play_to_board([0, 2], 'X')
    game.game_board.add_play_to_board([1, 1], 'O')
    game.game_board.add_play_to_board([2, 0], 'X')
    expect(game.won_the_game('X')).to eq false
  end

  it "should switch the players" do
    expect(game.switch_players(game.player1)).to eq game.player2
  end
end
