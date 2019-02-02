class Consumer
  require 'net/http'
  require 'json'
  require 'pry'

  attr_reader :base_url, :access_token

  def initialize(config)
    @base_url = config[:base_url]
    @access_token = config[:env_access_token] ? ENV[config[:env_access_token]] : config[:access_token]
  end

  def get(slug)
    path = uri(@base_url + slug)
    JSON.parse(Net::HTTP.get(path))
  end

  def access_token?
    !@access_token.nil?
  end

  private

  def uri(url)
    uri = URI(url)
    uri.query = "access_token=#{@access_token}" if access_token?
    uri
  end
end
