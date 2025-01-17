import { instantiate } from "../build/release.js";
const BV = await instantiate(await WebAssembly.compileStreaming(fetch(new URL("../build/release.wasm", import.meta.url))), {}), FR = new FinalizationRegistry(__garbage);
function __garbage(ptr) {
    //console.log("GC worked..!");
    BV.__unpin(ptr);
}
class DV extends DataView {
    constructor(buffer, byteOffset, byteLength) {
        super(buffer, byteOffset, byteLength);
        Object.defineProperty(this, 'buffer', { enumerable: false,
            writable: false,
            value: null
        });
    }
}
export default class BitArray {
    ptr;
    view;
    length;
    constructor(n, fromWASM = false) {
        this.ptr = fromWASM ? n
            : BV.new_BitView(n);
        this.length = fromWASM ? BV.__length(this.ptr)
            : n;
        this.view = new DataView(BV.memory.buffer, BV.__dataStart(this.ptr), BV.__byteLength(this.ptr));
        BV.__pin(this.ptr);
        FR.register(this, this.ptr);
    }
    get dataView() {
        return new DV(BV.memory.buffer, BV.__dataStart(this.ptr), BV.__byteLength(this.ptr));
    }
    all() {
        return !!BV.all(this.ptr);
    }
    and(x) {
        const ptr = BV.and_or_xor(this.ptr, x.ptr, 1);
        return new BitArray(ptr, true);
    }
    any() {
        return !!BV.any(this.ptr);
    }
    at(i) {
        const BIT_MASK = 0x80 >>> (i & 7);
        try {
            return (this.view.getUint8(i >>> 3) & BIT_MASK) / BIT_MASK;
        }
        catch {
            this.view = new DataView(BV.memory.buffer, BV.__dataStart(this.ptr), BV.__byteLength(this.ptr));
            return (this.view.getUint8(i >>> 3) & BIT_MASK) / BIT_MASK;
        }
    }
    isEqual(x) {
        return !BV.compare(this.ptr, x.ptr);
    }
    not() {
        const ptr = BV.not(this.ptr);
        return new BitArray(ptr, true);
    }
    or(x) {
        const ptr = BV.and_or_xor(this.ptr, x.ptr, 2);
        return new BitArray(ptr, true);
    }
    popcnt() {
        return BV.popcnt(this.ptr);
    }
    reset(i) {
        const BYTE_OFFSET = i >>> 3;
        try {
            this.view.setUint8(BYTE_OFFSET, this.view.getUint8(BYTE_OFFSET) & ~(0x80 >>> (i & 7)));
        }
        catch {
            this.view = new DataView(BV.memory.buffer, BV.__dataStart(this.ptr), BV.__byteLength(this.ptr));
            this.view.setUint8(BYTE_OFFSET, this.view.getUint8(BYTE_OFFSET) & ~(0x80 >>> (i & 7)));
        }
        return this;
    }
    set(i) {
        const BYTE_OFFSET = i >>> 3;
        try {
            this.view.setUint8(BYTE_OFFSET, this.view.getUint8(BYTE_OFFSET) | (0x80 >>> (i & 7)));
        }
        catch {
            this.view = new DataView(BV.memory.buffer, BV.__dataStart(this.ptr), BV.__byteLength(this.ptr));
            this.view.setUint8(BYTE_OFFSET, this.view.getUint8(BYTE_OFFSET) | (0x80 >>> (i & 7)));
        }
        return this;
    }
    slice(start = 0, end = this.length) {
        if (start < 0
            || start > this.length
            || end < 0
            || end > this.length)
            throw new RangeError('the "start" or "end" indice is out of limits');
        const ptr = BV.slice(this.ptr, start, end);
        return new BitArray(ptr, true);
    }
    toggle(i) {
        const BYTE_OFFSET = i >>> 3;
        try {
            this.view.setUint8(BYTE_OFFSET, this.view.getUint8(BYTE_OFFSET) ^ (0x80 >>> (i & 7)));
        }
        catch {
            this.view = new DataView(BV.memory.buffer, BV.__dataStart(this.ptr), BV.__byteLength(this.ptr));
            this.view.setUint8(BYTE_OFFSET, this.view.getUint8(BYTE_OFFSET) ^ (0x80 >>> (i & 7)));
        }
        return this;
    }
    toString() {
        return BV.toString(this.ptr);
    }
    wipe(n = 0) {
        BV.wipe(this.ptr, n);
        return this;
    }
    xor(x) {
        const ptr = BV.and_or_xor(this.ptr, x.ptr, 3);
        return new BitArray(ptr, true);
    }
    *[Symbol.iterator]() {
        let i = 0;
        while (i < this.length)
            yield this.at(i++);
    }
}
