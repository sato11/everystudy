class Car {
  constructor() {}
}

class InsurancePolicy {}

const ADD_POLICY = Symbol();
const GET_POLICY = Symbol();
const IS_INSURED = Symbol();
const _POLICY = Symbol();

// mixin: Carクラスにプロパティを追加する
// シンボルを使うことでプロパティ/メソッドの衝突を回避する
function makeInsurable(o) {
  o[ADD_POLICY] = p => { this[_POLICY] = p; }
  o[GET_POLICY] = () => this[_POLICY];
  o[IS_INSURED] = () => !!this[_POLICY];
}

makeInsurable(Car.prototype);

const car = new Car();
console.log(car[IS_INSURED]());
car[ADD_POLICY](new InsurancePolicy());
console.log(car[IS_INSURED]());
