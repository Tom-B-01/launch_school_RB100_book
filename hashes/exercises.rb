#Exercise 1
family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", 'beth'],
  brothers: ['frank', 'rob', 'david'],
  aunts: ['mary', 'susan', 'sally']
}

immediate_family = family.select {|key, value| key == :brothers || key == :sisters}
names = immediate_family.values.flatten
puts names

#Exercise 2
non_family = {
  friends: ['jackie','lisa','ryan', 'tony'],
  colleagues: ['fred', 'kirk','jerry', 'elise']
}

#The difference between merge and merge! is that merge will simply return a NEW hash with the merged key-value pairs. merge! will mutate the hash to become that merged hash instead
puts "First we try merge"
family.merge(non_family)
puts family
puts "And now we do merge!"
family.merge!(non_family)
puts family

#Exercise 3
#First we loop and print keys
family.each_key {|key| puts "This is one of the keys: #{key}"}

#Next we do the same but for values
family.each_value {|value| puts "This is one of the values: #{value}"}

#And now we print out both keys and values
family.each {|key, value| puts "This is a key: #{key}, and this is a value: #{value}"}

#Exercise 4
# person[:name]

#Exercise 5
#You can use the has_value? method to check if a hash contains a specific value (You can also use the value? method)
new_hash = {a: 10, b: 100, c: 1000, d:1000}
if new_hash.has_value?(10)
  puts "The hash includes the value 10!"
else
  puts "The hash does not include the value 10!"
end

#Exercise 6
#In my_hash the key is a symbol. In my_hash2 the key is a string.

#Exercise 7
#B. there is no method called keys for Array objects
