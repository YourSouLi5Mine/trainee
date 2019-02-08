path = File.expand_path './jorgePrecich/food/helpers'

autoload :Food, "#{path}/food"

class Meat < Food
  puts 'Meat loaded!'

  attr_reader :id
  attr_accessor :name, :proteins, :carbs
  
  @@counter = 0

  def initialize(name, proteins, carbs)
    @@counter += 1
    @id = @@counter
    @name = name
    @proteins = proteins
    @carbs = carbs
  end

  def change_proteins
    @proteins = change_molecule(@proteins)
  end

  def change_carbs
    @carbs = change_molecule(@carbs)
  end
end
