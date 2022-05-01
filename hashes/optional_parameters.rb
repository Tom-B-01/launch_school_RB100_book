def greeting(name, options={})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I am #{options[:age]} years old. I live in #{options[:city]}"
  end
end

greeting("Bob")
greeting("Bill", {age: 42, city: "Chicago"})
greeting("Jack", age: 83, city: "Albuqurque")
