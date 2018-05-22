require_relative "rover"
require_relative "planet"
require_relative "view"

class Controller

  def initialize(rover, planet)
    @view = View.new
    @rover = rover
    @planet = planet
  end
