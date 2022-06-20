# Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.

# Note: This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to  are acceptable.

# Link https://www.hackerrank.com/challenges/one-week-preparation-kit-plus-minus/problem


#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
  # Write your code here
  positive = negitive = zero = 0
  arr.each do |element|
      if element > 0
          positive +=1
      elsif element < 0
          negitive += 1
      else
          zero += 1
      end
  end
  puts "%.6f" % (positive.to_f/arr.length)
  puts "%.6f" % (negitive.to_f/arr.length)
  puts "%.6f" % (zero.to_f/arr.length)
end

plusMinus(-4, 3, -9, 0, 4, 1)