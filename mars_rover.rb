require './position'

class MarsRover

  attr_reader :position, :facing

  def initialize(position, facing)
    @position = position
    @facing   = facing
  end

  def execute(commands)
    parsed_commands = commands.split(//)
    parsed_commands.each do |command| 
      move_forward  if command == "f"
      move_backward if command == "b"
      move_left     if command == "l"
      move_right    if command == "r"
    end
  end

  def move_forward
     @position.y += 1
  end

  def move_backward
     @position.y -= 1
  end

  def move_left
     @position.x -= 1
  end

  def move_right
     @position.x += 1
  end

end