import { BLOCK_MAXSIZE } from "../node_modules/assemblyscript/std/assembly/rt/common.ts";
import { Runtime } from "../node_modules/assemblyscript/std/assembly/shared/runtime.ts";
import { E_INVALIDLENGTH } from "../node_modules/assemblyscript/std/assembly/util/error.ts";


abstract class ArrayBufferView {

  readonly buffer: ArrayBuffer;
  @unsafe readonly dataStart: usize;
  readonly byteLength: i32;

  get byteOffset(): i32 {
    return <i32>(this.dataStart - changetype<usize>(this.buffer));
  }

  protected constructor(length: i32, alignLog2: i32) {
    if (<u32>length > <u32>BLOCK_MAXSIZE >>> alignLog2) throw new RangeError(E_INVALIDLENGTH);
    let buffer = changetype<ArrayBuffer>(__new(length = length << alignLog2, idof<ArrayBuffer>()));
    if (ASC_RUNTIME != Runtime.Incremental) {
      memory.fill(changetype<usize>(buffer), 0, <usize>length);
    }
    this.buffer = buffer; // links
    this.dataStart = changetype<usize>(buffer);
    this.byteLength = length;
  }
}

// BitView is an ArrayBufferView like DataView but with fixed <u64> access and bit level indexing.
class BitView extends ArrayBufferView {

  readonly length : u64;

  constructor(l : u64) {
    const U64_SIZE : i32 = <u64>l + 63 >>> 6 as i32; // Total number of 64bit blocks in the BitView.

    super(U64_SIZE, alignof<u64>());
    this.length = l;
  }
}

export function __byteLength(ptr : usize) : i32 {
  return changetype<BitView>(ptr).byteLength as i32;
}

export function __dataStart(ptr : usize) : i32 {
  return changetype<BitView>(ptr).dataStart as i32;
}

export function __length(ptr : usize) : f64 {
  return changetype<BitView>(ptr).length as f64;
}

export function new_BitView(l : f64) : i32 {
  const ba : BitView = new BitView(<u64>l);
  return changetype<i32>(ba) >>> 0;
}

export function all(ptr : usize) : u8 {
  const BITVIEW : BitView = changetype<BitView>(ptr),
        EXCESS : u64      = BITVIEW.length & 63;
  let r : bool = true,
      i : i32  = <i32>BITVIEW.dataStart,
      l : i32  = i + BITVIEW.byteLength - EXCESS ? 8 : 0;

  while (r && i < l){
    r = load<u64>(i) === u64.MAX_VALUE;
    i += 8;
  }
  if (r && EXCESS) r = (load<u64>(i) | (u64.MAX_VALUE >>> EXCESS)) === u64.MAX_VALUE;
  return r ? 1 : 0;
}

export function and_or_xor(ptrA : usize, ptrB : usize, op : u8) : i32 {
  const BITVIEW_A : BitView = changetype<BitView>(<usize>ptrA),
        BITVIEW_B : BitView = changetype<BitView>(<usize>ptrB),
        BITVIEW_R : BitView = new BitView(min<u64>(BITVIEW_A.length, BITVIEW_B.length));
  
  switch (op){
    case 1: for (let i : i32 = 0; i < BITVIEW_R.byteLength; i += 8) store<u64>(BITVIEW_R.dataStart + i, load<u64>(BITVIEW_A.dataStart + i) & load<u64>(BITVIEW_B.dataStart + i)); break;
    case 2: for (let i : i32 = 0; i < BITVIEW_R.byteLength; i += 8) store<u64>(BITVIEW_R.dataStart + i, load<u64>(BITVIEW_A.dataStart + i) | load<u64>(BITVIEW_B.dataStart + i)); break;
    case 3: for (let i : i32 = 0; i < BITVIEW_R.byteLength; i += 8) store<u64>(BITVIEW_R.dataStart + i, load<u64>(BITVIEW_A.dataStart + i) ^ load<u64>(BITVIEW_B.dataStart + i)); break;
  }
  return changetype<i32>(BITVIEW_R) >>> 0;
}

export function any(ptr : usize) : u8 {
  const BITVIEW : BitView = changetype<BitView>(ptr);
  let r : bool = true,
      i : i32  = <i32>BITVIEW.dataStart,
      l : i32  = i + BITVIEW.byteLength;

  while (r && i < l){
    r = load<u64>(i) === 0;
    i += 8;
  }
  return r ? 0 : 1;
}

export function compare(ptrA : usize, ptrB : usize) : i32 {
  const BITVIEW_A = changetype<BitView>(ptrA),
        BITVIEW_B = changetype<BitView>(ptrB);
  if (BITVIEW_A.byteLength !== BITVIEW_B.byteLength) throw new RangeError("Lengths are not equal..!");
  return memory.compare(BITVIEW_A.dataStart, BITVIEW_B.dataStart, BITVIEW_A.byteLength);
}

export function not(ptr : usize) : i32 {
  const BITVIEW_A : BitView = changetype<BitView>(<usize>ptr),
        BITVIEW_R : BitView = new BitView(BITVIEW_A.length);
  for (let i : i32 = 0; i < BITVIEW_R.byteLength; i += 8) store<u64>(i + <i32>BITVIEW_R.dataStart, ~load<u64>(i + <i32>BITVIEW_A.dataStart));
  return changetype<i32>(BITVIEW_R) >>> 0;
}

export function popcnt(ptr : usize) : f64 {
  const BITVIEW : BitView  = changetype<BitView>(ptr),
        END : usize        = BITVIEW.dataStart + BITVIEW.byteLength;
  let r : u64   = 0;
  
  for (let index : usize = BITVIEW.dataStart; index < END; index += 8) r += i64.popcnt(load<u64>(index));
  return r as f64;
}

export function slice(ptr : usize, start : f64, end : f64) : i32 {
  const BITVIEW_A : BitView = changetype<BitView>(ptr),
        BITVIEW_R : BitView = new BitView(<u64>(end - start)),
        COPY_START : usize  = BITVIEW_A.dataStart + (<u64>start >>> 6) as usize,
        BIT_OFFSET : u8     = (<u64>start & 63) as u8;
  let left : u64,
      right : u64,
      next : i32;
  for (let cursor : i32 = 0; cursor < BITVIEW_R.byteLength; cursor += 8){
    next = cursor + 8;
    left = load<u64>(COPY_START + cursor) << BIT_OFFSET;
    right = next < BITVIEW_R.byteLength ? load<u64>(COPY_START + next) >>> (64 - BIT_OFFSET)
                                        : 0;
    store<u64>(BITVIEW_R.dataStart + cursor, left | right);
  }
  return changetype<i32>(BITVIEW_R) >>> 0;
}

export function toString(ptr : usize) : string {
  const BITVIEW : BitView  = changetype<BitView>(ptr),
        FIRST_WORD : u64   = load<u64>(BITVIEW.dataStart),
        LAST_WORD : u64    = load<u64>(BITVIEW.dataStart + BITVIEW.byteLength - 8),
        START_STR : string = bswap<u64>(FIRST_WORD).toString(2).padStart(64,"0").slice(0, <i32>min(BITVIEW.length, 64)),
        MID_STR : string   = BITVIEW.length > 128 ? `.. ${(BITVIEW.byteLength >>> 3) - 2 << 6} more bits ..` : "",
        END_STR : string   = BITVIEW.length > 64 ? bswap<u64>(LAST_WORD).toString(2).padStart(64,"0").slice(0, <i32>BITVIEW.length & 63 || 64) : "";
  return  START_STR + MID_STR + END_STR;
}

export function wipe(ptr : usize, val : u8) : void {
  const BITVIEW : BitView = changetype<BitView>(ptr),
        END : usize       = BITVIEW.dataStart + BITVIEW.byteLength;
  switch (val){
    case 0 : memory.fill(BITVIEW.dataStart, u8.MIN_VALUE, BITVIEW.byteLength); break;
    case 1 : memory.fill(BITVIEW.dataStart, u8.MAX_VALUE, BITVIEW.byteLength); break;
    default: for (let index : usize = BITVIEW.dataStart; index < END; index += 8) store<u64>(index, (<u64>(Math.random() * u32.MAX_VALUE) << 32) | <u32>(Math.random() * u32.MAX_VALUE)); 
  }
}