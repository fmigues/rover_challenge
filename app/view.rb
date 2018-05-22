class View

  def print_position(rover)
    puts "Rover position: #{rover.direction} [#{rover.x}, #{rover.y}]"
    puts "==========================="
  end

  def get_input(rover)
    puts "Enter input - F or B to move forward or backward, L or R to turn left or right:"
  end

  def print_input(input)
    puts "Input: #{input}"
    puts "Moving Rover..."
    sleep(1)
  end

end
