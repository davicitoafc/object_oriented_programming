#Created Cat Class
class Cat

  def initialize(name, preferred_foods, meal_time)
    @name = name
    @preferred = preferred_foods
    @meal_time = meal_time
  end

#Created method that states what times each cat eats
  def eats_at
    if @meal_time < 12
      puts "#{@meal_time} AM"
    elsif @meal_time > 12
      puts "#{@meal_time - 12} PM"
    elsif @meal_time == 12
      puts "12 PM"
    elsif @meal_time == 0 || @meal_time == 24
      puts "12 AM"
    end
    puts " "
  end

#Created a method that displays introduction from each cat
  def meow
  puts "My name is #{@name} and I eat tuna at #{@meal_time}"
  puts " "
  end
end

#Created instances of cat class
cat1 = Cat.new('fluffy', 'fish', 12)
cat2 = Cat.new('snookums', 'birds', 16)

#calls eats_at method on cats
cat1.eats_at
cat2.eats_at

#Calls meow method on cats
cat1.meow
cat2.meow
