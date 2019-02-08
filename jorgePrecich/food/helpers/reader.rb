module Reader
  require 'csv'

  def read(&block)
    CSV.foreach("/Users/ysim/code/trainee/jorgePrecich/food/csv/food.csv") do |row|
      binding.pry
      block.call(row)
    end
    # generate(
  end

  # def generate
end
