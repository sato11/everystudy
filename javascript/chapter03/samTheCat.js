const sam1 = {
  name: 'Sam',
  age: 4,
};
console.log(sam1);

const sam2 = {
  name: 'Sam',
  age: 4
};
console.log(sam2);

console.log(sam1.name === sam2.name); // true
console.log(sam1.age  === sam2.age);  // true
console.log(sam1      === sam2);      // false

const sam3 = {
  name: 'Sam',
  classification: {
    kingdom:   'Animalia',
    phylum:    'Chordata',
    class:     'Mamalia',
    order:     'Carnivoria',
    family:    'Felidae',
    subfamily: 'Felidae',
    genus:     'Felis',
    specied:   'F. catus',
  },
};
console.log(sam3);

sam3.speak = function() { return 'Meow!' }
console.log(sam3.speak());
