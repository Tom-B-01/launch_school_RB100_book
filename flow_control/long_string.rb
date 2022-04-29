#Exercise 2
def capitalize_long_strings(words)
  words.upcase! if words.length > 10
  words
end

puts "Enter a string"
user_input = gets.chomp
puts capitalize_long_strings(user_input)
