class Paperboy
  attr_accessor :name
  attr_reader :earnings

  def initialize
    @name = name
    @quota = 50
    @earnings = []
  end

#delivery method that calculates pay based on range of house numbers
  def delivery(start_address, end_address)
    per_paper = 0.25
  end

#qouta method retrieves number, adds it to qouta array, and puts out qouta for the day
  def qouta
    puts "Enter qouta for the day: "
    qouta = 50 + (gets.chomp.to_i)
    @qouta = qouta
    puts "#{@name}'s quota is: #{@qouta}"
  end

#report method puts earnings based on qouta 
  def report
    puts "I'm #{@name}, I've delivered: #{@qouta} papers"
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
