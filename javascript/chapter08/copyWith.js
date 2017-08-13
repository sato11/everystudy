// ES6で導入された copyWith メソッド
let arr = [11, 12, 13, 14];
let arr2 = arr.copyWithin(1, 2); // arr[1] = arr[2]

// 破壊的メソッドである
console.log(arr);  // [ 11, 13, 14, 14 ]
console.log(arr2); // [ 11, 13, 14, 14 ]

// 第三引数（オプショナル）は範囲指定
console.log(arr.copyWithin(2, 0, 2)); // [ 11, 13, 11, 13 ]
console.log(arr2);                    // [ 11, 13, 11, 13 ] .. 同じオブジェクトを参照
