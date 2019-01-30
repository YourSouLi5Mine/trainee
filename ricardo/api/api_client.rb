class ApiClient
  require 'net/http'
  require 'json'

  def initialize(url)
    @url = url
  end

  def user
    get('/user')
  end

  def home
    get('/')
  end

  def uri(url)
    uri =URI(url)
    #uri.query = 'access_token=eb2be1ee580cffdefccf9eb8a5996c584df3d6ab'
    uri
  end

  def get(slug)
    url = uri(@url + slug)
    response = JSON.parse(Net::HTTP.get(url))
    if response.is_a?(Hash)
      response.to_o
    else
      response
    end
  end
end
