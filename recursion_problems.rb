require 'byebug'
require 'pry'

#Problem 1: You have array of integers. Write a recursive solution to find the sum of the integers.

def sum_recur(array)
  return 0 if array.empty?
  array.pop + sum_recur(array)
end

#p sum_recur([1,2,3])

#Problem 2: You have array of integers. Write a recursive solution to determine whether or not the array contains a specific value.

def includes?(array, target)
  return false if array.empty?
  return true if array.pop == target
  includes?(array, target)
end

#p includes?([1,2,3], 3)
#p includes?([1,2,3], 0)

#Problem 3: You have an unsorted array of integers. Write a recursive solution to count the number of occurrences of a specific value.

def num_occur(array, target)
  return 0 if array.empty?
  sum = 0
  sum = 1 if array.pop == target
  sum + num_occur(array, target)
end

#p num_occur([1,2,3], 1)
#p num_occur([1,3,3], 0)
#p num_occur([1,3,3], 3)

#Problem 4: You have array of integers. Write a recursive solution to determine whether or not two adjacent elements of the array add to 12.

def add_to_twelve?(array)
  #debugger
  num_1 = array.shift
  return false if num_1 == nil
  num_2 = array.first
  return false if num_2 == nil
  return true if num_1 + num_2 == 12
  add_to_twelve?(array)
end

#p add_to_twelve?([6,7])
#p add_to_twelve?([6,6,1])
#p add_to_twelve?([1,2,3,6,6,7,8])


#Problem 5: You have array of integers. Write a recursive solution to determine if the array is sorted.

def sorted?(array)
  num_1 = array.shift
  return true if num_1 == nil
  num_2 = array.first
  return true if num_2 == nil
  return false if (num_1 <=> num_2) == 1
  sorted?(array)
end

#p sorted?([0,1,2])
#p sorted?([1,1,2])
#p sorted?([0,1,0])


#Problem 6: Write a recursive function to reverse a string. Don't use any built-in #reverse methods!

def reverse(string)
  #debugger
  arr = string.split("")
  last_letter = arr.pop
  return "" if last_letter == nil
  new_string = arr.join("")
  last_letter + reverse(new_string)
end

#p reverse("hi")
#p reverse("his")