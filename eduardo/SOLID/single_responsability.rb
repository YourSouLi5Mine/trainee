require 'net/http'
require 'json'
require_relative 'blog_service_config'
require_relative 'request'
require_relative 'response'


class BlogService
  def posts
    url = "#{config.base_url}"
    puts "[BlogService] GET #{url}"
    posts = request.send_request(url)
    parse_response.process(posts, Post, mapping)
  end

  private

  attr_reader :env

  def config
    @config ||= BlogServiceConfig.new
  end

  def request
    @request ||= Request.new
  end

  def parse_response
    @parse_response ||= Response.new
  end

  def mapping
    { 'id' => :id, 'userId' => :user_id, 'body' => :body, 'title' => :title }
  end
end

class Post
  attr_reader :id, :user_id, :body, :title

  def initialize(id:, user_id:, body:, title:)
    @id = id
    @user_id = user_id
    @body = body
    @title = title
  end
end

blog_service = BlogService.new
puts blog_service.posts