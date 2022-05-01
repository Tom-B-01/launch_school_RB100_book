while true do
  puts "Enter 'STOP' to break the loop"
  input = gets.chomp
  if input == "STOP"
    break
  end
  puts "This is an action"
end

def countdown_with_recursion(number)
  puts number
  if number > 0
    countdown_with_recursion(number - 1)
  end
end

countdown_with_recursion(10)
countdown_with_recursion(-3)
