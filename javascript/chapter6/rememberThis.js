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
