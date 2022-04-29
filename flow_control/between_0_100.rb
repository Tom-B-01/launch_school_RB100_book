#Exercise 3
puts "Please enter a number between 0 and 100"
number = gets.chomp.to_i
if input >= 0 && input <= 50
  puts "#{number} is between 0 and 50! (inclusive)"
elsif input <= 100
  puts "#{number} is betwen 51 and 100! (inclusive)"
else
  puts "#{number} number is greater than 100!"
end
