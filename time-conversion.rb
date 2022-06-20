#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
    # Write your code here
    time = s.split(':')
    hours = time[0]
    if time[2][-2..] == 'AM' && hours == '12'
        hours = "00"
    elsif time[2][-2..] == 'PM' && hours !='12'
        hours = hours.to_i + 12
    end
    return "#{hours.to_s}:#{time[1]}:#{time[2][0..1]}"
end