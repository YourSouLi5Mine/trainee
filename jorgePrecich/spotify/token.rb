class Token < Api
  require 'base64'

  def initialize
    @url = 'https://accounts.spotify.com/api/token'
    @method = 'Post'
    @auth = auth
  end
  
  def get
    uri = get_uri
    req = new_req(uri)
    req["Authorization"] = @auth 
    req = set_form_data(req)
    res(uri, req)
  end

  private
  def get_uri
    super 
  end

  def new_req(uri)
    super
  end
  
  def auth
    'Basic ' + Base64.strict_encode64("#{ENV['CLIENT_ID']}:#{ENV['SECRET_API_KEY']}")
  end

  def set_form_data(req)
    req.set_form_data(
      "grant_type" => "client_credentials"
    )
    req
  end

  def res(req, uri)
    super
  end
end

