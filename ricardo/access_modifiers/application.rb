class Application
  print "#{self} load Done. ✅ \n"
  require 'snake_camel'
  def self.all
    @@records[self.to_s]
  end

  def self.first
    @@records[self.to_s].first
  end

  def self.last
    @@records[self.to_s].last
  end

  private

  def setup
    @@records = {} unless defined? @@records
    @@ids = {} unless defined? @@ids

    if @@ids.map(&:first).include?(self.class.name)
      @@ids[self.class.name] += 1
    else
      @@ids[self.class.name] = 1
    end

    if @@records.map(&:first).include?(self.class.name)
      @@records[self.class.name].push(self)
    else
      @@records[self.class.name] = [self]
    end

    @id = @@ids[self.class.name]
  end

  def has_many(name, model)
    self.class.define_method(name) do
       model.all.select { |m| m.send("#{self.class.name.snakecase}_id") == @id }
    end
  end

  def belongs_to(name, model, target_id)
    self.class.define_method(name) do
      model.all.find { |m| m.id == target_id }
    end
  end
end
