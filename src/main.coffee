
gen_replacer = (num) ->
  mult = Math.pow 10, num
  return (k, v) ->
    if v?.toFixed? and (v isnt parseInt v)
      alt1 = parseFloat v.toPrecision num
      if "#{alt1}".length < "#{v}".length
        alt2 = Math.round v
        if (Math.abs(alt2 - v) < Math.abs(alt1 - v)) and "#{alt2}".length <= "#{alt1}".length
          alt1 = alt2
        return alt1
    return v

exports.stringify = stringify = (o, precision, spacer) ->
  return JSON.stringify o, gen_replacer(precision), spacer