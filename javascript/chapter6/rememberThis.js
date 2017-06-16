const julie = {
  name: 'Julie',
  greetBackwards: function() {
    const self = this;
    function getReverse() {
      let nameBackwards = '';
      for (let i = self.name.length - 1; i >= 0; i--) {
        nameBackwards += self.name[i];
      }
      return nameBackwards;
    }
    return getReverse();
  }
};
console.log(julie.greetBackwards()); // eiluJ

// 'this' is bind lexically to receiver object, namely stephen.
const stephen = {
  name: 'Stephen',
  greetBackwards: function() {
    const getReverse = () => {
      let nameBackwards = '';
      for (let i = this.name.length - 1; i >= 0; i--) {
        nameBackwards += this.name[i];
      }
      return nameBackwards;
    }
    return getReverse();
  }
}
console.log(stephen.greetBackwards()); // nehpetS
