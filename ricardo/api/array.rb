class Array
  def pretty
    JSON.pretty_generate(self)
  end
end
