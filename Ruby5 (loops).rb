#This is an example of using a while loop with a count. Because you declare the condition that breaks the loop up front, the intention of your code is much clearer:
i = 0
while i < 10 do
 puts "i is #{i}"
 i += 1
end
#The until loop is the opposite of the while loop. A while loop continues for as long as the condition is true, whereas an until loop continues for as long as the condition is false:
i = 0
until i >= 10 do
 puts "i is #{i}"
 i += 1
end
#Apparently this helps you avoid using != in conditionals because ruby programmers would rather have it written out so code looks simpler to read. 

#When we know for sure the amount of times we want to iterate something, we use RANGES. We give it a start, and end, and the amount of dots defines wether the range is exclusive or inclusive:
(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4

# We can make ranges of letters, too!
('a'..'d')  # a, b, c, d
# With these ranges, we can make for loops with a known number of iterations:
for i in 0..5
  puts "#{i} zombies incoming!" # => code will output this line 6 times 
end
# An alternative in Ruby, is to use the .times method:
5.times do
  puts "Hello, world!" # => code will output this line 5 times, iteration will start on zero and end in 4
end
#//////////////////////
5.times do |number|
  puts "Alternative fact number #{number}"  # => this code can be used in irb to show the iteration numbers
end
# There are also the #upto and #downto methods. They iterate from a starting number either up to or down to another number, respectively.
5.upto(10) { |num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) { |num| print "#{num} " }   #=> 10 9 8 7 6 5


