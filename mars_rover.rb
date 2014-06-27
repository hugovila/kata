
class MarsRover

  attr_reader :position, :direction

  def initialize(position, direction)
    @position = position
    @direction = direction
  end

  def move(commands)
  	commands.each_char do |command|
  		@position[0] += 1
  	end
  	position
  end

end