#Created Paperboy class and added accessors for attributes
class Paperboy

  attr_reader :earnings, :quota, :experience #accesses variables 

  def initialize(name, side)
    @name = name
    @experience = 0
    @quota = 50
    @earnings = 0
    @side = side
  end

  def quota
    return @quota
  end

#delivery method that calculates pay based on range of house numbers
    def delivery(start_address, end_address)
    even_total = 0
    odd_total = 0
    house_total = ((end_address - start_address) / 2).floor

      @experience = house_total

      if house_total <= @quota
        @earnings = @experience * (0.25)
        @earnings -= 2 if house_total < @quota
      elsif house_total > @quota
        @earnings = (@experience * 0.25) + ((@experience - @quota) * 0.25)
      end

      # end
    end

#report method puts earnings based on quota
  def report
    puts "I'm #{@name}, I've delivered: #{@experience} papers"
    puts "Based on this paper route, I've earned: #{@earnings} "
  end

end

#Created an instance variable of the Class Paperboy
david = Paperboy.new("David", "even")

david.quota # => 50
david.delivery(100, 220) # => 17.5
david.earnings #=> 17.5
david.report # => "I'm David, I've delivered 60 papers and I've earned $17.50 so far!"

david.quota # => 80
david.delivery(1, 150) # => 16.75
david.earnings #=> 34.25
david.report # => "I'm David, I've been delivered 135 papers and I've earned $34.25 so far!"
