class Paperboy
  attr_accessor :name
  attr_reader :earnings

  def initialize
    @name = name
    @quota = []
    @earnings = []
  end

  def qouta
    puts "Enter qouta for the day: "
    qouta = 50 + (gets.chomp.to_i)
    @qouta = qouta 
    puts "#{@name}'s quota is: #{@qouta}"
  end

  def earnings
  end

  def report
    puts "I'm Tommy, I've delivered #{@qouta} "
  end
end

#Created an instance variable of the Class Paperboy
tommy = Paperboy.new
tommy.name = "Tommy"

#Calling qouta on tommy
tommy.qouta

#Calling tommy on earnings method
