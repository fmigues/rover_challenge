class View

  def print_position(rover)
    puts "Rover position: #{rover.direction} [#{rover.x}, #{rover.y}]"
  end

  def get_input(rover)
    puts "Enter input - F or B to move forward or backward, L or R to turn left or right:"
  end

  def print_input(input)
    puts "Input: #{input}"
    puts "Moving Rover..."
    sleep(1)
  end

  def error_message(rover)
    puts "One (or more) of your commands is invalid. Review your inputs and try again"
    print_position(rover)
  end

  def obstacle_message(rover, obstacle)
    puts "Your rover encountered a obstacle at #{obstacle}. The rover is at
    #{rover.direction} [#{rover.x}, #{rover.y}]. Please review your code."
  end

end
