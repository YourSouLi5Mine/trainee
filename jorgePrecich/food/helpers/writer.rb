module Writer
  puts 'Writer loaded!'

  require 'csv'

  def write(data, path)
    if data[0].kind_of?(Hash) 
      config = { 
        write_headers: true, 
        headers: data[0].keys 
      }
    else 
      config = {
        write_headers: false
      }
    end

    CSV.open(path, "wb", config) do |csv|
      data.length.times do |index|
        values = data[index].kind_of?(Array) ? data[index] : data[index].values
        csv << values
      end
    end
  end
end


