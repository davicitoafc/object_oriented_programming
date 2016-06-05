require_relative "mars_rover"

class Control

  attr_reader :rovers

  def initialize
    @rovers = []
  end

  def clean_input(input)
    new_input = input.split(',')
  end

  def add_rover(cordinates)
    rover = Rover.new(clean_input(cordinates))
    @rovers.push(rover)
  end

   def move_input(movement)
     movement.each_char do |chr|
       if chr == "M"
         @rovers[0].move
       elsif chr == "L" || chr == "R"
         @rovers[0].turn(chr)
      end
    end
  end
end



#Creates instance of Class Control
mission_control = Control.new

puts "======================="

mission_control.add_rover('12,5,N')
mission_control.move_input("LM")

puts mission_control.rovers[0].x
puts mission_control.rovers[0].y
puts mission_control.rovers[0].direction

puts "======================="

mission_control.add_rover('9,4,S')
mission_control.move_input("RM")

puts mission_control.rovers[0].x
puts mission_control.rovers[0].y
puts mission_control.rovers[0].direction
