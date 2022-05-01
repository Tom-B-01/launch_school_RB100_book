talk = Proc.new do |name|
  puts "I am talking to you, #{name}!"
end

talk.call("Bob")
