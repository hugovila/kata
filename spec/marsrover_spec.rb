
require './marsrover.rb'

RSpec.describe MarsRover do 
	
  it "should return its own position" do
  	mr = MarsRover.new([2, 4], :N)
    expect(mr.position()).to eq([2, 4])
  end
	
end