
class MarsRover

  require './spinner'

  POSITION_X = 0
  POSITION_Y = 1
  SPEED      = 1

  FORWARD = "f"
  BACKWARD = "b"
  LEFT = "l"
  RIGHT = "r"
  SPIN_LEFT = "L"
  SPIN_RIGHT = "R"

  COMMAND_MAP = { FORWARD => :forward, BACKWARD => :backward, LEFT => :left, RIGHT => :right, SPIN_LEFT => :spin_left, SPIN_RIGHT => :spin_right }


  def initialize(the_position = [0, 0], the_direction = :N)
    @the_position = the_position
    @spinner = Spinner.new the_direction
  end

  
  def where_are_you
    @the_position
  end

  def what_are_you_viewing
    @spinner.what_are_you_viewing
  end

  def move(commands)
    commands.each_char do |command|
      send(COMMAND_MAP[command])
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
    @spinner.spin_left
  end

  def spin_right
    @spinner.spin_right
  end

end

