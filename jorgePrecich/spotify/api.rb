class Api
  require 'net/http'
  require 'uri'
  require 'json'
  require 'pry'
  
  def initialize(token)
    @url = 'https://api.spotify.com/v1' 
    @method = 'Get'
    @auth = auth(token)
  end

  def get(slug = '')
    uri = parse_url(slug)
    req = request(uri)
    req["Authorization"] = @auth 
    res(uri, req)
  end

  private
  def parse_url(slug = '')
    URI.parse(@url + slug)
  end

  def request(uri)
    Object.const_get("Net::HTTP::#{@method}").new(uri)
  end

  def auth(token)
    "#{token["token_type"]} #{token["access_token"]}"
  end

  def req_options(uri)
    req_options = {
      use_ssl: uri.scheme == "https"
    }
  end

  def res(uri, req)
    res = Net::HTTP.start(uri.hostname, uri.port, req_options(uri)) do |http|
      http.request(req)
    end
    JSON.parse(res.body)
  end
end

