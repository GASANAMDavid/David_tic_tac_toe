module DavidTicTacToe
  class Game
    attr_reader :game_board, :player1, :player2

    def initialize(board, player1, player2)
      @game_board = board
      @player1 = player1
      @player2 = player2
    end

    def switch_players(current_player)
      return player1 if current_player == player2
      return player2 if current_player == player1
    end

    def won_the_game(mark)
      board = @game_board.board
      board_size = board.size
      check_rows = []

      board.each do |row|
        check_rows << row
      end

      board.transpose.each do |row|
        check_rows << row
      end

      check_rows << (0..board_size - 1).collect do |item|
        board[item][item]
      end

      check_rows << (0..board_size - 1).collect do |item|
        board[item][board_size - (item + 1)]
      end

      check_rows.any? { |row| check_uniqueness(row, mark) }
    end

    def check_uniqueness(row, mark)
      row.uniq.count == 1 && row[0] == mark
    end
  end
end
