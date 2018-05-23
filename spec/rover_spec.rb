require "./app/rover"
require "./app/controller"
require "./app/view"

describe Controller do


  it "Rover should move when receiving valid inputs" do
   pt = Planet.new(8, 8)
   rv = Rover.new(pt, "N", 0, 0)
   ct = Controller.new(rv, pt)
   input = "FFRFFFR"
   ct.action(input)
   expect(rv.check_input_valid input).to be true
   expect(rv.direction).to eq "S"
   expect(rv.x).to eq(2)
   expect(rv.y).to eq(3)
 end

 it "Rover should not move when receiving invalid inputs" do
   pt = Planet.new(8, 8)
   rv = Rover.new(pt, "N", 0, 0)
   ct = Controller.new(rv, pt)
   input = "FFRFFFRW"
   ct.action(input)
   expect(rv.check_input_valid input).to be false
   expect(rv.direction).to eq("N")
   expect(rv.x).to eq(0)
   expect(rv.y).to eq(0)
 end

 it "Rover should move around the planet when reaching its limit" do
   pt = Planet.new(8, 8)
   rv = Rover.new(pt, "N", 0, 0)
   ct = Controller.new(rv, pt)
   input = "FFFFFFFFFFRBBB"
   ct.action(input)
   expect(rv.direction).to eq("E")
   expect(rv.x).to eq(1)
   expect(rv.y).to eq(6)
 end

 it "Rover should stop moving when there is an obstacle" do
   pt = Planet.new(8, 8)
   pt.put_obstacle(1, 2)
   rv = Rover.new(pt, "N", 0, 0)
   ct = Controller.new(rv, pt)
   input = "FRFFFRFFFRFF"
   ct.action(input)
   expect(rv.direction).to eq("E")
   expect(rv.x).to eq(1)
   expect(rv.y).to eq(1)
 end
end
