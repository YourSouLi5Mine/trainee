require          'base64'
require_relative 'Api'

class Token
  print "Please load 🤞 ..."
  puts "#{self} just loaded!"

  include Api

  def initialize
    @url = 'https://accounts.spotify.com/api/token'
    @method = 'Post'
    @auth = 'Basic ' + Base64.strict_encode64("#{ENV['CLIENT_ID']}:#{ENV['SECRET_API_KEY']}")
  end
  
  def token 
    get(parse_url)
  end

  private
  def get(uri)
    req = request(uri)
    req["Authorization"] = @auth 
    req.set_form_data(
      "grant_type" => "client_credentials"
    )
    res(uri, req)
  end
end

