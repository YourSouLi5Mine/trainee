path = File.expand_path './jorgePrecich/food/models'

autoload :Fruit, "#{path}/fruit"
autoload :Meat, "#{path}/meat"

class ManualRegistry
  def fruit(name, proteins, carbs)
    $fruits << Fruit.new(name, proteins, carbs)
  end

  def meat(name, proteins, carbs)
    $meats << Meat.new(name, proteins, carbs)
  end
end
