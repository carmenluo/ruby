# puts "Hello, what's your name?";
# name = gets.chomp
# puts "Welcome to \"Ruby land\", #{name}. Hope you enjoy your stay (and never leave!)"
# puts 'I "said" do # not touch this.'
# puts "I will now count my chickens:"
# puts "Hens #{25 + 30 /6}"
# puts "Roosters #{100 - 25 * 3 % 4}"
# puts "Now I will count the eggs:"
# puts 20/3
# Variables
# cars = 100
# space_in_a_car = "4.0"
# puts "There are #{cars} cars available."
# puts "There are only #{space_in_a_car.to_i/2} in each car."

#ex5
# name ='Zed A. Shaw'
# age = 35
# height = 74
# weight = 180
# eyes = 'Blue'
# teech = 'White'
# hair = 'Brown'

# puts "Let's talk about #{name}"
# puts "He's #{height} inches tall, that is #{(height/30.0).round(2)} cms"
# puts "He's #{weight} pounds heavy"
# puts "Actually that's not too heavy"
# puts "He's got #{eyes} eyes and #{hair} hair"
# puts "His teeth are usually #{teech} depending on the coffee"

# puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."

# w = "This is the left side of..."
# e = "a string with a right side."

# puts w + e

# ex11
# print "how old are you"
# age = gets
# print "how tall are you "
# height =gets.chomp
# print "how much do you weight\n"
# weight = gets.chomp

# puts "so, you're #{age} old, #{height} tall and #{weight} heavy"

#ex12
# print "Give me a number: "
# number = gets.chomp.to_i

# bigger = number * 100
# puts "A bigger number is #{bigger}"


# first, second, third = ARGV

# puts "Your first fav color is: #{first}"
# puts "Your second fav color is: #{second}"
# puts "Your third fav color is: #{third}"

# puts "what is your least fav color?"
# least_fav_color = $stdin.gets.chomp

# puts "ok, i get it, you don't like #{least_fav_color} ?"

#ex18
# def print_two(*args)
#   arg1, arg2 = args
#   puts "arg1:#{arg1}, arg2: #{arg2}"
# end

# def print_two_again(arg1, arg2)
#   puts "arg1: #{arg1}, arg2: #{arg2}"
# end

# print_two("zen","tow", "third")

#ex21
# def add(a, b)
#   puts "Adding #{a} + #{b}"
#   return a+b
# end

# def multiply(a, b)
#   puts "Multiplying #{a} * #{b}"
#   return a * b 
# end

# age = add(10, 20)
# height = multiply(20, 2)
# puts "age: #{age} ,height #{height}"

# puts "which door do you want to take"
# print "> "
# door = $stdin.gets
# if (door.to_i == 1) 
#   puts "sorry you are lost"
# else puts "you beat it"
# end

# #ex32
# change = [1, 'pennies', 2, 'dimes', 3, 'quaters']

# for item in change
#   puts "this is change #{item}"
# end

# change.each do |item|
#   puts "another way to put #{item}"
# end


# change.each {|item| puts "third way for #{item}"}

# elements = []
# change.each do |i|
#   puts "adding #{i} to the list"
#   elements.push(i)
# end
# i = 0
# numbers = []
# # while i < 6 
# #   puts "At the top i is #{i}"
# #   numbers.push(i)
# #   i += 1
# # end
# (0..6).each do |i|
#   puts "At the top i is #{i}"
#   numbers.push(i)
#   i += 1
# end
# numbers.each {|item| puts item}
# puts "this is the number i am asking for : #{numbers[0]}"

# #ex35
# def gold_room
#   puts "this room is full of gold. How much do you take?"

#   print "> "
#   choice = $stdin.gets.chomp
#   if choice.include?("0") || choice.include?("1")
#     how_much = choice.to_i
#   else
#     puts "man, learn to type a number"
#   end
# end

# gold_room

# class Person 
#   def initialize( name ) 
#        @name = name
#   end

#   def do_with_name 
#       yield( @name ) 
#   end
# end
# person = Person.new("Oscar")

# person.do_with_name do |name|
#   puts "Hey, his name is #{name}"
# end

# person.do_with_name do |name|
#   puts "#{name.reverse}"
# end

# def foo(x)
#   puts "call from foo and params #{x}"
#   yield"You want this!!" if block_given?
# end

# foo(10)
# foo(123) do |name|
#   puts "are you going to give me something? #{name}"
# end