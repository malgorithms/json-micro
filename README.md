json-micro
=======

A tiny module for the unlikely case when you have:
* JSON style objects
* which you want to turn into JSON strings
* but you only need `n` digits of accuracy for any number
* and you really want smaller JSON

With those weird goals in mind, this module makes as small a JSON string as possible, while guaranteeing at
least `n` precise digits for all numbers. More than n digits of precision will be included
if it doesn't affect the string size.

```javascript

stringify = require('json-micro').stringify;

data = [
  [ 1.1, 22.22, 333.333, 278394879238794879234487239],
  [ "cat", "dog", Math.PI],
  { "ln2" : Math.LN2}
];

console.log(stringify(data,2));
```

Outputs:

```javascript
[[1.1,22,333, 2.8e+26],["cat","dog",3.1],{"ln2":0.69}]
```

A third argument, `spacer`, let's you pretty-print for testing.

```javascript
console.log(stringify(data,3," "));
```

Outputs

```javascript
[
 [
  1.1,
  22.2,
  333
 ],
 [
  "cat",
  "dog",
  3.14
 ],
 {
  "ln2": 0.693
 },
 2.78e+26
]
```

# Installation

```
> npm install -g json-micro
```
