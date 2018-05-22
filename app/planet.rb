class Planet
  attr_reader :planet_max_x, :planet_max_y
  attr_accessor :obstacle, :obstacle_x, :obstacle_y

  def initialize(planet_max_x, planet_max_y)
    @planet_max_x = planet_max_x
    @planet_max_y = planet_max_y
    @obstacle = nil
  end

  def put_obstacle(obstacle_x, obstacle_y)
    @obstacle = [obstacle_x, obstacle_y]
  end
end
