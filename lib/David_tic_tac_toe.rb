# frozen_string_literal: true

require_relative 'David_tic_tac_toe/version'
require_relative 'David_tic_tac_toe/board'
require_relative 'David_tic_tac_toe/player'
require_relative 'David_tic_tac_toe/game'
require_relative 'David_tic_tac_toe/validation'
module DavidTicTacToe
  def self.play
    game = DavidTicTacToe::Game.new(DavidTicTacToe::Board.new, DavidTicTacToe::Player.new('David', 'X'),
                                    DavidTicTacToe::Player.new('Manzi', 'O'))
    current_player = game.player1

    while true
      game.game_board.print_board
      puts "------------------\n\nPlayer #{current_player.name}'s turn: "
      puts 'Enter indices separated by  a comma'
      input = gets.chomp
      next unless Validation.validate_input(input)

      indices = input.split(',', 2)
      indices = indices.map(&:to_i)
      next unless Validation.validate_position(indices, game.game_board.board)

      game.game_board.add_play_to_board(indices, current_player.marker)
      return "#{current_player.name} has won!!!!!!!" if game.won_the_game(current_player.marker)
      return "No winner! TIED!!!!!!" if game.game_board.board_full

      current_player = game.switch_players(current_player)
    end
  end
end
