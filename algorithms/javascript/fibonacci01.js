class Fibonacci {
  [Symbol.iterator]() {
    let a = 0, b = 1;
    return {
      next() {
        let rval = { value: b, done: false };
        b += a;
        a = rval.value;
        return rval;
      }
    }
  }
}

const times = x => f => {
  if (x > 0) {
    f()
    times(x - 1)(f)
  }
}

const count = 100;
const fibo = new Fibonacci();
const itr = fibo[Symbol.iterator]();

times(count)( () => console.log(itr.next().value) );
