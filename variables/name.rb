#Exercise 1, Modified for Exercise 4
puts "Please enter your first name: "
first_name = gets.chomp
puts "Please enter you last name:"
last_name = gets.chomp
puts "Hello there, " + first_name + " " + last_name
#Exercise 3, also modified for Exercise 4
10.times {puts first_name + " " + last_name}

#Exercise 5
=begin
 In the first example X prints out as 3.
 In the second example, there is an error for no local variable/method
 There issue with the second example is that X is defined in a block
 The inner scope of the block does not allow access once outside the block.
=end
