import * as Interface from "../build/release.js";

export class BitArray_WASM {
  private _BA : ReturnType<typeof Interface.new_BitArray>; // an opaque reference to the BitArray created in AssemblyScript

  constructor(sizeOrBuffer : number | ArrayBuffer) {
    const err : (e : string) => never = e => {throw new Error(e);};

    this._BA = sizeOrBuffer instanceof ArrayBuffer                ? Interface.from_ArrayBuffer(sizeOrBuffer):
               Number.isInteger(sizeOrBuffer)&& sizeOrBuffer >= 0 ? Interface.new_BitArray(sizeOrBuffer)    :
               /* otherwise */                                      err("An integer size or an ArrayBuffer must be provided when initalizing a BitArray");
  }

  get length () : number {
    return Interface.length(this._BA) >>> 0;
  }

  get popcnt() : number {
    return Interface.popcount(this._BA) >>> 0;
  }

  get size() : number {
    return Interface.size(this._BA) >>> 0;
  }

  all() : boolean {
    return Interface.all(this._BA);
  }

  and(source : BitArray_WASM, inPlace : boolean = false) : BitArray_WASM {
    let tmp;
    return inPlace ? ( this._BA = Interface.and(this._BA, source._BA, inPlace)
                     , this
                     )
                   : ( tmp = new BitArray_WASM(0)
                     , tmp._BA = Interface.and(this._BA, source._BA, inPlace)
                     , tmp
                     );
  }

  any() : boolean {
    return Interface.any(this._BA);
  }

  at(i : number) : number {
    return Interface.at(this._BA, i);
  }

  isEqual(source : BitArray_WASM) : boolean {
    return Interface.isEqual(this._BA, source._BA);
  }

  not(inPlace : boolean = false) : BitArray_WASM {
    let tmp;
    return inPlace ? ( this._BA = Interface.not(this._BA, inPlace)
                     , this
                     )
                   : ( tmp = new BitArray_WASM(0)
                     , tmp._BA = Interface.not(this._BA, inPlace)
                     , tmp
                     );
  }

  or(source : BitArray_WASM, inPlace : boolean = false) : BitArray_WASM {
    let tmp;
    return inPlace ? ( this._BA = Interface.or(this._BA, source._BA, inPlace)
                     , this
                     )
                   : ( tmp = new BitArray_WASM(0)
                     , tmp._BA = Interface.or(this._BA, source._BA, inPlace)
                     , tmp
                     );
  }

  randomize() : BitArray_WASM {
    this._BA = Interface.randomize(this._BA);
    return this;
  }

  reset(i : number) : BitArray_WASM {
    Interface.reset(this._BA, i);
    return this;
  }

  set(i : number) : BitArray_WASM {
    Interface.set(this._BA, i);
    return this;
  }

  slice(a: number = 0, b : number = this.length >> 3) : BitArray_WASM {
    const res = new BitArray_WASM(0);
    res._BA = Interface.slice(this._BA, a, b);
    return res;
  }

  toggle(i : number) : BitArray_WASM {
    Interface.toggle(this._BA, i);
    return this;
  }

  toString() : string {
    return Interface.toString(this._BA);
  }

  wipe(b : boolean = false) : BitArray_WASM {
    Interface.wipe(this._BA, b);
    return this;
  }

  xor(source : BitArray_WASM, inPlace : boolean = false) : BitArray_WASM {
    let tmp;
    return inPlace ? ( this._BA = Interface.xor(this._BA, source._BA, inPlace)
                     , this
                     )
                   : ( tmp = new BitArray_WASM(0)
                     , tmp._BA = Interface.xor(this._BA, source._BA, inPlace)
                     , tmp
                     );
  }
	
  *[Symbol.iterator]() : Generator<number> {
     let i = 0,
         l = this.size;
     while (i < l) yield this.at(i++);
  }

}
