#Exercise 1
first_name = "Tom"
last_name = "B."
full_name = first_name + " " + last_name
puts full_name

#Exercise 2
#This is my original solution. I slightly misunderstood the prompt but it still works
#I commented it out to avoid slow downs when testing other exercises
=begin
print "Enter a 4-digit number: "
number = gets.to_i
ones = number % 10
puts ones
number /= 10
tens = number % 10
puts tens
number /= 10
hundreds = number % 10
puts hundreds
number /= 10
thousands = number
puts thousands
=end

#After looking at the given solution I realized that I misinterpreted the question
ones = 4839 % 10
tens = 3829 / 10 % 10
hundreds = 4732 / 100 % 10
thousands = 4324 / 1000 % 10

#Exercise 3
movies_hash = {the_batman: 2022, john_wick: 2014, the_philosophers_stone: 2001, scary_movie: 2000}
movies_hash.each {|title, year| puts year}

#Exercise 4
years = []
movies_hash.each {|title, year| years.push(year)}
years.each {|year| puts year}

#Exercise 5
factorial_5 = 0
i = 5
while i > 0
  factorial_5 += i
  i -= 1
end
puts factorial_5

factorial_6 = 0
i = 6
while i > 0
  factorial_6 += i
  i -= 1
end
puts factorial_6

#I tried to do this with the 7.times iteration in a single line using {}
#The result kept coming back as 33, but as soon as I broke it down into multi-line I get 28?

factorial_7 = 0
i = 7
7.times do
  factorial_7 += i
  i -= 1
end
puts factorial_7

factorial_8 = 0
i = 8
8.times do
  factorial_7 += i
  i -= 1
end
puts factorial_8

#Exercise 6
square_1 = 4.5 ** 2
square_2 = 6.7968 ** 2
square_3 = 3.14159 ** 2
puts square_1
puts square_2
puts square_3

#Exercise 7
=begin
In the line of code that caused the error, there was an opening '{'
But instead of closing the pair with a '}',  a ')' was used.
This could have been either a hash or method that can be passed a block.
This also serves as a reminder that (), [], and {} serve different purposes in Ruby
and cannot be interchanged or mixed.
=end
