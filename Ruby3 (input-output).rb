#As we've seen previously, the puts and print commands are quite similar, but puts appends a new line to the end of the argument passed in, whereas print keeps things all on one line. A very important thing to notice for both commands is that after printing whatever argument they are passed, puts and print both return nil. A shorthand for puts is "p", it shows a raw-er version of the data we pass it. Ruby has yet another printing method, called pp. This is like p, but it prints big hashes & arrays in a nicer way.
irb(main):001:0> puts "Learning to code is cool!!"
Learning to code is cool!!
=> nil

irb(main):001:0> print "Learning to code is FUN!"
Learning to code is FUN!=> nil  #print is useful for printing arrays

irb(main):002:0> puts "Hello World"; puts "I love drinking coffee" #semicolons are never required in Ruby, but they allow you to run multiple Ruby commands all on one line
Hello World
I love drinking coffee
=> nil

#To accept input from a user, we can use the gets command. When we use gets, program execution will stop and wait for user input. After the user presses Enter, the program will continue its execution. But the enter press will also pass a newline to the variable that we return the input to. That's why it's usually paired with the .chomp method:
irb(main):001:0> new_string = gets.chomp
This is a sentence.
=> "This is a sentence."  #this is what the user inputs

irb(main):002:0> puts new_string
This is a sentence.
=> nil
