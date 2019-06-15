require 'csv'

path = "/Users/ysim/Documents"

# CSV.open("#{path}/test.csv", "wb") do |csv|
  # csv << ["row", "of", "CSV", "data"]
  # csv << ["another", "row"]
# end

CSV.foreach("#{path}/test.csv") do |row|
  print row
end

puts

arr_of_arrs = CSV.read("#{path}/test.csv")
print arr_of_arrs

puts

CSV.parse("CSV,data,String") do |row|
  print row
end
