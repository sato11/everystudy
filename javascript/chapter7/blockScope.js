// IIFEでの書き方（旧記法）
(function() {
  var num = 1;
  console.log(num);
})();
// 外部からの参照はできない。not definedエラーを吐く。
// console.log(num);

// ブロックスコープでの書き方（ES6記法）
{
  const num = 2;
  console.log(num);
}
// num is not defined
// console.log(num);
