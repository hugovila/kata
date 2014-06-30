

class MarsRover

  def initialize mars_rover_position, mars_rover_direction
  	@position = mars_rover_position
  	@direction = mars_rover_direction
  end

  def position
  	@position
  end

  def direction
  	@direction
  end

  def move(commands)
    commands.each_char do |command|
    	position[1] += 1 if command == 'f'
    	position[1] -= 1 if command == 'b'
    end
    position
  end


end