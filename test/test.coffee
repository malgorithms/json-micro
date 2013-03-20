{stringify} = require '../src/main.coffee'

o = {
  pi:         Math.PI
  neg_pi:     -Math.PI
  one:        1
  zero:       0
  two_thirds: 2 / 3
  array: [0.1, 0.22, 0.333, 0.4444, 0.55555, 0.666666, 0.7777777, 0.88888888, 0.999999999]
  big_nums: [1.1, 22.22, 333.333, 4444.4444, 55555.55555, 666666.666666, 7777777.7777777, 88888888.8888888, 99999999.999999999]
  crazy_nums: ((Math.pow 2, x*10) for x in [-10...10])
}

console.log stringify o, 3, ' '
