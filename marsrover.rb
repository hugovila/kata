
class MarsRover

  def initialize(the_position, the_direction)
    @the_position = the_position
    @the_direction = the_direction
  end

  def where_are_you
    @the_position
  end

  def what_is_you_bearing
    @the_direction
  end

end