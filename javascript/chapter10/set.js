// Set object manages set of unique values.
// weakSet is available which supports garbage collection.

const roles = new Set();
roles
  .add('User')
  .add('Admin');

console.log(roles);
// Set { 'User', 'Admin' }
