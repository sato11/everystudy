// User Map object to accociate key and certain value.
// This is more appropriate in ES6 than normal object.

const u1 = { name: 'Angela' };
const u2 = { name: 'Bobby' };
const u3 = { name: 'Charlie' };
const u4 = { name: 'Dabie' };

const userRoles = new Map([
  [u1, 'User'],
  [u2, 'User'],
  [u3, 'Admin'],
]);
console.log(userRoles);
// Map {
//   { name: 'Angela' } => 'User',
//   { name: 'Bobby' } => 'User',
//   { name: 'Charlie' } => 'Admin' }

userRoles.set(u4, 'User');

console.log([...userRoles]);
// [
//   [ { name: 'Angela' },  'User'  ],
//   [ { name: 'Bobby' },   'User'  ],
//   [ { name: 'Charlie' }, 'Admin' ],
//   [ { name: 'Dabie' },   'User'  ],
// ]
