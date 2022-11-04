# BitArray

Written by [Redu](https://stackoverflow.com/users/4543207/redu), with contributions by [Atriace](https://stackoverflow.com/users/923972/atriace) due to the question of ["How do I create a bit array in Javascript"](https://stackoverflow.com/questions/6972717/how-do-i-create-bit-array-in-javascript/73993403#answer-73993403)

This is a JavaScript class implementation of a BitArray extending [DataView](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView).  It implements bit masks to access the bits which are technically stored as `Bytes` in the DataView.  Conveniently, it also offers [standard boolean operations](https://en.wikipedia.org/wiki/Bit_array#Basic_operations).



**Constructor:** *BitArray(sizeOrBuffer)*

* **`sizeOrBuffer`** : Either a pre-existing [`ArrayBuffer`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer) or a positive integer [`Number`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number). In order to be able to deliver best performance, except for the indexed ones all operators such as `.popcnt`, `.all()`, `.clear()`, `.and()` etc. use 32 bit access to the underlying `ArrayBuffer`. Accordingly the `BitArray.buffer.byteLength` is always set to minimum multiples of 4 that is equal to or greater than the requested integer size. In case `sizeOrBuffer` is of `ArrayBuffer` type and it's `byteLength` is not a multiple of 4 then a new `ArrayBuffer` is generated in minimal correct size and the provided `ArrayBuffer` gets pasted at it's head.

### Syntax
```javascript
new BitArray(buffer);
new BitArray(number);
```

### Examples

Starting with something simple...
```javascript
var a = new BitArray(10);
a.set(0);
a.set(3);

console.log(`${a}`); // 10010000000000000000000000000000
a.length;            // 32
```

### Static Methods
* **`BitArray.from()`**: Converts either an `Array` with `unknown[]` type according to the elements being truthy or falsey or an `ArrayBufferView` type. The `length` of the constructed `BitArray` is adjusted according to the rule mentioned above.
* **`BitArray.isBitArray()`**: Returns `true` if the provided argument is of `BitArray` type.
* **`BitArray.isConvertable()`**: Returns `true` if the provided argument is either a `BitArray` or `ArrayBufferView` type.

### Properties
* **`length`**: An immutable property returning the leng of the `BitArray`.
* **`popcnt`**: Returns the total number of 1s in the `BitArray`.
### Methods
#### Tests
* **`.all()`**: Returns `true` if all bits in the `BitArray` are set.
```javascript
var a = new BitArray(10);
a.fill();  // 11111111111111111111111111111111
a.all();   // true
a.reset(7);// 11111110111111111111111111111111
a.all();   // false 
```
* **`.any()`**: Returns `true` if any of the bits in the `BitArray` are set. If returns `false` then all bits are 0.
```javascript
var a = new BitArray(10);
a.any();   // false
a.set(7);  // 00000001000000000000000000000000
a.any();   // true 
```
#### Logical Operators
* **`.and(bar, inPlace = false)`**: And of `this` and `bar`. Example: 1100 & 1001 = 1000. If `inPlace` is set to `true` then the operation is performed in place (`this` holds the result).
```javascript
var a = new BitArray(10),
    b = new BitArray(37),
    c;
a.set(7);  // 00000001000000000000000000000000
a.set(8);  // 00000001100000000000000000000000
b.set(8);  // 0000000010000000000000000000000000000000000000000000000000000000

a.and(b);  // 00000001000000000000000000000000
b.and(a);  // 0000000100000000000000000000000000000000000000000000000000000000
```
* **`.not()`**: Flips all the bits in this buffer. Example: 1100 = 0011.
* **`.or(bar, inPlace = false)`**: Or of this and bar. Example: 1100 & 1001 = 1101. If `inPlace` is set to `true` then the operation is performed in place (`this` holds the result).
* **`.xor(bar, inPlace = false)`**: Xor of this and bar. Example: 1100 & 1001 = 0101. If `inPlace` is set to `true` then the operation is performed in place (`this` holds the result).
#### Modifiers
* **`.clear()`**: Resets the BitArray in place.
* **`.fill()`**: Sets the BitArray in place.
* **`.randomize()`**: Sets or resets every bit in the BitArray randomly in place
* **`.reset(i)`**: Resets the value at a given index.
* **`.set(i)`**: Sets the value at a given index.
* **`.toggle(i)`**: Flips the value at a given index.
#### Others
* **`.slice(a = 0, b = this.buffer.byteLength)`**: Slices `BitArray` and returns a new `BitArray` with `buffer.byteLength` in multiples of 4 bytes (32 bits). When invoked with no arguments, the default argument values instantiate a clone.
* **`.toString()`**: Returns the string representation of the `BitArray`.
