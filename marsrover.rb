

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
      @position[1] += MOVE_ONE if forward?(command)
      @position[1] -= MOVE_ONE if backward?(command)
      @position[0] -= MOVE_ONE if left?(command)
      @position[0] += MOVE_ONE if right?(command)
     end
    @position
  end

  def command? 

  end

  def forward?(command)
    command == FORWARD
  end

  def backward?(command)
    command == BACKWARD
  end

  def left?(command)
    command == LEFT
  end

  def right?(command)
    command == RIGHT
  end

end