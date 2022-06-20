#!/bin/ruby


# Given five positive integers, find the minimum and maximum values that can be calculated by 
# summing exactly four of the five integers. Then print the respective minimum and maximum values
# as a single line of two space-separated long integers.

# LINK https://www.hackerrank.com/challenges/one-week-preparation-kit-mini-max-sum/problem

require 'json'
require 'stringio'

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr)
    # Write your code here
    arr.sort!
    sum = arr.sum
    puts "#{sum - arr[4]} #{sum - arr[0]}"

end

miniMaxSum [1, 5, 3, 8, 2]