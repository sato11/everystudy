const Car = (function() {
  const carProps = new WeakMap();
  class Car {
    static getNextVin() { return Car.nextVin++; }

    constructor(make, model) {
      this.make = make;
      this.model = model;
      this._userGears = ['P', 'R', 'N', 'D'];
      this.vin = Car.getNextVin();
      carProps.set(this, { userGear: this._userGears[0] });
    }

    static areSimilar(car1, car2) {
      return car1.make === car2.make && car1.model === car2.model;
    }

    static areSame(car1, car2) {
      return car1.vin === car2.vin;
    }

    get userGear() { return carProps.get(this).userGear; }
    set userGear(value) {
      if (this._userGears.indexOf(value) < 0)
        throw new Error(`ギア設定が正しくない: ${value}`);
      carProps.get(this).userGear = value;
    }

    shift(gear) { this.userGear = gear; }
  }

  Car.nextVin = 0;

  return Car;
})();

const car1 = new Car('Tesla', 'Model S');
const car2 = new Car('Mazda', '3i');
const car3 = new Car('Mazda', '3i');

console.log(car1);

car1.shift('D');
car2.shift('R');

console.log(car1.userGear);
console.log(car2.userGear);

car1.shift = gear => this.userGear = gear.toUpperCase();
car1.shift('d');
console.log(car1.userGear);
