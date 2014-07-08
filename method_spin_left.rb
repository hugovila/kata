
WEST = :W
EAST = :E
NORTH = :N
SOUTH = :S

@the_direction = :N

def spin_left
  @the_direction
  west if @the_direction == :N
  south if @the_direction == :W
  east if @the_direction == :S
  north if @the_direction == :E
  return @the_direction
end

def west
  @the_direction = :W
end

def south
  @the_direction = :S
end

def east
  @the_direction = :E
end

def north
  @the_direction = :N
end



