# mars_rover.rb

class Mars_rover

  def initialize(x, y, facing)
         @x = x
         @y = y
    @facing = facing
  end

  def my_position
    result = []
    result = [@x, @y]
  end

  def i_look
  	result = @facing
  end

  def i_move(commands)
    commands.each { |command| 
      if command == :f 
      then @y = @y -1
     }
     my_position
  end

end

