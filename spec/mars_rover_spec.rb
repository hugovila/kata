
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

 it "move forward four times for 'ffff'" do
 	mr = MarsRover.new([5,8], :M)
 	expect(mr.move("ffff")).to eq([9,8])
 end
	
end