require          'active_support'
require_relative 'hash'

path = File.expand_path File.dirname(__FILE__)

autoload :Token, "#{path}/token"
autoload :Client, "#{path}/client"

puts 'Welcome to the Spotify Api Client'
puts '1.- Create a token -> token = Token.new.token'
puts '2.- Create a client -> client = Client.new(token)'
puts '3.- Get info -> client.method("id").pretty'
puts 'Possible methods to get info:'
puts 'album, album_tracks, artist, artist_albums, artist_top, track, analysis'
puts '4.- Search method -> client.search("search", "type").pretty'
puts 'Possible types:'
puts 'album, artist, playlist, track'

