require_relative "controller"

planet = Planet.new(8, 8)
planet.put_obstacle(1, 2)
rover = Rover.new(planet, "N", 0, 0)
@controller = Controller.new(rover, planet)
@controller.start(rover)
loop do
  @controller.user_input(rover)
  input = gets.chomp.upcase
  @controller.action(input)
end
