
class SpinLeft #< MarsRover

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
    #@array_direction[normalize_the_direction]
  end

  private

  def normalize_the_direction
    @the_machine_direction % 4
  end

end