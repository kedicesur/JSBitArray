# **BitArray**

Written by [Redu](https://stackoverflow.com/users/4543207/redu), with contributions by [Atriace](https://stackoverflow.com/users/923972/atriace) due to the question of ["How do I create a bit array in JavaScript"](https://stackoverflow.com/questions/6972717/how-do-i-create-bit-array-in-javascript/73993403#answer-73993403).

This, v2.0 and onwards is a JavaScript class implementation of a `BitArray` built upon [AssemblyScript](https://www.assemblyscript.org/). It implements bit masks to access the bits which are technically stored under groups of 8 bytes `<u64>` in an `ArrayBufferView` structure.  Conveniently, it also offers [standard boolean operations](https://en.wikipedia.org/wiki/Bit_array#Basic_operations).

### **Benefits of BitArray**

- `BitArray` is developed with a performance first approach in mind. Thanks to AssemblyScript, it's very fast. See [benchmarks](#benchmarks) below.

- The memory footprint of `BitArray` is much smaller than any other type of arrays having the same number of binary elements.

### **Constructor:** *BitArray(length)*

* **`length`**: A positive integer [`Number`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number). In order to be able to deliver best performance, except for the indexed ones all properties or methods such as `.popcnt()`, `.all()`, `.wipe(number)`, `.and()` etc. use 64 bit access to the underlying `ArrayBuffer`. Accordingly the buffer is always set to minimum multiples of 8 bytes that is equal to or greater than the requested integer size. In theory `BitArray` should allow sizes up to 34,359,738,336 (`0x07ffffffe0`).

### **Syntax**

```javascript
new BitArray(length : number);
```

### **Examples**

Starting with something simple...

```javascript
var a = new BitArray(10);
a.set(0);
a.set(3);

console.log(`${a}`); // 1001000000
a.length;            // 10
a.popcnt();          // 2
```


### **Properties**
* **`length : number`**: An immutable property returning the actual length of the `BitArray`.
### **Methods**
#### Tests
* **`.all() : boolean`**: Returns `true` if all bits in the `BitArray` are set.

```javascript
var a = new BitArray(10);
a.wipe(1); // 1111111111
a.all();   // true
a.reset(7);// 1111111011
a.all();   // false 
```

* **`.any() : boolean`**: Returns `true` if any of the bits in the `BitArray` are set. If returns `false` then all bits are 0.

```javascript
var a = new BitArray(10);
a.any();   // false
a.set(7);  // 0000000100
a.any();   // true 
```

* **`.isEqual() : boolean`**: Returns `true` if tested `BitArray`s have the same bits set.

```javascript
var a = new BitArray(10),
    b;
a.wipe(2);     // 1000111100 (randomly set bits)
b = a.slice(); // 1000111100
a.isEqual(b);  // true 
```

#### Logical Operators
* **`.and(bar : BitArray)`**: And of `this` and `bar`. Example: 1100 & 1001 = 1000 returned as a new `BitArray`.

```javascript
var a = new BitArray(10),
    b = new BitArray(37),
    c;

a.length;  // 10
b.length;  // 37

a.set(7);  // 0000000100
a.set(8);  // 0000000110
b.set(8);  // 0000000010000000000000000000000000000

a.and(b);  // 0000000010
b.and(a);  // 0000000010
```

* **`.not() : BitArray`**: Returns a new `BitArray` with all bits flipped. Example: 1100 = 0011.
* **`.or(bar : BitArray) : BitArray`**: Or of this and bar. Example: 1100 & 1001 = 1101 returned as a new `BitArray`.
* **`.xor(bar : BitArray) : BitArray`**: Xor of this and bar. Example: 1100 & 1001 = 0101 returned as a new `BitArray`.

#### In Place Modifiers

* **`.reset(i : number) : BitArray`**: Resets the value at given index `i`.
* **`.set(i : number) : BitArray`**: Sets the value at given index `i`.
* **`.toggle(i : number) : BitArray`**: Flips the value at given index `i`.
* **`.wipe(n : number = 0) : BitArray`**:
  - `.wipe()` or `.wipe(0)` fills the `BitArray` with 0.
  - `.wipe(1)` fills the `BitArray` with 1.
  - `.wipe(2+)` fills the `BitArray` with random bits.
#### Others
* **`.slice(a = 0, b = this.length) : BitArray`**: Slices `BitArray` and returns a new `BitArray`. When invoked with no arguments, the default argument values instantiate a clone. No negative values are allowed.
* **`.toString() : string`**: Returns the string representation of the `BitArray`.

### **Benchmarks**

We bench a meaningful usecase of `BitArray` employed in an Optimized Segmented Sieve of Sundaram based single threaded `PI` function which returns the count of prime numbers up to a number `n`. Tests are run for `0` to `1000000` (`1e6`) for `Array`, `BitArray` (No WASM), `BitArrayWASM` and `Uint8Array`. Benchmarking is done by Deno's built in benchmarking tool. So just run

**`/path-to-project$`** `deno bench --unstable`

at the root of the project to see it for yourself.

Benchmark                  |  Time (avg)  |    (min ... max)    | p75     | p99     | p995
|--------------------------|--------------|---------------------|---------|---------|--------
Array__________: 0-1000000 | 6.67 ms/iter | (6.51 ms … 6.98 ms) | 6.71 ms | 6.98 ms | 6.98 ms
BitArray_______: 0-1000000 | 6.63 ms/iter | (6.4 ms … 7.48 ms)  | 6.69 ms | 7.48 ms | 7.48 ms
BitArrayWASM: 0-1000000    | 4.97 ms/iter | (4.79 ms … 5.31 ms) |    5 ms | 5.22 ms | 5.31 ms
Uint8Array____: 0-1000000  | 6.06 ms/iter | (5.86 ms … 7.62 ms) | 6.07 ms | 7.62 ms | 7.62 ms
