// weakMap keys are garbage collection.
// weakMap object cannot be iterated nor cleared,
// therefore it is great for storing private keys.

const SecretHolder = (() => {
  const secrets = new WeakMap();
  return class {
    setSecret(secret) {
      secrets.set(this, secret);
    }
    getSecret() {
      return secrets.get(this)
    }
  }
})();

const a = new SecretHolder();
a.setSecret('This is a secret.');
console.log(a.getSecret());
