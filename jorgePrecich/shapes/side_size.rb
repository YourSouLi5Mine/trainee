module SideSize
  require 'pry'

  def size(sides = 1)
    sides.times do |index|
      puts "Write #{index} side"
      @all_sides << gets
    end
    puts @all_sides
  end
end
