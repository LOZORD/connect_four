# This class implements a Connect Four player
# They are distinguised by a name and a piece color
class Player
  attr_accessor :color
  attr_accessor :name
  attr_accessor :num_pieces
  attr_accessor :board

  attr_reader :num_wins

  @@player_count = 0

  COLORS = [:red, :blue, :green, :yellow] # , :cyan, :magenta]

  def initialize(some_board, some_name = "Player #{@@player_count + 1}")
    return false if @@player_count >= COLORS.size

    @board = some_board

    @color = COLORS[@@player_count]

    @name = some_name.to_s

    @num_pieces = 10 # XXX hardcoded

    @@player_count += 1

    @num_wins = 0

    true
  end

  def place_piece(col)
    @board.column(col).reverse_each do |place|
      if place.empty?
        place.place_type = @color
        return place.y
      end
    end
    false
  end

  def to_s
    @name
  end

  def is_a_bot?
    self.is_a?(AIPlayer)
  end
end
