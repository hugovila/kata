
require './mars_rover'

RSpec.describe MarsRover do 

  it "return its position" do
  	mr = MarsRover.new([5,8], :M)
    expect(mr.position()).to eq([5,8])
 end

 it "return its facing or direction" do
 	mr = MarsRover.new([5,8], :M)
 	expect(mr.direction()).to eq(:M)
 end
	
end