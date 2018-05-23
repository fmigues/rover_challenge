require_relative "rover"
require_relative "planet"
require_relative "view"

class Controller

  def initialize(rover, planet)
    @view = View.new
    @rover = rover
    @planet = planet
  end

  def start(rover)
    @view.print_position(rover)
  end

  def user_input(rover)
    @view.get_input(rover)
  end

  def action(input)
    obstacle = @planet.obstacle
    if @rover.check_input_valid(input) == false
      return @view.error_message(@rover)
    end
    @view.print_input(input)
    input.split('').map do |i|
      if @rover.obstacle_detector(i) == true
        return @view.obstacle_message(@rover, obstacle)
      end
    @rover.turn(i)
    @rover.move(i)
    @rover.sphere_limit
  end
  return @view.print_position(@rover)
end


end
