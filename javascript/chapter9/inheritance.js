class Vehicle {
  constructor() {
    this.passengers = [];
    console.log('Vehicleが生成された');
  }

  addPassenger(p) {
    this.passengers.push(p);
  }
}

class Car extends Vehicle {
  constructor() {
    super();
    console.log('Carが生成された');
  }

  deployAirbags() {
    console.log('ボン！');
  }
}

class Motorcycle extends Vehicle {}

const v = new Vehicle();
v.addPassenger('John');
v.addPassenger('Mary');
console.log(v.passengers) // [ 'John', 'Mary' ]

const c = new Car();
c.addPassenger('Ken');
c.addPassenger('Yoko');
console.log(c.passengers); // [ 'Ken', 'Yoko' ]
c.deployAirbags(); // ボン！

const m = new Motorcycle();
console.log(m instanceof Motorcycle); // true
console.log(m instanceof Vehicle);    // true
console.log(m instanceof Car);        // false
