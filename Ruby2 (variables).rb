#variables can be easily assigned in Ruby and their names are reusable, and by assigning a new value to a variable we override the original value:
age = 18 + 5 #=> 23
age = 33 #variable will now hold the value 33
puts age

#there's the usual shorthand operator, like in Python, that performs a sum and an assignment on the same line:
age = 18
age += 1  #age => 19
puts age
#but there's similar assignment operators for all the common math operators
age = 18
age -= 2  #=> 16

cash = 10
cash *= 2 #=> 20

temperature = 40
temperature /= 10 #=> 4

#Ruby aims to be an easy-to-read language, and as such variables should be named clearly. A quote by John Woods goes like "Always code as if the person who ends up maintaining your code will be a violent psychopath who knows where you live." As such variables should be in snake_case and descriptive. 
# bad
a = 19
string = "John"

# good
age = 19
name = "John"
can_swim = false

#As with Python, variables are a reference or a pointer to an address in memory. So unexpected behavior can and will happen when we pass a variable into another. Once the original variable changes its value, so will the second which now points to it. In terms of variable scope, METHODS have self-contained scope.It's a bit like an impenetrable bubble: only variables initialized within the method's body can be referenced.
name = 'Somebody Else'

def print_full_name(first_name, last_name)
  name = first_name + ' ' + last_name
  puts name
end

print_full_name 'Peter', 'Henry'   # prints Peter Henry
print_full_name 'Lynn', 'Blake'    # prints Lynn Blake
print_full_name 'Kim', 'Johansson' # prints Kim Johansson
puts name                          # prints Somebody Else
#Now, a BLOCK is the piece of code that follows a method's invocation. It's delimited by either curly braces {} or do/end:
total = 0
[1, 2, 3].each { |number| total += number }
puts total # 6

total = 0
[1, 2, 3].each do |number|  #by the way, the .each method and blocks are the way to set for loops in Ruby
  total += number
end
puts total # 6


 