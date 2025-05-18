#One way Ruby allows you to represent a collection of data is with ARRAYS, which are ordered lists. The individual variables, numbers, or strings within an array are known as ELEMENTS. An array can contain any combination of variables, numbers, strings, or other Ruby objects (including other arrays), although it is advisable to keep similar data types in any one array.
#Here are some basic arrays:
num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]
# These above are created in awa that is called an ARRAY LITERAL. An array can also be created by calling the Array.new method. When we call this method, we can also include up to 2 optional arguments (initial size and default value):
Array.new               #=> []
Array.new(3)            #=> [nil, nil, nil]
Array.new(3, 7)         #=> [7, 7, 7]
Array.new(3, true)      #=> [true, true, true]
#ELEMENTS in an array can be accessed by their index number, with the same syntax and properties that we used in Python. Ruby adds on top the .first and .last array methods:
str_array = ["This", "is", "a", "small", "array"]

str_array.first         #=> "This"
str_array.first(2)      #=> ["This", "is"]
str_array.last(2)       #=> ["small", "array"]
#Other METHODS to manipulate ARRAYS are the .push (which adds elements to the end of the array) and .pop () (which removes the element at the end of an array and returns the element that was removed)