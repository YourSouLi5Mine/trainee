puts 'This is the registration system.'

filename = nil
ARGV.each do |argument|
  filename = argument
end

if filename && File.file?(filename)
  puts 'The file already exists, please select another name!'
else
  puts "Your registers will be in #{filename}.txt"

  registers = []
  begin
    print('registry> ')
    registers.push(STDIN.gets)
    print('Do you want to add another registry? (y/N)')
  end while(['y', 'Y'].include?(STDIN.gets[0]))

  File.open("#{filename}.txt", 'a') do |f|
      registers.each do |registry|
      f.write(registry)
    end
  end
end

