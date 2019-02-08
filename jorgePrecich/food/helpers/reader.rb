module Reader
  puts 'Reader loaded!'

  require 'csv'

  def read(path, &block)
    CSV.foreach(path) do |row|
      next if row[0] == 'name' 
      block.call(row)
    end
  end
end
