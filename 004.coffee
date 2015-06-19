# Problem 4
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

palindromic = (num) ->
  num = num.toString()
  num_r = num.split('').reverse().join('')
  return num is num_r

sum = 0
for i in [100..999]
  for j in [100..999]
    num = i * j
    if palindromic(num)
      if sum < num
        sum = num

console.log sum
