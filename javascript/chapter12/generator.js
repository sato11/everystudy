function* interrogate() {
  const name = yield 'What is your name?';
  const color = yield 'What is your favorite color?';
  return `${name} said her favorite color was ${color}.`;
}

const itr = interrogate();
console.log(itr.next());
console.log(itr.next('Jessica'));
console.log(itr.next('Blue'));
