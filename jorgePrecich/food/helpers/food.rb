path = File.expand_path File.dirname(__FILE__)

autoload :RegistryCSV, "#{path}/nutrition_data"

class Food
  puts 'Food loaded!'

  include NutritionData
end
