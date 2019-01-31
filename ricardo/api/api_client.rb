class ApiClient
  require 'net/http'
  require 'json'

  def self.get(path)
    uri = URI(path)
    uri.query = 'access_token=de804c36b9c742f571cbfafba897d4d41fdce8ee'
    response = JSON.parse(Net::HTTP.get(uri))
    if response.is_a?(Hash)
      response.to_o
    else
      response
    end
  end

  def initialize(url = 'https://api.github.com')
    @url = url
  end

  def user(username = nil)
    username.nil? ? userfy(get('/user')) : userfy(get("/users/#{username}"))
  end

  def userfy(user)
    user.define_singleton_method('card_info') do
      puts "\n\n\t\tName: #{user.name}"
      puts "\t\tUsername: #{user.login}"
      puts "\t\tCompany: #{user.company}"
      puts "\t\tAbout: #{user.bio}"
      puts "\t\tLives in: #{user.location}"
      puts "\t\tLink: #{user.url}"
      puts "\t\tBlog: #{user.blog}"
      puts "\t\tMember since: #{user.created_at[0,4]}"
      puts "\n\t\tStats\n"
      puts "\t\tFollowers: #{user.followers}"
      puts "\t\tFollowing: #{user.following}"
      puts "\t\tPublic Repos: #{user.public_repos}"
      puts "\t\tPublic Gists: #{user.public_gists}\n"
    end

    response = get("/users/#{user.login}/repos")
    user.define_singleton_method('repos') { response }

    user.define_singleton_method('repos_only') do |*args|
      response.map do |repo|
        args.map { |arg| repo[arg] }
      end
    end

    user
  end

  def gists
    get('/gists/public')
  end

  def notifications
    get('/notifications')
  end

  def home
    get('/')
  end

  def uri(url)
    uri = URI(url)
    uri.query = 'access_token=de804c36b9c742f571cbfafba897d4d41fdce8ee'
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
