def has_a_b?(string)
  if string =~ /b/
    puts "It sure does has a 'b'"
  else
    puts "This ain't got no 'b' in it"
  end
end

has_a_b?("Toodaloo my darlings")
has_a_b?("This one does contain the letter 'b'")
has_a_b?("Billy Bob Thorton")
