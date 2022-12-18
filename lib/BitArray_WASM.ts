import { instantiate } from "../build/release.js";

const BV = await instantiate(await WebAssembly.compileStreaming(fetch(new URL("../build/release.wasm",import.meta.url))),{}),
      FR = new FinalizationRegistry(__garbage);

function __garbage(ptr : number) : void {
  BV.__release(ptr);
}

export class BitArray {
  private ptr : number;
  readonly length : number;
  constructor(n : number, fromAS : boolean = false){
    this.ptr = fromAS ? n
                      : BV.new_BitView(n);
    this.length = BV.length(this.ptr);
    FR.register(this, this.ptr);
  }

  all() : boolean {
    return !!BV.all(this.ptr);
  }

  and(x: BitArray) : BitArray {
    const ptr = BV.and_or_xor(this.ptr, x.ptr, 1);
    return new BitArray(ptr,true);
  }

  any() : boolean {
    return !!BV.any(this.ptr);
  }

  at(i : number) : number {
    return BV.at(this.ptr, i) ? 1 : 0;
  }

  isEqual(x : BitArray) : boolean {
    return !BV.compare(this.ptr,x.ptr);
  }

  not() : BitArray {
    const ptr = BV.not(this.ptr);
    return new BitArray(ptr,true);
  }

  or(x: BitArray) : BitArray {
    const ptr = BV.and_or_xor(this.ptr, x.ptr, 2);
    return new BitArray(ptr,true);
  }

  popcnt() : number {
    return BV.popcnt(this.ptr) >>> 0;
  }

  reset(i: number) : BitArray {
    BV.reset(this.ptr, i);
    return this;
  }

  set(i : number) : BitArray {
    BV.set(this.ptr,i);
    return this;
  }

  slice(start = 0, end = -1){
    const ptr = BV.slice(this.ptr, start, end);
    return new BitArray(ptr,true);
  }

  toggle(i : number) : BitArray {
    BV.toggle(this.ptr,i);
    return this;
  }

  toString() : string {
    return BV.toString(this.ptr);
  }

  wipe(n : number) : BitArray {
    BV.wipe(this.ptr,n);
    return this;
  }

  xor(x: BitArray) : BitArray {
    const ptr = BV.and_or_xor(this.ptr, x.ptr, 3);
    return new BitArray(ptr,true);
  }

  *[Symbol.iterator]() : Generator<number> {
     let i = 0;
     while (i < this.length) yield this.at(i++);
  }
}
