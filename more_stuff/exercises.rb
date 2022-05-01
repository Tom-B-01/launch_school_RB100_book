#Exercise 1

def has_lab?(string)
  if string =~ /lab/
    puts "We have a match-a-roo!"
  else
    puts "No match here... sorry..."
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")

#Exercise 2
#The code will print out "Hello from inside the execute method!", it will return nil (WRONG!)
#The block in the execute method lacks a .call so it is never executed. The method returns a Proc object as the last executed was that object.

#Exercise 3
#Exception handling is a way of coding using the begin, rescue, and end reserved words that allows a program to continue running even after running into an error.
#It helps with debugging a program by allowing the program to continue and by storing/printing out the errors when they occur.

#Exercise 4
def execute(&block)
  block.call
end


execute {puts "Hello from inside the execute method!"}

#Exercise 5
#This code gives an error because in the method definition. The block parameter is lacking the & which tells the computer to expect a block.
