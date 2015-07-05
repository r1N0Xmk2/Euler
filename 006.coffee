# 前十个自然数的平方和是：
#
# 12 + 22 + ... + 102 = 385
# 前十个自然数的和的平方是：
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# 所以平方和与和的平方的差是3025 − 385 = 2640.
#
# 找出前一百个自然数的平方和与和平方的差。

num = 100
sumSq = 0
sqSum = 0
for e in [1..num]
  sumSq += e
sumSq *= sumSq

for e in [1..num]
  sqSum += e * e
console.log sumSq-sqSum
