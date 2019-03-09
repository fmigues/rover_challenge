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
    @view.print_input(input)

    # Check if input is valid
    if @rover.check_input_valid(input) == false
      return @view.error_message(@rover)
    end

    # If input is valid, split them individually and apply the cycle below to move/turn the rover
    input.split('').map do |i|

      # If there is an obstacle, rover will stop moving and it should display a
      # message to the user with current position
      if @rover.obstacle_detector(i) == true
        return @view.obstacle_message(@rover, obstacle)
      end

      @rover.turn(i)
      @rover.move(i)

      # The code below makes the rover goes around the planet
      # Once the rover reaches the limit, the next position should be == the initial.


    end
    return @view.print_position(@rover)
  end


end
