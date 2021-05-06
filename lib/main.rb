# frozen_string_literal: true

require_relative 'David_tic_tac_toe/version'
require_relative 'David_tic_tac_toe/board'
require_relative 'David_tic_tac_toe/player'
require_relative 'David_tic_tac_toe/game'

module DavidTicTacToe
  @game = DavidTicTacToe::Game.new(DavidTicTacToe::Board.new, DavidTicTacToe::Player.new('David', 'X'),
                                   DavidTicTacToe::Player.new('Manzi', 'O'))
  def self.play
    current_player = @game.player1
    while true
      @game.game_board.print_board
      puts "------------------\n\nPlayer #{current_player.name}'s turn: "
      input = gets.chomp
      indices = input.split(' ', 2)
      indices = indices.map(&:to_i)
      next unless @game.game_board.valid_position(indices)

      @game.game_board.add_play_to_board(indices, current_player.marker)
      return "#{current_player.name} has Won!!!!!!!" if @game.won_the_game(current_player.marker)
      return "No winner! TIED!!!!!!" if @game.game_board.board_full

      current_player = @game.switch_players(current_player)

    end
  end

  puts play
end
