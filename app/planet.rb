class Planet
  attr_reader :planet_max_x, :planet_max_y
  attr_accessor :current_x, :current_y, :obstacle, :obstacle_x, :obstacle_y, :rover

  def initialize(planet_max_x, planet_max_y)
    @planet_max_x = planet_max_x
    @planet_max_y = planet_max_y
    @obstacle = []
  end

   def sphere_limit(rover)
    @rover = rover
    rover_current_x = @rover.current_x
    rover_current_y = @rover.current_y
    if
      rover_current_x > @planet_max_x
      return rover_current_x = 0
    elsif
      rover_current_x <= -1
      return @rover_current_x = @planet_max_x
    elsif
      rover_current_y > @planet_max_y
      return @rover_current_y = 0
    elsif
      rover_current_y <= -1
      return @current_y = @planet_max_y
    end
  end

  def put_obstacle(obstacle_x, obstacle_y)
    one_obstacle = [obstacle_x, obstacle_y]
    @obstacle << one_obstacle
  end
end
