class Array
  def pretty
    puts JSON.pretty_generate(self)
    self
  end
end
