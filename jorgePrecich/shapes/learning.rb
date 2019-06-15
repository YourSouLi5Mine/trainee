require 'pry'

# class ClassTest 
  # def hello(&block)
    # puts "Hello from class"
    # var = "In Class"
    # puts var
    # block.call(var)
    # binding.pry
    # # puts var
    # # var = yield(var)
    # # puts var
    # puts "Again in class"
  # end
# end
# 
# testing = ClassTest.new
# testing.hello do |var| 
  # puts var 
# end
# testing.hello
# testing.extend(Mod)
# testing.hello
class Test 
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

names = [1,2,3,4,5]

5.times do |index|
  puts Test.new(names[index]).name
  binding.pry
end

