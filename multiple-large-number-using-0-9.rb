# https://www.geeksforgeeks.org/multiply-large-numbers-represented-as-strings/

# Given two positive numbers as strings. The numbers may be very large
# (may not fit in long long int), the task is to find product of these two numbers.


def multiplication(number_1, number_2)
  # number_1  566
  digits_array_1 = number_1.to_s.chars.reverse #Create array of character in reverse order[6,6,5]
  digits_array_2 = number_2.to_s.chars.reverse

  sums = []

  digits_array_1.each do |digit|
    str = ''
    carry = 0
    digits_array_2.each do |digit_2|
      sum  = (digit.to_i *  digit_2.to_i) + carry
      num = sum % 10
      str = num.to_s + str
      carry = sum / 10
    end
    str = carry.to_s + str if carry > 0
    sums.push(str)
  end
  
  grand_sum = 0
  zero = ''
  sums.each do |num, index|
    grand_sum = grand_sum + (num + zero).to_i
    zero.concat('0')
  end
 return grand_sum
end

puts multiplication(44,4)

