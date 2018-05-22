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
    @view.print_input(input)
    input.split('').map do |i|
    @rover.turn(i)
    @rover.move(i)
  end
  return @view.print_position(@rover)
end


end
