# module is for polymorphism
module Study
  def study
  puts "I am a module that is usable"
  end
end
class NewClass
  include Study
end
my_obj = NewClass.new
puts my_obj.study
