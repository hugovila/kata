
require './marsrover'

RSpec.describe MarsRover do

  it "take position and direction" do
    the_position = [0, 0]
    mr = MarsRover.new(the_position)
    expect(mr.position()).to eq(the_position)
  end
  
end