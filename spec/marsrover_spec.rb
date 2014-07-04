
require './marsrover'

RSpec.describe MarsRover do

  it "take position and direction" do
    the_position = [0, 0]
    the_direction = :N
    mr = MarsRover.new()
    expect(mr.where_are_you()).to eq(the_position)
    expect(mr.what_are_you_viewing()).to eq(the_direction)


  end
  describe "move when passing commands and" do
    it "should move forward for f commands" do
      rover = MarsRover.new()
      commands = "f"
      expect(rover.move(commands)).to eq([0, 1])
    end
    
  end
  
end