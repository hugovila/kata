
class MarsRover

  POSITION_X = 0
  POSITION_Y = 1
  SPEED      = 1

  FORWARD = "f"
  BACKWARD = "b"
  LEFT = "l"
  RIGHT = "r"

  FUNCTION_MAP = { FORWARD => lambda{forward()}, BACKWARD => lambda{backward()}, LEFT => lambda{left()}, RIGHT => lambda{right()} }

  def initialize(the_position = [0, 0], the_direction = :N)
    @the_position = the_position
    @the_direction = the_direction
  end


  def where_are_you
    @the_position
  end

  def what_are_you_viewing
    @the_direction
  end

  def move(commands)
    commands.each_char do |command|
      FUNCTION_MAP[command].call
  end

    @the_position
  end

  # private

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