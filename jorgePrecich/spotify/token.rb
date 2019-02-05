class Token < Api
  require 'base64'

  def initialize
    @url = 'https://accounts.spotify.com/api/token'
    @method = 'Post'
    @auth = auth
  end
  
  def get
    uri = parse_url
    req = request(uri)
    req["Authorization"] = @auth 
    req = req_data(req)
    res(uri, req)
  end

  private
  def auth
    'Basic ' + Base64.strict_encode64("#{ENV['CLIENT_ID']}:#{ENV['SECRET_API_KEY']}")
  end

  def req_data(req)
    req.set_form_data(
      "grant_type" => "client_credentials"
    )
    req
  end
end

