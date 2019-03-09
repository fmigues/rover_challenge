class Rover
  attr_reader :planet
  attr_accessor :direction, :position, :current_x, :current_y

  def initialize(planet, direction, current_x, current_y)
    @planet = planet
    @direction = direction
    @current_x = current_x
    @current_y = current_y
  end

  def check_input_valid(input)
    input.split('').map do |i|
      if i != "R" && i != "L" && i != "F" && i != "B"
        return false
      end
    end
    return true
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
      @current_x += 1
    elsif  input == "F" && @direction == "S" || input == "B" && @direction == "N"
      @current_x -= 1
    elsif input == "F" && @direction == "E" || input == "B" && @direction == "W"
      @current_y += 1
    elsif input == "F" && @direction == "W" || input == "B" && @direction == "E"
      @current_y -= 1
    end
  end

  def obstacle_detector(input)
    if @planet.obstacle != nil
      planet_obstacle_x = @planet.obstacle[0]
      planet_obstacle_y = @planet.obstacle[1]
      if @direction == "N" && input == "F" && planet_obstacle_x == @current_x + 1 && @current_y == planet_obstacle_y ||
        @direction == "S" && input == "F" && planet_obstacle_x == @current_x - 1 && @current_y == planet_obstacle_y ||
        @direction == "N" && input == "B" && planet_obstacle_x == @current_x - 1 && @current_y == planet_obstacle_y ||
        @direction == "S" && input == "B" && planet_obstacle_x == @current_x + 1 && @current_y == planet_obstacle_y ||
        @direction == "E" && input == "F" && planet_obstacle_y == @current_y + 1 && @current_x == planet_obstacle_x ||
        @direction == "W" && input == "F" && planet_obstacle_y == @current_y - 1 && @current_x == planet_obstacle_x ||
        @direction == "E" && input == "B" && planet_obstacle_y == @current_y - 1 && @current_x == planet_obstacle_x ||
        @direction == "W" && input == "B" && planet_obstacle_y == @current_y + 1 && @current_x == planet_obstacle_x
        return true
      end
      return false
    end
  end

end
