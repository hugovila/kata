
require './marsrover'

RSpec.describe MarsRover do 
  it "should return its own position" do
    expect(MarsRover.new([2, 4], :N).position()).to eq([2, 4])
  end
end