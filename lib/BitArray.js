export default class BitArray extends DataView {
	// deno-lint-ignore constructor-super
  constructor(sizeOrBuffer) {
    let err = e => {throw new Error(e);},
        arr;
	                                                                                                                                                     // If the supplied ArrayBuffer is not a multiple of 4 bytes then create a
    sizeOrBuffer instanceof ArrayBuffer ? ( sizeOrBuffer.byteLength % 4 && ( arr = new Uint8Array(new ArrayBuffer((sizeOrBuffer.byteLength + 3) & ~3)) // TypedArray with smallest multiple of 4 byteLength and > sizeOrBuffer.byteLength
		                                                                       , arr.set(new Uint8Array(sizeOrBuffer))                                     // Fill the obtained TypedArray.buffer with supplied buffer starting from 0
																		                                       , sizeOrBuffer = arr.buffer.slice()                                         // Assign sizeOrBuffer to a copy of the obtained ArrayBuffer which is now divisible
	                                                                         )                                                                           // by 4. BitArray.buffer doesn't reference arr.buffer so arr is now available for GC.
		                                      , super(sizeOrBuffer)
	                                        )                                                                                                            :
    Number.isInteger(sizeOrBuffer)      ? ( sizeOrBuffer > 0x03ff000000 && err("BitArray size can not exceed 17163091968")                             // Prevent too large sizes
		                                      , super(new ArrayBuffer(Number((BigInt(sizeOrBuffer + 31) & ~31n) >> 3n)))                                   // Sets ArrayBuffer.byteLength to multiples of 4 bytes (32 bits)));
	                                        )                                                                                                            :
    /* otherwise */                       err("An integer size or viewable buffer must be provided when initalizing a BitArray");

    Object.defineProperty( this
                         , "length"
                         , { configurable: false
                           , enumerable  : false
                           , writable    : false
                           , value       : this.buffer.byteLength * 8
  	                       }
                         );
  }

	get popcnt(){
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

  all(){
  // Returns true if all bits in the BitArray are set.
    let len = this.buffer.byteLength,
        res = true;
    for (var i = 0; res && i < len; i += 4) res = this.getUint32(i) === 0xffffffff;
    return res;
  }

  and(bar, inPlace = false){
  // And of this and bar. Example: 1100 & 1001 = 1000
    let len = Math.min(this.buffer.byteLength,bar.buffer.byteLength),
        res = inPlace ? this : new BitArray(len * 8);
    for (var i = 0; i < len; i += 4) res.setUint32(i,this.getUint32(i) & bar.getUint32(i));
    return res;
  }

  any(){
  // Returns true if any of the bits in the BitArray are set. If returns false then all bits are 0
    let len = this.buffer.byteLength,
        res = true;
    for (var i = 0; res && i < len; i += 4) res = this.getUint32(i) === 0;
    return !res;
  }

  at(i){
  // Fetches the value at the given index
    return this.getUint8(i / 8) & (1 << (i & 7)) ? 1 : 0;
  }

  clear(){
  // Resets the BitArray in place
    for (let i = 0, len = this.buffer.byteLength; i < len; i += 4) this.setUint32(i,0);
  }

  fill(){
  // Sets the BitArray in place
    for (let i = 0, len = this.buffer.byteLength; i < len; i += 4) this.setUint32(i,0xffffffff);
  }

  not(inPlace = false){
  // Flips all the bits in this buffer. Example: 1100 = 0011
    let len = this.buffer.byteLength,
    res = inPlace ? this : new BitArray(len * 8);
    for (var i = 0; i < len; i += 4) res.setUint32(i,~(this.getUint32(i) >>> 0));
    return res;
  }

  or(bar, inPlace = false){
  // Or of this and bar. Example: 1100 & 1001 = 1101
    let len = Math.min(this.buffer.byteLength,bar.buffer.byteLength),
    res = inPlace ? this : new BitArray(len * 8);
    for (var i = 0; i < len; i += 4) res.setUint32(i,this.getUint32(i) | bar.getUint32(i));
    return res;
  }

  reset(i){
	// Resets the value at the given index.
    this.setUint8(i / 8, this.getUint8(i / 8) & ~(1 << (i & 7)));
  }

  set(i){
	// Sets the value at the given index.
    this.setUint8(i / 8, this.getUint8(i / 8) | (1 << (i & 7)));
  }

  slice(a = 0, b = this.buffer.byteLength){
  // Slices BitArray and returns a new BitArray with buffer byteLength in multiples of 4 bytes (32 bits)
  // The default argument values instantiate a clone.
    b = a + Number((BigInt(b - a + 31) & ~31n));
    return new BitArray(this.buffer.slice(a, b));
  }

  toggle(i){
	// Flips the value at the given index
    this.setUint8(i / 8, this.getUint8(i / 8) ^ (1 << (n & 7)));
  }

  // For efficiency maps this.buffer to an Uint8Array and byte by byte reverses the rank of bits and stringifies by
  // reducing. However stringifying a huge BitArray is meaningless. Perhaps limiting the string size to 128 is reasonable.
  toString(){
    return new Uint8Array(this.buffer).reduce((p,c) => p + ((BigInt(c)* 0x0202020202n & 0x010884422010n) % 1023n).toString(2).padStart(8,"0"),"");
  }

  xor(bar, inPlace = false){
	// Xor of this and bar. Example: 1100 & 1001 = 0101;
    let len = Math.min(this.buffer.byteLength,bar.buffer.byteLength),
    res = inPlace ? this : new BitArray(len * 8);
    for (var i = 0; i < len; i += 4) res.setUint32(i,this.getUint32(i) ^ bar.getUint32(i));
    return res;
  }
}
