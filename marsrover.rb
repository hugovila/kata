
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
  end


  def where_are_you
    @the_position
  end

  def what_are_you_viewing
    @the_direction
  end

  def move(commands)
    commands.each_char do |command|
      @the_position[POSITION_Y] += SPEED if command == FORWARD
      @the_position[POSITION_Y] -= SPEED if command == BACKWARD
      @the_position[POSITION_X] -= SPEED if command == LEFT
      @the_position[POSITION_X] += SPEED if command == RIGHT
    end

    @the_position
  end

end