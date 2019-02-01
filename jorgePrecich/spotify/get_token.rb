class GetToken
  require 'net/http'
  require 'base64'
  require 'uri'

  def initialize
    @uri = URI.parse('https://accounts.spotify.com/api/token')
  end
  
  def request_token
    request = Net::HTTP::Post.new(@uri)
    request['Authorization'] = 'Basic ' + encode_credentials
    request.set_form_data(
      'grant_type' => 'client_credentials',
    )
    request_options = {
     use_ssl: @uri.scheme == "https",
    }

    response = Net::HTTP.start(@uri.hostname, @uri.port, request_options) do |http|
      http.request(request)
    end
    token_response = JSON.parse(response.body)
    [token_response['access_token'], token_response['token_type']]
  end

   
  private
  def encode_credentials
    Base64.strict_encode64("#{ENV['CLIENT_ID']}:#{ENV['SECRET_API_KEY']}")
  end
end

