module Api
  require 'net/http'
  require 'uri'
  require 'json'
  require 'pry'

  def parse_url(slug = '')
    URI.parse(@url + slug)
  end

  def request(uri)
    Object.const_get("Net::HTTP::#{@method}").new(uri)
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

