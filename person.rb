class Person
  attr_accessor :age
  def initialize(name,age)
    @name = name
    @age = age
  end
  def get_name()
    @name
  end
  def change_age(newAge)
    self.age = newAge
  end
end

p = Person.new("L. Ron", 29)
puts p.get_name
puts p.age
puts p.change_age(30)