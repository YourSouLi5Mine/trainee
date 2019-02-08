path = File.expand_path './jorgePrecich/food'

autoload :Writer, "#{path}/helpers/writer"
autoload :Reader, "#{path}/helpers/reader"
autoload :Fruit, "#{path}/models/fruit"
autoload :Meat, "#{path}/models/meat"

class RegistryCSV
  puts 'RegistryCSV loaded!' 
  
  include Writer
  include Reader
  
  attr_accessor :arr_data, :hash_data, :path
  
  @@path = File.expand_path './jorgePrecich/food/csv' 

  def initialize
    @arr_data = [['apple', 26, 17], ['orange', 32, 19], ['banana', 50, 29], ['raspberry', 28, 10], ['grape', 20, 18], ['avocado', 19, 21], ['peach', 12, 41], ['watermelon', 19, 12], ['kiwi', 31, 42], ['guava', 19, 12]]
    @hash_data = [{ name: 'apple', proteins: 26, carbs: 17}, { name: 'orange', proteins: 32, carbs: 19 }]
  end

  def arr_writer
    write(@arr_data, "#{@@path}/arr.csv")
    puts 'Created arr.csv!'
  end
  
  def arr_reader
    read("#{@@path}/arr.csv") do |data| 
      name = data.shift
      data.map! { |data| data.to_i }
      $fruits << Fruit.new(name, data[0], data[1])
    end
    puts 'Read arr.csv and made registries!'
  end

  def hash_writer
    write(@hash_data, "#{@@path}/hash.csv")
    puts 'Created hash.csv!'
  end

  def hash_reader
    read("#{@@path}/hash.csv") do |data|
      name = data.shift
      data.map! { |data| data.to_i }
      $fruits << Fruit.new(name, data[0], data[1])
    end
    puts 'Read hash.csv and made registries!'
  end
end
