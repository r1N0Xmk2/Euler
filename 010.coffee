# 10以下的质数的和是2 + 3 + 5 + 7 = 17.
#
# 找出两百万以下所有质数的和。

isPrime = require('./tool.coffee').isPrime
ret = 0
i = 1
while i < 2000000
  i++
  if isPrime i
    ret += i
console.log ret
