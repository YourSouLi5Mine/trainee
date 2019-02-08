path = File.expand_path File.dirname(__FILE__)

autoload :NutritionData, "#{path}/nutrition_data"

class Food
  puts 'Food loaded!'

  include NutritionData
end
