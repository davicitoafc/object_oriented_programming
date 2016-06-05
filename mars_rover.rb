class Rover

  attr_accessor :x, :y, :direction

  def initialize(coordinates)
    @x = coordinates[0]
    @y = coordinates[1]
    @direction = coordinates[2]
  end

  def move
    if @direction == "N"
      @y = @y.to_i + 1
    elsif @direction == "S"
      @y = @y.to_i - 1
    elsif @direction == "W"
      @x = @x.to_i - 1
    elsif @direction == "E"
      @x = @x.to_i + 1
    end
  end

  def turn(turn_direction)
      if turn_direction == "L" && @direction == "N"
        @direction = "W"
      elsif turn_direction == "R" && @direction == "N"
        @direction = "E"
      elsif turn_direction == "R" && @direction == "S"
        @direction = "W"
      elsif turn_direction == "L" && @direction == "S"
        @direction = "E"
      elsif turn_direction == "L" && @direction == "E"
        @direction = "N"
      elsif turn_direction == "R" && @direction == "E"
        @direction = "S"
      elsif turn_direction == "L" && @direction == "W"
        @direction = "N"
      elsif turn_direction == "L" && @direction == "W"
        @direction = "N"
    end
  end
end
