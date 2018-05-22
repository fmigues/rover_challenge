class Rover
  attr_reader :planet
  attr_accessor :direction, :position, :x, :y

  def initialize(planet, direction, x, y)
    @planet = planet
    @direction = direction
    @x = x
    @y = y
  end

  def turn(input)
    if input == "R" && @direction == "N" || input == "L" && @direction == "S"
      @direction = "E"
    elsif input == "R" && @direction == "E" || input == "L" && @direction == "W"
      @direction = "S"
    elsif input == "R" && @direction == "S" || input == "L" && @direction == "N"
      @direction = "W"
    elsif input == "R" && @direction == "W" || input == "L" && @direction == "E"
      @direction = "N"
    end
  end

  def move(input)
    if input == "F" && @direction == "N" || input == "B" && @direction == "S"
      @x += 1
    elsif  input == "F" && @direction == "S" || input == "B" && @direction == "N"
      @x -= 1
    elsif input == "F" && @direction == "E" || input == "B" && @direction == "W"
      @y += 1
    elsif input == "F" && @direction == "W" || input == "B" && @direction == "E"
      @y -= 1
    end
  end


end
