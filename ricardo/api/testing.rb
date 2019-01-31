# Load all classes
path = File.expand_path File.dirname(__FILE__)
Dir.entries(path).each do |file|
  if file =~ /^[a-z_]+.rb/
    print "Loading #{file}..."
    require_relative file
    print " Done. ✅ \n"
  end
end

api = ApiClient.new('https://api.github.com')

