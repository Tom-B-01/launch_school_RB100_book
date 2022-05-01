#Exercise 1
arr = [1, 3, 5, 7, 9, 11]
number = 3
#puts arr.include?(number)

#After looking at the solution given I decided to add a similar if loop idea and commented out my original puts line

if arr.include?(number)
  puts "Yup, the array contains #{number}"
end

#Exercise 2
#The first block will return [b,2] and arr will be [[b,2], [b,3], [a,1], [a,2]]
#The second block will return nil? and arr will be []?

#I'm going to run this in irb and check back in a minute
#After running the first example in irb, It looks like what its actually doing is first going into arr.first which is ["b", 1] and then deleting the last element of the first element, which is 1.
#The delete method then returns the deleted value of 1

#I think this means that second block will actually look more like this
#return = [1,2,3] and arr will be [["b"], ["a", [1,2,3]]]
#time to check it again
#Okay, now I got the second correct.


#Exercise 3
#based on the last exercise I believe that arr.last.first would return "example"

#Exercise 4
#1. [3, 6] (This actually returns just 3, it does not return the index for all values of 5, only the first)
#2. 5 (This one throws an error as the argument is not being passed correctly)
#3. 8

#Exercise 5
#a = 'e'
#b = 'A'
#c = nil

#Exercise 6
#Arrays use integers as their indexes not strings, so trying to pass arr['a string'] is not understood.
#I think that doing instead arr[arr.idex("a string")] would work though.
#Or as the solution shows, just put in the revelant integer manually.

#Exercise 7
names = ['Tim', "Tina", "Tony", "Tonia"]
names.each_with_index {|value, index| puts "#{index} = #{value}"}

#Exercise 8
original_arr = Array(1..5)
new_arr = original_arr.map {|x| x+2}

p original_arr
p new_arr
