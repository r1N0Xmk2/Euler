# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
num = 2
ret = 2
check = 'ret%2 '
for i in [3..20]
  check += '|| ret %' +i
  console.log check
  while eval(check)
    ret += num
  num = ret
  console.log ret
console.log ret
