
require './marsrover'

RSpec.describe MarsRover do 

  it "should return its own position" do
    expect(MarsRover.new([4,8], :N).position).to eq([4,8]) 
  end
	it "should return its own direction" do
    expect(MarsRover.new([4,8], :N).direction).to eq(:N) 
  end

  it "should move forward for 'f' commands" do
    expect(MarsRover.new([4,8], :N).move("ff")).to eq([4, 10])
    expect(MarsRover.new([4,8], :N).move("fff")).to eq([4, 11])
  end
  

end