# Interpreted Language
# 
# Code translated on the fly. It's not compiled. Errors on the code will appear 
# on execution time instead of  before running the script

class Animal
  attr_accessor :type, :color, :sound

  def initialize(type, color)
    @type  = type 
    @color = color
  end

  def make_sound(sound)
    # Typo error
    puts sounds 
  end
end

dog = Animal.new('mammal', 'white')
dog.make_sound('Bark!')
