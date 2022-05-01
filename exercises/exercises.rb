#Exercise 1
arr = Array(1..10)
arr.each do |num|
  puts "#{num}"
end
#Exercise 2
arr.each {|num| puts num if num > 5}

#Exercise 3
odds = arr.select {|num| num % 2 == 1}

#Exercise 4
arr.push(11)
arr.unshift(0)

#Exercise 5
arr.pop
arr.push(3)

#Exercise 6
arr.uniq!

#Exercise 7
#Arrays are ordered lists that indexed by integers
#Hashes are collections of key-value pairs, where the keys are usually symbols but can be other variables. Hashes now maintain their ordering but have not always done so.

#Exercise 8
hash_1 = {key: "value"}
hash_2 = {:key => "value"}

#Exercise 9
h = {a:1, b:2, c:3, d:4}
h[:b] # 1.
h[:e] = 5 # 2.
h.each {|key, value| h.delete(key) if value < 3.5} # 3.
#The solution in the book is different. It uses .delete_if which both iterates the hash and runs the conditional statement see below.
h.delete_if {|key, value| value < 3.5} #This is cleaner than my answer. So keep that in mind.

#Exercise 10
#Yes to both. You can have values in a hash of any type, and an array can be of any type as well.
h = {int:1, str:"String", arr:[1,2,3,4]}
arr = [{a:1,b:2,c:3},{d:4,e:5,f:6}]

#Exercise 11
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

#Exercise 12
contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]

#Exercise 13
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|str| str.start_with?('s')}

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|str| str.start_with?('s') || str.start_with?('w')} #can also be done with str.start_with?('s', 'w')

#Exercise 14
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a.map! {|str| str.split}
a.flatten!

#Exercise 15
#I think this will compare key-value pairs that have the same key regardless of order. So I think it will print These hashes are the same!

#Exercise 16
#Single entry version
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
contact_symbols = [:email, :address, :phone]
contact_symbols.each do |sym|
  contacts["Joe Smith"][sym] = contact_data.first
  contact_data.shift
end
puts contacts

#Multi-entry version
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contact_symbols = [:email, :address, :phone]
contacts.each do |name, data|
  contact_symbols.each do |sym|
    contacts[name][sym] = contact_data.first.first
    contact_data.first.shift
  end
  contact_data.shift
end

puts contacts

#The solution reminded me that because .shift returns the value that is being deleted from the array, you can actually write out the line like This
#contacts[name][sym] = contact_data.first.shift
#This saves you a line of code for each loop
