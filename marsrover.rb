
class MarsRover

  POSITION_X = 0
  POSITION_Y = 1
  SPEED      = 1

  FORWARD = "f"
  BACKWARD = "b"
  LEFT = "l"
  RIGHT = "r"


  def initialize(the_position = [0, 0], the_direction = :N)
    @the_position = the_position
    @the_direction = the_direction
    @command_map = { 
      FORWARD => lambda{forward()}, 
      BACKWARD => lambda{backward()}, 
      LEFT => lambda{left()}, 
      RIGHT => lambda{right()} 
    }
  end

  
  def where_are_you
    @the_position
  end

  def what_are_you_viewing
    @the_direction
  end

  def what_are_you_bearing
    @the_direction
  end

  def move(commands)
    commands.each_char do |command|
      @command_map[command].call
    end
    where_are_you
  end

  private

  def forward
    @the_position[POSITION_Y] += SPEED
  end

  def backward
    @the_position[POSITION_Y] -= SPEED
  end

  def left
    @the_position[POSITION_X] -= SPEED
  end

  def right
    @the_position[POSITION_X] += SPEED
  end

end