
require './marsrover'

RSpec.describe MarsRover do 
  it "should return its own position" do
    expect(MarsRover.new([4,8], :N).position).to eq([4,8]) 
  end
	it "should return its own direction" do
    expect(MarsRover.new([4,8], :N).direction).to eq(:N) 
  end

end