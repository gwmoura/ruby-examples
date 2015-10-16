class Animal
  attr_accessor :name, :legs
end

a = Animal.new

puts "======== before instance_eval ==========" 
puts Animal.instance_methods(false).to_s
#=> [:name, :name=, :legs, :legs=]

Animal.instance_eval do
  def human?
    false
  end
end

puts "========= after instance_eval ========="
puts Animal.instance_methods(false).to_s
#=> [:name, :name=, :legs, :legs=]

puts Animal.human?
#=> false

puts "======== override method ==========="

Animal.instance_eval do
  def human?
    puts self.name
    false
  end
end

puts Animal.human?
#=> Animal
#=> false
puts Animal.respond_to?("human?")
#=> true
puts a.respond_to?("human?")
#=>false
