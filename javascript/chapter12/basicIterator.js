const book = [1, 2, 3, 4];
const it = book[Symbol.iterator]();

// Repeat until the iterable object returns done: true.
for (let v of it) console.log(v);

// { value: 1, done: false }
// { value: 2, done: false }
// { value: 3, done: false }
// { value: 4, done: false }
// { value: undefined, done: true }
