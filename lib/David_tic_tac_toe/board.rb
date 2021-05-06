module DavidTicTacToe
  class Board
    attr_reader :board

    DENOTE_EMPTY = "_"

    def initialize(size = 3)
      @board = Array.new(size) { Array.new(size) { DENOTE_EMPTY } }
    end

    def add_play_to_board(indices, mark)
      @board[indices[0]][indices[1]] = mark
    end

    def print_board
      (0..2).each do |row|
        puts board[row].to_s
      end
    end

    def board_full
      !@board.to_s.include?(DENOTE_EMPTY)
    end

    def valid_position(indices)
      @board[indices[0]][indices[1]].to_s.include?(DENOTE_EMPTY)
    end
  end
end
