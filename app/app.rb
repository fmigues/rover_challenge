require_relative "controller"

planet = Planet.new(8, 8)
planet.put_obstacle(1, 2)
rover = Rover.new(planet, "N", 0, 0)
@controller = Controller.new(rover, planet)
@controller.start(rover)
@controller.user_input(rover)
input = "FFRMMM"
@controller.action(input)
