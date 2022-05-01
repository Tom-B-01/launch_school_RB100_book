def take_block(number, &block)
  block.call(number)
end

number = 13
take_block(number) do |num|
  puts "Block is being called in the method! #{num}"
end
