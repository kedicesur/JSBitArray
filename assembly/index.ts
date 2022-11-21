// The entry file of your WebAssembly module.
import { OBJECT_MAXSIZE } from "../node_modules/assemblyscript/std/assembly/rt/common";

class BitArray extends DataView {
  readonly length : u64;
  readonly size   : u64;

  constructor(size : u64, ab : ArrayBuffer) {
    super(ab);
    this.size   = size;
    this.length = this.buffer.byteLength * 8;
  }

  get popcnt() : u64 {
    let cnt : u64 = 0,
        idx = 0,
        len = this.buffer.byteLength,
        mod = len % 8;
        
    if (mod && mod !== 4) throw new TypeError("Invalid BitArray.buffer.byteLength");
    len -= mod;
    if (len) for (; idx < len; idx += 8) cnt += popcnt(this.getUint64(idx));
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
  
  at(i : u64) : u8 {
  // Fetches the value at the given index
    return this.getUint8(<i32>(i >> 3)) & (128 >> <i8>(i & 7)) ? 1 : 0;
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
    if (len) for (; idx < len; idx += 8) this.setUint64(idx, (<u64>(Math.random() * u32.MAX_VALUE) << 32) | <u32>(Math.random() * u32.MAX_VALUE));
    if (mod) this.setUint32(idx, <u32>(Math.random() * u32.MAX_VALUE));
    return this;
  }

  reset(i : u64) : BitArray{
  // Resets the value at the given index.
    const j = <i32>(i >> 3);
    this.setUint8(j, this.getUint8(j) & ~(128 >> (<u8>i & 7)));
    return this;
  }

  set(i : f64) : BitArray{
  // Sets the value at the given index.
    const j = <i32>(i / 8);
    this.setUint8(j, this.getUint8(j) | (128 >> (<i8>i & 7)));
    return this;
  }

  slice(a : u32 = 0, b : u32 = this.buffer.byteLength) : BitArray {
  // Slices BitArray and returns a new BitArray with buffer byteLength in multiples of 4 bytes (32 bits)
  // The default argument values instantiate a clone.
    if (a > b || b > (<u32>this.buffer.byteLength)) throw new RangeError("Arguments are out of limits");
    b = a + ((b - a + 3) & ~3);
    return new BitArray(false, this.buffer.slice(a, b));
  }

  toggle(i : u64) : BitArray{
  // Flips the value at the given index
    const j = <i32>(i >> 3);
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
    if (mod) str += this.getUint32(idx).toString(2).padStart(32,"0");
    return str;
  }

  wipe(b : boolean) : BitArray {
  // Sets or resets the BitArray in place depending on the boolean value
    let idx = 0,
        len = this.buffer.byteLength,
        mod = len % 8,
        val = b ? u64.MAX_VALUE : 0;

    if (mod && mod !== 4) throw new TypeError("Invalid BitArray.buffer.byteLength");
    len -= mod;  
    if (len) for (; idx < len; idx += 8) this.setUint64(idx, val);
    if (mod) this.setUint32(idx, <u32>val)
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
}

// Exposed interface functions

export function from_ArrayBuffer(ab : ArrayBuffer) : BitArray {
  const xs = (ab.byteLength + 3) & 0xfffffffc,
        sz : u64 = ab.byteLength * 8;
  if (<usize>ab.byteLength > OBJECT_MAXSIZE - 4) throw new RangeError(`Maximum allowed ArrayBuffer size is ${OBJECT_MAXSIZE - 4}`);
  if (xs > ab.byteLength) ab = Uint8Array.wrap(ab,0,xs).buffer;
  return new BitArray(sz,ab);
}

export function new_BitArray(n : f64) : BitArray {
  const byteLength : u32 = <u32>(((<u64>n + 31) & <u64>0x1ffffffe0) >> 3);

  if (n > <f64>OBJECT_MAXSIZE * 8 - 32) throw new RangeError(`Maximum allowed BitArray size is ${OBJECT_MAXSIZE * 8 - 32}`);
  return new BitArray(<u64>n, new ArrayBuffer(byteLength)); // new ArrayBuffer(<u32>Math.ceil(<f32>n/32)*4)
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

export function at(target : BitArray, i : f64) : u8 {
  return target.at(<u64>i);
}

export function isEqual(target : BitArray, source : BitArray) : boolean {
  return target.isEqual(source);
}

export function length(target : BitArray) : f64 {
  return target.length as f64;
}

export function not(target : BitArray, inPlace : boolean) : BitArray {
  return target.not(inPlace);
}

export function or(target : BitArray, source : BitArray, inPlace : boolean) : BitArray {
  return target.or(source,inPlace);
}

export function popcount(target : BitArray) : f64 {
  return target.popcnt as f64;
}

export function randomize(target : BitArray) : BitArray {
  return target.randomize();
}

export function reset(Target : BitArray, i : f64) : BitArray {
  return Target.reset(<u64>i);
}

export function set(Target : BitArray, i : f64) : BitArray {
  return Target.set(i);
}

export function size(target : BitArray) : f64 {
  return target.size as f64;
}

export function slice(target : BitArray, a : u32, b : u32) : BitArray {
  return target.slice(a,b);
}

export function toggle(Target : BitArray, i : f64) : BitArray {
  return Target.toggle(<u64>i);
}

export function toString(target : BitArray) : string {
  return target.toString();
}

export function wipe(target : BitArray, b : boolean = false) : BitArray {
  return target.wipe(b);
}

export function xor(target : BitArray, source : BitArray, inPlace : boolean) : BitArray {
  return target.xor(source,inPlace);
}
