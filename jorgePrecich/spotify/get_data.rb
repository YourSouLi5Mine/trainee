class ApiConsumer
  require 'net/http'
  require 'json'
  require 'uri'
  require 'pry'

  def initialize(access_token, token_type)
    @url = 'https://api.spotify.com/v1'
    @access_token = access_token
    @token_type = token_type
  end

  def artist(artist)
    get_uri("/artists/#{artist}")
  end
  
  def request(uri)
    request = Net::HTTP::Get.new(uri)
    request['Authorization'] = "#{@token_type} #{@access_token}" 
    # request["Authorization"] = "Bearer BQAPClZH7RRFHvnfVVH4mUhqAYb6c1PV6vZjEPp40WiCrnpEeWFTfqLmY-W1Xpz9A4SzVSOjyeqQoUnW_EA"

    request_options = {
      use_ssl: uri.scheme == "https"
    }

    response = Net::HTTP.start(uri.hostname, uri.port, request_options) do |http|
      http.request(request)
    end
    response.body
  end

  private
  def get_uri(slug)
    uri = URI.parse(@url + slug)
  end
end
