

class MarsRover

  attr_reader :position, :direction

  def initialize(initial_position, initial_direction)
    @position = initial_position
    @direction = initial_direction
  end

  def move(commands)
    result = commands.each_char { |comand| @position[1] += 1 }
    position
  end

end