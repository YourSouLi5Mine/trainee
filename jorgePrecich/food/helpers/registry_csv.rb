path = File.expand_path './jorgePrecich/food'

autoload :Writer, "#{path}/helpers/writer"
autoload :Reader, "#{path}/helpers/reader"
autoload :Fruit, "#{path}/models/fruit"
autoload :Meat, "#{path}/models/meat"

class Registry
  extend Writer
  include Reader
  
  attr_accessor :arr_data

  @arr_data = [['apple', 26, 17], ['orange', 32, 19], ['banana', 50, 29], ['raspberry', 28, 10], ['grape', 20, 18], ['avocado', 19, 21], ['peach', 12, 41], ['watermelon', 19, 12], ['kiwi', 31, 42], ['guava', 19, 12]]

  write(@arr_data)

  def register
    read do |data| 
      name = data.shift
      data.map! { |data| data.to_i }
      $fruits << Fruit.new(name, data[0], data[1])
      binding.pry
    end
  end
end
