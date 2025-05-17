#The general syntax of an if statement is shown here:
if statement_to_be_evaluated == true
  # do something awesome...
end

if 1 < 2
  puts "Hot diggity, 1 is less than 2!"
end
#=> Hot diggity, 1 is less than 2!
#And if there is only one line of code to be evaluated inside the block, then you can rewrite it as:
puts "Hot diggity damn, 1 is less than 2" if 1 < 2
#And wherever we need multiple logic checks, we can use expresions like: 
if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the octopus"
end

#all the common comparison operators are available: == to compare if values are equal, != to see if they are not, >, <, >= and <= to see whos larger and also methods like .eql?
#but Ruby has a special operator known as the "spaceship operator" which returns different numerical values depending on which value is larger:
5 <=> 10    #=> -1 if the value on the left is less than the value on the right;
10 <=> 10   #=>  0 if the value on the left is equal to the value on the right
10 <=> 5    #=>  1 if the value on the left is greater than the value on the right.
#there's also the common logical operators && (and), || (or) and ! (not)

#Case statements are a neat way to write several conditional expressions instead of using several if...elif statements. They process each condition in turn and if the current one returns false they move to the next. They can also be ended with an else for the times where no condition is verified:
grade = 'F'

did_i_pass = case grade #=> Starts a case statement definition. Takes the variable you are going to work with
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' -Gandalf"
end
#for more complex code conditionals we can remove the then keyword and and place the code in the next line as small blocks:
grade = 'F'

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end
#there's also the ternary operator, which we've barely used in code before but it allows to write an if...else statement in one line. Its syntax is
#condition ? <execute if true> : <execute if false>. We can assign the return value of the expression to a variable. Best used when choosing one of two values for a variable
age = 19
response = age < 18 ? "You still have your entire life ahead of you." : "You're all grown up."
puts response #=> "You're all grown up."

#another more real life example with an input:
puts "Enter in a number"
number = gets.chomp.to_i

if number == 3
  puts "You entered a 3"
elsif number == 4
  puts "You entered a 4"
else
  puts "You entered neither a 3, nor a 4"
end