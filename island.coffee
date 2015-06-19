_ = require 'lodash'
a = [
      [1, 0, 0]
      [0, 0, 1]
      [1, 1, 1]
    ]
landscope = 0
con = []
for i in [0..a.length-1]
  for j in [0..a[0].length-1]
    flag = false
    if i+1 < a.length and a[i][j] > landscope  and a[i+1][j] > landscope
      con.push([i+','+j,(i+1)+','+j])
      flag = true
    if j+1 < a[0].length and a[i][j] > landscope  and a[i][j+1] > landscope
      con.push([i+','+j,i+','+(j+1)])
      flag = true
    if i+1 < a.length and j+1>a[0].length and a[i][j] > landscope  and a[i+1][j+1] > landscope
      con.push([i+','+j,(i+1)+','+(j+1)])
      flag = true
    if i-1> 0 and j+1 <a[0].lenght  and a[i-1][j+1] > landscope  and a[i-1][j+1] > landscope
      con.push([i+','+j,(i-1)+','+(j+1)])
      flag = true
    if a[i][j] > landscope and not flag and  ((i isnt a.length-1) or (j isnt a[0].length-1))
      con.push([i+','+j])
ret = []
console.log con
ret[0] = con[0]
# con.sort (a,b) ->
#   a.length < b.length
# console.log('sort')
c_i_l = 0
while c_i_l != con.length-1
  # for c_i in [0..con.length-1]
  for c_i = 0;c_<con.length-1;c_i++
    for r_i in [0..ret.length-1]
      console.log c_i, r_i
      # console.log('ret',ret)

      # console.log('con',con[c_i])
      if _.intersection(ret[r_i], con[c_i]).length
        # console.log _.intersection(ret[r_i], con[c_i])
        ret[r_i] = _.union(ret[r_i], con[c_i])
        # console.log('union',con[c_i],ret[r_i],'new', _.union(ret[r_i], con[c_i]))
        c_i_l++
      else if r_i is ret.length-1 and not flag
        flag = true
        c_i_l = c_i
        # console.log c_i_l
      else if r_i is ret.length-1 and c_i is con.length-1
        ret.push(con[c_i_l])
        # console.log('add',con[c_i])
        if not flag
          c_i_l++
        flag = false
      console.log '\n'
console.log con
console.log ret
