require 'snake_camel'

if ARGV.length < 2
  puts "You need to write at least 2 values -> ClassName, Attribute"
else
  class_name = ARGV.shift().camelcase
  attributes = ARGV.map! { |x| x.snakecase.to_sym }
  Struct.new(class_name, *attributes)
  puts "You just created a #{class_name} class"
  puts "With #{attributes} attributes"
  puts "You are going to assign #{attributes.length} attributes"

  assignments = []
  begin
    print("#{assignments.length+1}> ")
    assignments.push(STDIN.gets.chomp)
  end while(assignments.length < attributes.length)

  puts Struct::const_get(class_name).new(*assignments)
end

