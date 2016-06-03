class Paperboy
  attr_accessor :name
  attr_reader :earnings

  def initialize
    @name = name
    @quota = 50
    @earnings = []
  end

  def delivery(start_address, end_address)

  end

  def qouta
    puts "#{@name}'s quota is: #{@qouta}"
  end

  def report
    puts "I'm #{@name}, I've delivered:#{@qouta} papers"
    puts "Based on this paper route, I've earned:"
  end
end

#Created an instance variable of the Class Paperboy
tommy = Paperboy.new
tommy.name = "Tommy"

#Calling qouta on tommy
tommy.qouta

#Calling tommy reports method to report qouta and earnings
tommy.report
