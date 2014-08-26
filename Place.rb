class Place
  EMPTY = :empty
  RED = :red
  BLUE = :blue
  GREEN = :green
  YELLOW = :yellow

  attr_accessor :place_type
  # x and y coord attrs?

  def initialize (type = EMPTY)
    @place_type = type
  end

  def empty?
    @place_type == EMPTY
  end

  def full?
    !empty?
  end

  def belongs_to_player?(some_player)
    @place_type == some_player.color
  end

  def belongs_to?(p)
    belongs_to_player?(p)
  end

  def to_s
    case @place_type
      when RED
        return "R".red
      when BLUE
        return "B".blue
      when GREEN
        return "G".green
      when YELLOW
        return "Y".yellow
      else
        return "_".white
    end
  end
end

