names = ['Tim', 'Bill', 'Susan', 'Georgi', 'Nargen Blarg']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end
