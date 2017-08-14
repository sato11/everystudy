function* fibonacci(to) {
  let a = 0, b = 1;
  let count = 0
  while (count < to) {
    b = a + b;
    a = b - a;
    count++;
    yield a;
  }
}

const num = 100;
const it = fibonacci(num);
for (let n of it ) console.log(n);
