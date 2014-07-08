
class MarsRover

  POSITION_X = 0
  POSITION_Y = 1
  SPEED      = 1

  FORWARD = "f"
  BACKWARD = "b"
  LEFT = "l"
  RIGHT = "r"
  SPIN_LEFT = "L"


  def initialize(the_position = [0, 0], the_direction = :N)
    @the_position = the_position
    @the_direction = the_direction
    @command_map = { 
      FORWARD => lambda{forward()}, 
      BACKWARD => lambda{backward()}, 
      LEFT => lambda{left()}, 
      RIGHT => lambda{right()},
      SPIN_LEFT => lambda{spin_left()}
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
    result = where_are_you if commands.match(/[fbrl]/)
    result = what_are_you_viewing if commands.match(/[LR]/)
    result
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

  def spin_left
    result = @the_direction
    result = @the_direction = :W if what_are_you_bearing == :N
    result = @the_direction = :S if what_are_you_bearing == :W
    result = @the_direction = :E if what_are_you_bearing == :S
    result = @the_direction = :N if what_are_you_bearing == :E
    return result
  end

end