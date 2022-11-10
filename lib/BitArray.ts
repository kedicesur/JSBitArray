interface BA extends DataView {
  readonly length : number;
  readonly popcnt : number;
  readonly size   : number;
}

export default class BitArray extends DataView implements BA {
  readonly length : number;
  readonly size   : number;

  static isConvertable(x : unknown) : boolean {
    return x instanceof BitArray || ArrayBuffer.isView(x);
  }

  static isBitArray(x : unknown) : boolean {
    return x instanceof BitArray;
  }

  static from(a : unknown[] | ArrayBufferView) : BitArray {
    return Array.isArray(a) ? a.reduce((ba,e,i) => (!!e && ba.set(i), ba), new BitArray(a.length))
                            : new BitArray (a.buffer);
  }

  constructor(sizeOrBuffer : number | ArrayBuffer) {
    let err : (e : string) => never = e => {throw new Error(e);},
        arr : Uint8Array,
        buf : ArrayBuffer,
        siz = 0;

    /* If sizeOrBuffer is an ArrayBuffer with length which is not a multiple of 4 bytes then create a new TypedArray
       with correct ArrayBuffer.length which is > sizeOrBuffer.byteLength. Fill the obtained TypedArray.buffer with 
       supplied buffer starting from 0 and return a copy of the obtained ArrayBuffer which is divisible by 4 in length.
       By returning a sliced copy of arr.buffer, arr is not kept under closure and eligible for GC.

       If sizeOrBuffer is a number then keep it within maximum indexable size and create an ArrayBuffer with a minimum
       byteLength which is a multiples of 4 bytes (32 bits) and > sizeOrBuffer.

       If SizeOrBuffer is neither positive integer nor an ArrayBuffer then throw an error.
    */

    buf = sizeOrBuffer instanceof ArrayBuffer ? ( siz = sizeOrBuffer.byteLength * 8
                                                , sizeOrBuffer.byteLength % 4 ? ( arr = new Uint8Array(new ArrayBuffer((sizeOrBuffer.byteLength + 3) & ~3))
		                                                                , arr.set(new Uint8Array(sizeOrBuffer))
										, arr.buffer.slice(0)
	                                                                        )
                                                                              : sizeOrBuffer
                                                ) :
          Number.isInteger(sizeOrBuffer)      ? ( siz = sizeOrBuffer
                                                , siz > 0x07ffffffe0 && err("BitArray size can not exceed 34359738336")
		                                , new ArrayBuffer(Number((BigInt(siz + 31) & ~31n) >> 3n))
	                                        ) :
          /* otherwise */                       err("An integer size or an ArrayBuffer must be provided when initalizing a BitArray");
    
    super(buf);
    this.length = this.buffer.byteLength * 8;
    this.size   = siz;
  }

	get popcnt() : number {
		let m1  = 0x55555555,
		    m2  = 0x33333333,
		    m4  = 0x0f0f0f0f,
		    h01 = 0x01010101,
		    pc  = 0,
		    x;

		for (let i = 0; i < this.buffer.byteLength; i += 4){
			 x = this.getUint32(i);
			 x -= (x >> 1) & m1;             //put count of each 2 bits into those 2 bits
			 x = (x & m2) + ((x >> 2) & m2); //put count of each 4 bits into those 4 bits
			 x = (x + (x >> 4)) & m4;        //put count of each 8 bits into those 8 bits
			 pc += (x * h01) >> 24;
		}
		return pc;
	}

  all() : boolean {
  // Returns true if all bits in the BitArray are set.
    let len = this.buffer.byteLength,
        res = true;

    for (let i = 0; res && i < len; i += 4) res = this.getUint32(i) === 0xffffffff;
    return res;
  }

  and(bar : BitArray, inPlace = false) : BitArray {
  // And of this and bar. Example: 1100 & 1001 = 1000
    const len = Math.min(this.buffer.byteLength,bar.buffer.byteLength),
          res = inPlace ? this : this.slice();

    if (this === bar) return res;
    for (let i = 0; i < len; i += 4) res.setUint32(i,this.getUint32(i) & bar.getUint32(i));
    return res;
  }

  any() : boolean {
  // Returns true if any of the bits in the BitArray are set. If returns false then all bits are 0
    let len = this.buffer.byteLength,
        res = true;

    for (let i = 0; res && i < len; i += 4) res = this.getUint32(i) === 0;
    return !res;
  }

  at(i : number) : number {
  // Fetches the value at the given index
    return this.getUint8((i / 8) >>> 0) & (128 >> (i & 7)) ? 1 : 0;
  }

  clear() : BitArray {
  // Resets the BitArray in place
    for (let i = 0, len = this.buffer.byteLength; i < len; i += 4) this.setUint32(i,0);
    return this;
  }

  isEqual(bar : BitArray) : boolean {
  // Checks if two BitArrays have the same bits set
    let len = this.buffer.byteLength,
        res = true;
    if (this === bar) return res;
    for (let i = 0; res && i < len; i += 4) res = this.getUint32(i) === bar.getUint32(i);
    return res;
  }

  fill() : BitArray {
  // Sets the BitArray in place
    for (let i = 0, len = this.buffer.byteLength; i < len; i += 4) this.setUint32(i, 0xffffffff);
    return this;
  }

  not(inPlace = false) : BitArray {
  // Flips all the bits in this buffer. Example: 1100 = 0011
    const len = this.buffer.byteLength,
          res = inPlace ? this : this.slice();
    for (let i = 0; i < len; i += 4) res.setUint32(i,~(this.getUint32(i) >>> 0));
    return res;
  }

  or(bar : BitArray, inPlace = false){
  // Or of this and bar. Example: 1100 & 1001 = 1101
    const len = Math.min(this.buffer.byteLength,bar.buffer.byteLength),
          res = inPlace ? this : this.slice();
    if (this === bar) return res;
    for (let i = 0; i < len; i += 4) res.setUint32(i,this.getUint32(i) | bar.getUint32(i));
    return res;
  }

  randomize() : BitArray{
  // Sets or resets every bit in the BitArray randomly in place
    for (let i = 0, len = this.buffer.byteLength; i < len; i += 4) this.setUint32(i, Math.random() * 0xffffffff);
    return this;
  }

  reset(i : number) : BitArray{
  // Resets the value at the given index.
    const j = (i / 8) >>> 0;
    this.setUint8(j, this.getUint8(j) & ~(128 >> (i & 7)));
    return this;
  }

  set(i : number) : BitArray{
  // Sets the value at the given index.
    const j = (i / 8) >>> 0;
    this.setUint8(j, this.getUint8(j) | (128 >> (i & 7)));
    return this;
  }

  slice(a = 0, b = this.buffer.byteLength) : BitArray{
  // Slices BitArray and returns a new BitArray with buffer byteLength in multiples of 4 bytes (32 bits)
  // The default argument values instantiate a clone.
    b = a + Number((BigInt(b - a + 31) & ~31n));
    return new BitArray(this.buffer.slice(a, b));
  }

  toggle(i : number) : BitArray{
  // Flips the value at the given index
    const j = (i / 8) >>> 0;
    this.setUint8(j, this.getUint8(j) ^ (128 >> (i & 7)));
    return this;
  }

  // For efficiency maps this.buffer to an Uint8Array and byte by byte by reducing.
  // However stringifying a huge BitArray is meaningless. Perhaps limiting the string size to 128 is reasonable.
  toString() : string {
    return new Uint8Array(this.buffer).reduce((p,c) => p + c.toString(2).padStart(8,"0"),"");
  }

  xor(bar : BitArray, inPlace = false) : BitArray {
  // Xor of this and bar. Example: 1100 & 1001 = 0101;
    const len = Math.min(this.buffer.byteLength,bar.buffer.byteLength),
          res = inPlace ? this : this.slice();

    if(this === bar) res.clear();
    for (let i = 0; i < len; i += 4) res.setUint32(i,this.getUint32(i) ^ bar.getUint32(i));
    return res;
  }
	
  *[Symbol.iterator]() : Generator<number> {
     let i = 0,
         l = this.size;
     while (i < l) yield this.at(i++);
  }
}
