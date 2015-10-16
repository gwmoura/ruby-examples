class Person
  attr_accessor :name
  def initialize(name)
   self.name = name
  end
end

puts "=======before clas_eval========"
p = Person.new("George")
puts Person.instance_methods(false).to_s

#add a new method
Person.class_eval do
  def say_hello
   "Hello!"
  end
end

puts "===========after class_eval==========="
puts p.say_hello

#override a method and write a new
Person.class_eval do
  def say_hello
   "Hello, my name is #{self.name}!"
  end

  def say_bye
   "Bye!"
  end 
end

puts Person.instance_methods(false).to_s
puts p.say_hello
puts p.say_bye
