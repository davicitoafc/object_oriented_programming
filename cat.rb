class Cat

  def initialize(name, preferred_foods, meal_time)
    @name: name
    @preferred: preferred_foods
    @meal_time: meal_time
  end

  def eats_at
    if meal_time < 12
      puts "#{meal_time} AM"
  elsif meal_time > 12
    puts "#{meal_time} PM"
  end

end

cat = Cat.new('fluffy', 'fish', 2)
cat2 = Cat.new('snookums', 'birds', 4)

eats_at(cat)
