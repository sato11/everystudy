function destructureAssociativeArray({ subject, verb, object }) {
  return `${subject} ${verb} ${object}.`;
}

function destructureArray([subject, verb, object]) {
  return `${subject} ${verb} ${object}.`;
}

function addPrefix(prefix, ...words) {
  const prefixedWords = [];
  for (let i = 0; i < words.length; i++) {
    prefixedWords[i] = prefix + words[i];
  }
  return prefixedWords.join(', ');
}

const array = ['I', 'love', 'JavaScript'];
console.log(destructureArray(array)); // I love JavaScript.

const associative = {
  subject: 'I',
  verb: 'love',
  object: 'JavaScript'
};
console.log(destructureAssociativeArray(associative)); // I love JavaScript.

console.log(addPrefix('con', 'verse', 'struct')); // converse, construct
console.log(addPrefix('non-', 'programmer', 'designer', 'engineer')); // non-programmer, non-designer, non-engineer
