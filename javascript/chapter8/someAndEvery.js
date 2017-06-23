// 配列内を検索し真偽値を返すメソッド
const arr = [5, 7, 12, 15, 17];
console.log(arr.some(x => x % 2 === 0));  // 偶数が含まれているのでtrue
console.log(arr.every(x => x % 2 === 0)); // 機数も含まれているのでfalse
