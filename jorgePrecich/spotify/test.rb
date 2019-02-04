require 'pry'

path = File.expand_path File.dirname(__FILE__)
Dir.entries(path).each do |file|
  next if file == 'test.rb'
  if file =~ /^[a-z_]+.rb/
    print "Just found the #{file} file."
    require_relative file
    puts " Aaaaand the file it's loaded! 🗳"
  end
end

