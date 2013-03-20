json-micro
=======

Sometimes you want to transmit info around in JSON
and don't care so much about float precision.

``` js

stringify = require('json-micro').stringify
data = [
  [1,2,3]
  ["cat","dog",Math.PI]
]
console.log stringify data
```

Output:


# Installation

```
> npm install -g json-micro
```
