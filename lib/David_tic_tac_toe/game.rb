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

    def won_the_game(player_mark)
      board = @game_board.board
      board_size = board.size
      mark = player_mark

      board.each do |row|
        return true if row.uniq.count == 1 && row[0] == mark
      end
      board.transpose.each do |row|
        return true if row.uniq.count == 1 && row[0] == mark
      end
      main_diagnal = (0..board_size - 1).collect do |item|
        board[item][item]
      end

      return true if main_diagnal.uniq.count == 1 && main_diagnal[0] == mark

      counter_diagnal = (0..board_size - 1).collect do |item|
        board[item][board_size - (item + 1)]
      end

      counter_diagnal.uniq.count == 1 && counter_diagnal[0] == mark
    end
  end
end
