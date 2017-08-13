const wallece = {
  name: 'Wallece',
  bark() { return 'Woof!' }
};

const ポチ = {
  名前: 'ポチ',
  吠える() { return 'ワン！' }
};

console.log(wallece);        // { name: 'Wallece', bark: [Function: bark] }
console.log(ポチ);            // { name: 'ポチ', '吠える': [Function: 吠える] }
console.log(wallece.bark()); // Woof!
console.log(ポチ.吠える());    // ワン！
