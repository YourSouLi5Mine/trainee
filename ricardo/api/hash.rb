class Hash
  def to_o
    methods = []
    self.each do |option|
      methods.push({ name: option.first, action: option.last })

      #if /[a-z_]+_url$/ === option.first
        #methods.push({ name: option.first.gsub('_url', ''), action: ApiClient.get(option.last) })
      #end
    end
    struct = Struct.new("Objectized#{self.object_id}")
    methods.each do |method|
      struct.define_method(method[:name]) { method[:action] }
    end
    struct.define_method('all') { puts JSON.pretty_generate(methods.map { |method| "#{method[:name]} => #{method[:action]}"  }) }
    struct.new
  end
end
