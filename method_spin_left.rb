
WEST = :W
EAST = :E
NORTH = :N
SOUTH = :S

@compass = [:N, :W, :S, :E]









@hash_directions = { :N => 0, :W => 1, :S => 2, :E => 3 }

@the_direction = @hash_directions[:N]


@direction = [:N, :W, :S, :E]



def spin_left
  @the_direction += 1
  @direction[normalize_the_direction]
end

def normalize_the_direction
  result = @the_direction % 4
end






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



Estructura de datos

   - anillos
   - colas


