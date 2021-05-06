# frozen_string_literal: true

require_relative 'David_tic_tac_toe/version'
require_relative 'David_tic_tac_toe/board'
require_relative 'David_tic_tac_toe/player'
require_relative 'David_tic_tac_toe/game'

module DavidTicTacToe
  game = DavidTicTacToe::Game.new(DavidTicTacToe::Board.new, DavidTicTacToe::Player.new('David', 'X'),
                                  DavidTicTacToe::Player.new('Manzi', 'O'))
  puts game.play
end
