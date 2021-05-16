module Validation
  def self.validate_input(input)
    input.gsub!(/[[:space:]]/, '')
    user_input = input.split(',')
    (user_input.length == 2) && user_input.all?(/[0-9]/)
  end

  def self.validate_position(index, board)
    puts index
    puts board
    denote_empty = '_'
    if index.any? { |i| i >= board.length }
      puts "index out of bounds: #{index}\nTry another position"
      return false
    end

    if board[index[0]][index[1]] != denote_empty
      puts "Position was already played\nTry another position"
      return false
    end
    true
  end
end
