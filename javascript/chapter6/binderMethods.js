const bruce = { name: 'Bruce' };
const madeline = { name: 'Madeline' };

function greet() {
  return `My name is ${this.name}.`
};

function update(birthyear, occupation) {
  this.birthyear = birthyear,
  this.occupation = occupation
};

// 関数に対してcallメソッドを使うことで、thisの束縛を指定できる
console.log(greet());              // My name is undefined.
console.log(greet.call(bruce));    // My name is bruce.
console.log(greet.call(madeline)); // My name is madeline.

// thisを第一引数の値に指定してupdateメソッドを呼び出す
console.log(bruce); // { name: 'Bruce' }
update.call(bruce, '1949', 'Singer');
console.log(bruce); // { name: 'Bruce', birthyear: '1949', occupation: 'Singer' }

// applyはcallに似ているが、第二引数に配列をとる
console.log(madeline); // { name: 'Madeline' }
update.apply(madeline, ['1942', 'Actress']);
console.log(madeline); // { name: 'Madeline', birthyear: '1942', occupation: 'Actress' }
