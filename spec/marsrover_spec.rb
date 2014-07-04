
require './marsrover'

describe MarsRover do

  let(:rover) {  MarsRover.new }

  it "take position and direction" do
    the_position = [0, 0]
    the_direction = :N
    expect(rover.where_are_you()).to eq(the_position)
    expect(rover.what_are_you_viewing()).to eq(the_direction)
  end

  describe "move when passing commands" do
    it "move forward for f commands" do
      commands = "f"
      new_commands = "ffff"
      new_position = [0, 1]
      another_new_position = [0, 5]
      expect(rover.move(commands)).to eq(new_position)
      expect(rover.move(new_commands)).to eq(another_new_position)
    end
  end
  
end