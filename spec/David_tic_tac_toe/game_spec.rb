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

  describe '#won_the_game' do
    context 'when the game is won' do
      [
        [[[1, 2], [1, 1], [1, 0]], 'O', 'ROW_WISE'],
        [[[0, 0], [1, 0], [2, 0]], 'X', 'COLUMN_WISE'],
        [[[0, 0], [1, 1], [2, 2]], 'O', 'MAIN_DIAGONAL_WISE'],
        [[[0, 2], [1, 1], [2, 0]], 'X', 'COUNTER_DIAGONAL_WISE']
      ].each do |moves, mark, description|
        it "should return true if player has won (#{description})" do
          moves.each do |move|
            game.game_board.add_play_to_board(move, mark)
          end

          expect(game.won_the_game(mark)).to eq true
        end
      end
    end

    context 'when the game is lost' do
      it "should return false if the player hasn't won" do
        game.game_board.add_play_to_board([0, 0], 'X')
        game.game_board.add_play_to_board([1, 1], 'O')
        game.game_board.add_play_to_board([2, 0], 'X')
        expect(game.won_the_game('X')).to eq false
      end
    end
  end

  it "should switch the players" do
    expect(game.switch_players(game.player1)).to eq game.player2
  end
end
