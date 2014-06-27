
require './mars_rover'

RSpec.describe MarsRover do 

  it "return its position" do
  	mr = MarsRover.new([5,8])
    expect(mr.position()).to eq([5,8])
 end
	
end