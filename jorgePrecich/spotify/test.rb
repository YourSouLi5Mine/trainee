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

token_response = GetToken.new.request_token
api_consumer = ApiConsumer.new(token_response[0], token_response[1])
uri = api_consumer.artist('3RNrq3jvMZxD9ZyoOZbQOD')
request = api_consumer.request(uri)
puts request

