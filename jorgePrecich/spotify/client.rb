require_relative 'Api'

class Client 
  print "Please load 🤞 ..."
  puts "#{self} just loaded!"

  include Api

  def initialize(token)
    @url = 'https://api.spotify.com/v1' 
    @method = 'Get'
    @auth = "#{token["token_type"]} #{token["access_token"]}"
  end

  def album(id)
    get(parse_url("/albums/#{id}"))
  end

  def album_tracks(id)
    get(parse_url("/albums/#{id}/tracks"))
  end

  def artist(id)
    get(parse_url("/artists/#{id}"))
  end

  def artist_albums(id)
    get(parse_url("/artists/#{id}/albums"))
  end

  def artist_top(id)
    get(parse_url("/artists/#{id}/top-tracks"))
  end

  def track(id)
    get(parse_url("/tracks/#{id}"))
  end

  def analysis(id)
    get(parse_url("/audio-analysis/#{id}"))
  end

  def search(search, type)
    uri = parse_url("/search")
    uri.query = "q=#{search}&type=#{type}"
    get(uri) 
  end

  private
  def get(uri)
    req = request(uri)
    req["Authorization"] = @auth 
    res(uri, req)
  end
end

