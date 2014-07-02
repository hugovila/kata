

class MarsRover

  attr_reader :position, :direction
  
  MOVE_ONE = 1
  FORWARD = "f"
  BACKWARD = "b"
  LEFT = "l"
  RIGHT = "r"

  def initialize (position, direction)
    @position = position
    @direction = direction
  end

  def move(commands)
    commands.each_char do |command| 
      @position[1] += MOVE_ONE if command == FORWARD
      @position[1] -= MOVE_ONE if command == BACKWARD
      @position[0] -= MOVE_ONE if command == LEFT
      @position[0] += MOVE_ONE if command == RIGHT
     end
    position
  end

  

end