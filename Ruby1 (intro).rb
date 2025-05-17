#This is the beginning of our course on ruby. The TOB starts with teachin Ruby, then going on with Rails and eventually ramping on the difficulty of the exercises. When working on ruby, indentation (tab) should be set to 2 spaces. With Ctrl+Shift+P we can search for "language specific settings" and tweak VSCode for this.
#Some initial conventions. When defining methods or variables, we should use snake_case formatting. This way, what used to be aVeryCoolVariable should be a_very_cool_variable. Related to this, whenever we declare a constant we should use all uppercase so that we get CONTSANT_VAR. 
#HOWEVER, whenever we declare a class we should use PascalCase instead, ending up with stuff like MyFirstClass.
#Sort of unrelated, but the API acronym may also refer to docummentation in certain circles.  

#Before anything we have to install ruby. Ruby on rails is supposed to be a bit messy to install. For now we should go to "https://www.theodinproject.com/lessons/ruby-installing-ruby" and follow the instructions to a T. If working in VSCode we should also install Ruby LSP extension

#Some initial pointers in Ruby. It is very object-oriented, absolutely everything in Ruby is an object, even the most basic data types. For numbers, we have the usual operators but we need to keep in mind the fact that operating between two ints won't yield a float (17/5 -> 3) and at least one of the numbers should be a float (17/5.0 -> 3.4). A good example of using objects and numbers in Ruby is how we change from an int to a float and vice versa:
#13.to_f  ->  13.0
#13.0.to_i  ->  13
#Notice how we treat the number as an object and the conversions are called as we would previously call methods on our custom objects in JS. This is actually what's happening, and other useful number methods Ruby has are ".even?" and ".odd?" 

#Strings can be formed with either double "" or single'' quotation marks, also known as string literals. They are pretty similar, but there are some differences. Specifically, string interpolation and the escape characters both only work inside double quotation marks, not single quotation marks.
#There are many ways to concatenate: 
# With the plus operator:
"Welcome " + "to " + "Odin!"    #=> "Welcome to Odin!"

# With the shovel operator:
"Welcome " << "to " << "Odin!"  #=> "Welcome to Odin!"

# With the concat method:
"Welcome ".concat("to ").concat("Odin!")  #=> "Welcome to Odin!"

#We can slice substrings easily, like we would items in an array:
"hello"[0]      #=> "h"

"hello"[0..1]   #=> "he"  this uses a range from 0 to 1

"hello"[0, 4]   #=> "hell"  string[start, length]. This is like doing string[0..3]

"hello"[-1]     #=> "o"
#The escape characters we can use: 
#\\  #=> Need a backslash in your string?
#\b  #=> Backspace
#\r  #=> Carriage return, for those of you that love typewriters
#\n  #=> Newline. You'll likely use this one the most.
#\s  #=> Space
#\t  #=> Tab
#\"  #=> Double quotation mark
#\'  #=> Single quotation mark
#We can also do string interpolation, where we pass strings stored in a variable to our code but we have to remember these things only work with "" not '':
name = "Odin"

puts "Hello, #{name}" #=> "Hello, Odin"
puts 'Hello, #{name}' #=> "Hello, #{name}"  //puts is a similar method to print but it automatically adds an endline after the string we pass it

#We can find the methods for all strings in the documentation (https://docs.ruby-lang.org/en/3.3/String.html). We should remember that for all types of data, in Ruby: that there are a lot of default methods and the documentation is a good place to find them. Some of the most useful *string* methods are .capitalize, .upcase, .include?, .length, .reverse. Our extension should help also remember the methods of most data types
"he77o".sub("7", "l")           #=> "hel7o"

"he77o".gsub("7", "l")          #=> "hello"

"hello".insert(-1, " dude")     #=> "hello dude"

"hello world".delete("l")       #=> "heo word"

"!".prepend("hello, ", "world") #=> "hello, world!"

"hello world".reverse           #-> "dlrow olleh"
#Symbols are a performance-enhancing twist on strings. They are stored in memory using the same object ID instead of taking a new space in memory each time the same string is stored. 

#Booleans in Ruby are True, False and Nil. This last one represents "nothing" or "empty" 


