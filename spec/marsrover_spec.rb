
require './marsrover'

RSpec.describe MarsRover do

  it "take position and direction" do
    the_position = [0, 0]
    mr = MarsRover.new(the_position, :N)
    expect(mr.where_are_you()).to eq(the_position)
    expect(mr.what_is_you_bearing()).to eq(:N)
  end
  
end