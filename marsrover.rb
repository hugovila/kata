
class MarsRover


  POSITION_X = 0
  POSITION_Y = 1
  SPEED      = 1

  FORWARD = "f"
  BACKWARD = "b"
  LEFT = "l"
  RIGHT = "r"
  SPIN_LEFT = "L"

  COMMAND_MAP = { FORWARD => :forward, BACKWARD => :backward, LEFT => :left, RIGHT => :right, SPIN_LEFT => :spin_left }


  def initialize(the_position = [0, 0], the_direction = :N)
    @the_position = the_position
    @the_direction = the_direction
    @spinner = Spinner.new
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
      send(COMMAND_MAP[command])
    end
    result = where_are_you if commands.match(/[fbrl]/)
    result = @spinner.what_are_you_viewing if commands.match(/[LR]/)
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

end

class Spinner

  WEST = :W
  EAST = :E
  NORTH = :N
  SOUTH = :S

  def initialize(the_direction = :N)

    @the_direction = the_direction

    @array_direction = [NORTH, WEST, SOUTH, EAST]

    @hash_directions = { NORTH => 0, WEST => 1, SOUTH => 2, EAST => 3 }

    @the_machine_direction = @hash_directions[@the_direction]

  end

  def what_are_you_viewing
    @the_direction
  end

  def spin_left
    @the_machine_direction += 1
    @the_direction = @array_direction[normalize_the_direction]
  end

  private

  def normalize_the_direction
    @the_machine_direction % 4
  end

end