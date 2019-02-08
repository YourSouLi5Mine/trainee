module Writer
  require 'csv'

  def write(data)
    CSV.open("/Users/ysim/code/trainee/jorgePrecich/food/csv/food.csv", "wb") do |csv|
      data.length.times do |index|
        csv << data[index]
      end
    end
  end
end


