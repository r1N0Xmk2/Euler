# 前六个质数是2,3,5,7,11和13，其中第6个是13.
#
# 第10001个质数是多少？

num = 2
noth = 1
isPrime = (num) ->
  i = 1
  while i * i < num
    i++
    unless num % i
      return no
  yes
while noth < 10001
  if isPrime num
    console.log ++noth, num
  num++
