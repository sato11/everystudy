console.log(x); // undefined
var x = 3;
console.log(x); // 3

// var での宣言は曖昧な関数スコープを持つので非推奨
// 上記のコードの場合、xは not defined errorではなく undefined が代入された状態になっている
// letを使って記述するのがスタンダード化していくはずだし、そうあるべき
