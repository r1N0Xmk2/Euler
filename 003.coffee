# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
num = 600851475143
dec = 2
while dec * dec < num
  if not (num % dec)
    num /= dec
    dec--
    console.log num
  dec++
console.log 'ed', num
