

class MarsRover

  def initialize(position, direction)
    @position = position
    @direction = direction
  end

  def position
  	@position
  end

  def direction
  	@direction
  end

  def move(commands)
  	commands.each_char do |command| 
  		@position[1] += 1 if command == "f"
  		@position[1] -= 1 if command == "b"
  		@position[0] -= 1 if command == "l"
        @position[0] += 1 if command == "r"
  	end 
  	@position
  end

end
