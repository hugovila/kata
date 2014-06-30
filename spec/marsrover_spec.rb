
require './marsrover'

RSpec.describe MarsRover do 
  it "should return its own position" do
    expect(MarsRover.new([2, 4], :N).position()).to eq([2, 4])
  end
  it "should return its own direction" do
  	expect(MarsRover.new([2, 4], :E).direction).to eq(:E)
  end
end