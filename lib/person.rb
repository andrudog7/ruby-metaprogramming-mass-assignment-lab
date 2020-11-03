class Person
  attr_accessor 

  def initialize(attributes)
    attributes.each{|key, value|
      self.class.attr_accessor(key)
      self.send(("#{key}="), value)}
  end
end