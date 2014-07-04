
class MarsRover

  @POSITION_Y = 1
  @SPEED      = 1

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

    @the_position[1] += 1
    @the_position
  end

end