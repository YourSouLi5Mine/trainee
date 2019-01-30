class Pet
  attr_reader :name, :age, :race, :color
  attr_writer :name, :age, :race, :color

  def initialize(name, age, race, color)
    @name = name
    @age = age
    @race = race
    @color = color
  end

  def bark
    puts "#{@name}: bark!!"
    self
  end

  def eat
    puts "#{@name} is eating..."
    self
  end
end
