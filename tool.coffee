module.exports = {
  isPrime : (num) ->
    if num is 2 then return yes
    i = 1
    while i * i < num
      i++
      unless num % i
        return no
    yes
}
