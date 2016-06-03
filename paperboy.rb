class Paperboy
  attr_accessor :name
  attr_reader :earnings

  def initialize
    @name = name
    @quota = 50
    @earnings = []
  end

  def qouta
    puts "#{@name}'s quota is: #{@qouta}"
  end
end

#Created an instance variable of the Class Paperboy
tommy = Paperboy.new
tommy.name = "Tommy"

#Calling qouta on tommy
tommy.qouta
