class Dog
  attr_accessor :age, :breed
  def initialize(age, breed)
    @age = age
    @breed = breed
  end

  def age()
    puts @age
  end

  def breed()
    puts @breed
  end
end

my_dog = Dog.new(10, 'puddle')
my_dog.age
my_dog.breed
