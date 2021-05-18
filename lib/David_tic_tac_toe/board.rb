module DavidTicTacToe
  class Board
    attr_reader :board

    @@denote_empty = '_'

    def initialize(size = 3)
      @board = Array.new(size) { Array.new(size) { @@denote_empty } }
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
      !@board.to_s.include?(@@denote_empty)
    end
  end
end
