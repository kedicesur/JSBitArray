// The entry file of your WebAssembly module.

class BitArray extends DataView {
  readonly length : u32;
  readonly size   : u32;
  [key : string]  : boolean;

  constructor(size : u32, buffer : ArrayBuffer ) {
    let err : (e : string) => void = e => {throw new Error(e);},
        arr : Uint8Array,
        buf : ArrayBuffer;

    /* If 'buffer' with length which is not a multiple of 4 bytes then create a new TypedArray with correct ArrayBuffer.
       length which is > sizeOrBuffer.byteLength. Fill the obtained TypedArray.buffer with supplied buffer starting
       from 0 and return a copy of the obtained ArrayBuffer which is divisible by 4 in length. By returning a sliced
       copy of arr.buffer, arr is not kept under closure and "should be" eligible for GC.

       If 'size' is a number then keep it within maximum indexable size and create an ArrayBuffer with a minimum
       byteLength which is a multiples of 4 bytes (32 bits) and > sizeOrBuffer.

       If 'size' is not a positive integer and 'buffer' is not an ArrayBuffer then throw an error.
    */

    buf = buffer instanceof ArrayBuffer ? ( size = buffer.byteLength * 8
                                          , buffer.byteLength % 4 ? ( arr = Uint8Array.wrap(buffer,0,(buffer.byteLength + 3) & ~3)
                                                                    , arr.buffer.slice(0)
                                                                    )
                                                                  : buffer
                                          )                                                                                       :
          Number.isInteger(size)        ? ( size > 0x07ffffffe0 && err("BitArray size can not exceed 34359738336")
                                          , new ArrayBuffer(((size + 31) & ~(<u64>31)) >> 3)
                                          )                                                                                       :
          /* otherwise */                 err("An integer size or an ArrayBuffer must be provided when initalizing a BitArray");
    
    super(buf);
    this.length = this.buffer.byteLength * 8;
    this.size   = size;
  }

  get popcnt() : u32 {
    let cnt = 0,
        idx = 0,
        len = this.buffer.byteLength,
        mod = len % 8;
        
    if (mod && mod !== 4) throw new TypeError("Invalid BitArray.buffer.byteLength");
    len -= mod;
    if (len) for (; idx < len; idx += 8) cnt += <u32>popcnt(this.getUint64(idx));
    if (mod) cnt += popcnt(this.getUint32(idx));
    return cnt;
  }

  all() : boolean {
  // Returns true if all bits in the BitArray are set.
    let idx = 0,
        len = this.buffer.byteLength,
        mod = len % 8,
        res = true;

    if (mod && mod !== 4) throw new TypeError("Invalid BitArray.buffer.byteLength");
    len -= mod;
    if (len) for (; res && idx < len; idx += 8) res = this.getUint64(idx) === 0xffffffffffffffff;
    res && !!mod && (res = this.getUint32(idx) === 0xffffffff);
    return res;
  }

  and(bar : BitArray, inPlace : boolean = false) : BitArray {
  // And of this and bar. Example: 1100 & 1001 = 1000
    let idx = 0,
        len = Math.min(this.buffer.byteLength,bar.buffer.byteLength),
        mod = len % 8,
        res = inPlace ? this : this.slice();

    if (mod && mod !== 4) throw new TypeError("Invalid BitArray.buffer.byteLength");
    if (this === bar) return res;
    len -= mod;
    if (len) for (; idx < len; idx += 8) res.setUint64(idx, this.getUint64(idx) & bar.getUint64(idx));
    if (mod) res.setUint32(idx, this.getUint32(idx) & bar.getUint32(idx));
    return res;
  }

  any() : boolean {
  // Returns true if all bits in the BitArray are set.
    let idx = 0,
        len = this.buffer.byteLength,
        mod = len % 8,
        res = true;

    if (mod && mod !== 4) throw new TypeError("Invalid BitArray.buffer.byteLength");
    len -= mod;
    if (len) for (; res && idx < len; idx += 8) res = this.getUint64(idx) === 0;
    res && !!mod && (res = this.getUint32(idx) === 0);
    return !res;
  }
  
  at(i : u32) : u32 {
  // Fetches the value at the given index
    return this.getUint8((i / 8) >>> 0) & (128 >> (<u8>i & 7)) ? 1 : 0;
  }

  isEqual(bar : BitArray) : boolean {
  // Checks if two BitArrays have the same bits set
    let idx = 0,
        len = this.buffer.byteLength,
        mod = len % 8,
        res = true;

    if (mod && mod !== 4) throw new TypeError("Invalid BitArray.buffer.byteLength");
    if (this === bar) return res;
    len -= mod;
    if (len) for (; res && idx < len; idx += 8) res = this.getUint64(idx) === bar.getUint64(idx);
    res && !!mod && (res = this.getUint32(idx) === bar.getUint32(idx));
    return res;
  }

  not(inPlace : boolean = false) : BitArray {
  // Flips all the bits in this buffer. Example: 1100 = 0011
    let idx = 0,
        len = this.buffer.byteLength,
        mod = len % 8,
        res = inPlace ? this : this.slice();

    if (mod && mod !== 4) throw new TypeError("Invalid BitArray.buffer.byteLength");
    len -= mod;
    if (len) for (; idx < len; idx += 8) res.setUint64(idx,~(this.getUint64(idx) >>> 0));
    if (mod) res.setUint32(idx,~(this.getUint32(idx) >>> 0));
    return res;
  }

  or(bar : BitArray, inPlace : boolean = false) : BitArray {
  // And of this and bar. Example: 1100 & 1001 = 1000
    let idx = 0,
        len = Math.min(this.buffer.byteLength,bar.buffer.byteLength),
        mod = len % 8,
        res = inPlace ? this : this.slice();

    if (mod && mod !== 4) throw new TypeError("Invalid BitArray.buffer.byteLength");
    if (this === bar) return res;
    len -= mod;
    if (len) for (; idx < len; idx += 8) res.setUint64(idx, this.getUint64(idx) | bar.getUint64(idx));
    if (mod) res.setUint32(idx, this.getUint32(idx) | bar.getUint32(idx))
    return res;
  }
  
  randomize() : BitArray {
  // Sets or resets every bit in the BitArray randomly in place
    let idx = 0,
        len = this.buffer.byteLength,
        mod = len % 8;
    
    if (mod && mod !== 4) throw new TypeError("Invalid BitArray.buffer.byteLength");
    len -= mod;
    if (len) for (; idx < len; idx += 8) this.setUint64(idx, <u64>(Math.random() * f64.MAX_VALUE));
    if (mod) this.setUint32(idx, <u32>(Math.random() * u32.MAX_VALUE));
    return this;
  }

  reset(i : u32) : BitArray{
  // Resets the value at the given index.
    const j = (i / 8) >>> 0;
    this.setUint8(j, this.getUint8(j) & ~(128 >> (<u8>i & 7)));
    return this;
  }

  set(i : u32) : BitArray{
  // Sets the value at the given index.
    const j = (i / 8) >>> 0;
    this.setUint8(j, this.getUint8(j) | (128 >> (<u8>i & 7)));
    return this;
  }

  slice(a : u32 = 0, b : u32 = this.buffer.byteLength) : BitArray {
  // Slices BitArray and returns a new BitArray with buffer byteLength in multiples of 4 bytes (32 bits)
  // The default argument values instantiate a clone.
    if (a > b || b > (<u32>this.buffer.byteLength)) throw new RangeError("Arguments are out of limits");
    b = a + ((b - a + 3) & ~3);
    return new BitArray(false, this.buffer.slice(a, b));
  }

  toggle(i : u32) : BitArray{
  // Flips the value at the given index
    const j = (i / 8) >>> 0;
    this.setUint8(j, this.getUint8(j) ^ (128 >> (<u8>i & 7)));
    return this;
  }

  // For efficiency maps this.buffer to an Uint8Array and byte by byte by reducing.
  // However stringifying a huge BitArray is meaningless. Perhaps limiting the string size to 128 is reasonable.
  toString() : string {
    let idx = 0,
        len = this.buffer.byteLength,
        mod = len % 8,
        str = "";

    if (mod && mod !== 4) throw new TypeError("Invalid BitArray.buffer.byteLength");
    len -= mod;  
    if (len) for (; idx < len; idx += 8) str += this.getUint64(idx).toString(2).padStart(64,"0");
    if (mod) str += this.getUint32(idx).toString(2).padStart(64,"0");
    return str;
  }

  wipe(b : boolean) : BitArray {
  // Sets the BitArray in place
    let idx = 0,
        len = this.buffer.byteLength,
        mod = len % 8,
        val = b ? u64.MAX_VALUE : 0;

    if (mod && mod !== 4) throw new TypeError("Invalid BitArray.buffer.byteLength");
    len -= mod;  
    if (len) for (; idx < len; idx += 8) this.setUint64(idx, val);
    if (mod) this.setUint32(idx,<u32>val)
    return this;
  }

  xor(bar : BitArray, inPlace : boolean = false) : BitArray {
  // And of this and bar. Example: 1100 & 1001 = 1000
    let idx = 0,
        len = Math.min(this.buffer.byteLength,bar.buffer.byteLength),
        mod = len % 8,
        res = inPlace ? this : this.slice();

    if (mod && mod !== 4) throw new TypeError("Invalid BitArray.buffer.byteLength");
    if (this === bar) return res.wipe(false);
    len -= mod;
    if (len) for (; idx < len; idx += 8) res.setUint64(idx, this.getUint64(idx) ^ bar.getUint64(idx));
    if (mod) res.setUint32(idx, this.getUint32(idx) ^ bar.getUint32(idx))
    return res;
  }
/*
  *[Symbol.iterator]() : Generator<number> {
     let i = 0,
         l = this.size;
     while (i < l) yield this.at(i++);
  }
*/
}

export function new_BitArray(n : u32, ab: ArrayBuffer) : BitArray {
  return new BitArray(n,ab);
}

export function all(target : BitArray) : boolean {
  return target.all();
}

export function and(target : BitArray, source : BitArray, inPlace : boolean) : BitArray {
  return target.and(source, inPlace);
}

export function any(target : BitArray) : boolean {
  return target.any();
}

export function at(target : BitArray, i : u32) : u32 {
  return target.at(i);
}

export function isEqual(target : BitArray, source : BitArray) : boolean {
  return target.isEqual(source);
}

export function not(target : BitArray, inPlace : boolean) : BitArray {
  return target.not(inPlace);
}

export function or(target : BitArray, source : BitArray, inPlace : boolean) : BitArray {
  return target.or(source,inPlace);
}

export function popcount(target : BitArray) : u32 {
  return target.popcnt;
}

export function randomize(target : BitArray) : BitArray {
  return target.randomize();
}

export function reset(Target : BitArray, i : u32) : BitArray {
  return Target.reset(i);
}

export function set(Target : BitArray, i : u32) : BitArray {
  return Target.set(i);
}

export function slice(target : BitArray, a : u32, b : u32) : BitArray {
  return target.slice(a,b);
}

export function toggle(Target : BitArray, i : u32) : BitArray {
  return Target.toggle(i);
}

export function toString(target : BitArray) : string {
  return target.toString();
}

export function wipe(target : BitArray, b : boolean = 0) : BitArray {
  return target.wipe(b);
}

export function xor(target : BitArray, source : BitArray, inPlace : boolean) : BitArray {
  return target.xor(source,inPlace);
}
