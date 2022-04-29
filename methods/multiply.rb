#Exercise 3
def multiply(num_1, num_2)
  num_1 * num_2
end

puts multiply(5, 21)

#Exercise four
# I think the example code will no print anything becuase of the explicit return on line 3
=begin
Copied code for reference:
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")
=end

#Exercise 5
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

#This method now returns nil
#I could change that by either having an explicit return or executing the variable words


#Exercise 6
=begin
I think this error message means that only one argument was passed into the method "calculate_product"
when the method has two parameters, neither of which have defaults.
I think it also shows that definition of calculate_product is on line 1? Or maybe it was called on line 1?
Not sure at all about the reference to line 4 though...
=end
