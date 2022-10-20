export default class BitArray extends DataView {
	constructor(sizeOrBuffer) {
		let len = 0;
		if (sizeOrBuffer instanceof ArrayBuffer) {
			len = sizeOrBuffer.byteLength * 8;
			super(sizeOrBuffer);
		} else if (typeof sizeOrBuffer == "number") {
			if (sizeOrBuffer > 1.5e10) { throw new Error("BitArray size can not exceed 1.5e10"); }
			len = sizeOrBuffer;
			super(new ArrayBuffer(Math.ceil(sizeOrBuffer/8)));
		} else {
			throw new Error("A size or buffer must be provided when initalizing a BitArray");
		}

		Object.defineProperty(this, "length", {
			configurable: false,
			enumerable: false,
			writable: false,
			value: len
		});
	}

	get popcount(){
		let m1  = 0x55555555;
		let m2  = 0x33333333;
		let m4  = 0x0f0f0f0f;
		let h01 = 0x01010101;
		let pc  = 0;
		let x;

		for (let i = 0; i < this.buffer.byteLength; i++){
			 x = this.getUint8(i);
			 x -= (x >> 1) & m1;             //put count of each 2 bits into those 2 bits
			 x = (x & m2) + ((x >> 2) & m2); //put count of each 4 bits into those 4 bits
			 x = (x + (x >> 4)) & m4;        //put count of each 8 bits into those 8 bits
			 pc += (x * h01) >> 56;
		}
		return pc;
	}

	at(i) {
		// Fetches the value at the given index
		if (i >= 0 && i < this.buffer.byteLength*8) {
			return this.getUint8(i >> 3) & (1 << (i & 7)) ? 1 : 0;
		}
		return 0;
	}

	set(i, bool = true) {
		// Sets the value at the given index to the provided boolean
		if (i >= 0 && i < this.buffer.byteLength*8) {
			this.setUint8(i >> 3, this.getUint8(i >> 3) | (bool << (i & 7)));
		}
	}

	reset(i) {
		// Sets the value at the given index to 0
		if (i >= 0 && i < this.buffer.byteLength*8) {
			this.setUint8(i >> 3, this.getUint8(i >> 3) & ~(1 << (i & 7)));
		}
	}

	setAll(bool = false) {
		// Sets all values to the provided boolean value (like zeroing the array);
		for (let i = 0; i < this.buffer.byteLength; i++) {
			this.setUint8(i, bool ? 255 : 0);
		}
	}

	toggle(i) {
		// Flips the value at the given index
		if (i >= 0 && i < this.buffer.byteLength*8) {
			this.setUint8(i >> 3, this.getUint8(i >> 3) ^ (1 << (i & 7)));
		}
	}

	slice(a = 0, b = this.length) {
		return new BitArray(b-a,this.buffer.slice(a >> 3, b >> 3));
	}

	toString() {
		let msg = [];
		for (let i = 0; i < this.length; i++) {
			msg.push(this.at(i));
		}
		return msg.join('');
	}

	and(bar, newArray = false) {
		// And of this and bar.  Example: 1100 & 1001 = 1000
		let result = newArray ? new BitArray(this.length) : this;
		for (let i = 0; i < this.buffer.byteLength; i++) {
			result.setUint8(i, this.getUint8(i) & (i < bar.buffer.byteLength ? bar.getUint8(i) : 0));
		}
		return result;
	}
	
	or(bar, newArray = false) {
		// Or of this and bar.  Example: 1100 & 1001 = 1101
		let len = Math.min(this.buffer.byteLength, bar.buffer.byteLength);
		let result = newArray ? new BitArray(this.length) : this;
		for (let i = 0; i < len; i++) {
			result.setUint8(i, this.getUint8(i) | bar.getUint8(i));
		}
		return result;
	}

	xor(bar, newArray = false) {
		// Xor of this and bar.  Example: 1100 & 1001 = 0101;
		let len = Math.min(this.buffer.byteLength, bar.buffer.byteLength);
		let result = new BitArray(this.length);
		for (let i = 0; i < len; i++) {
			result.setUint8(i, this.getUint8(i) ^ bar.getUint8(i));
		}
		return result;
	}
	
	not(newArray = false) {
		// Flips all the bits in this buffer.  Example: 1100 = 0011
		let result = newArray ? new BitArray(this.length) : this;
		for (let i = 0; i < this.buffer.byteLength; i++) {
			result.setUint8(i, ~(this.getUint8(i) >> 0));
		}
		return result;
	}

	clone() {
		// Copies the values from this BitArray into a new BitArray
		let result = new BitArray(this.length);
		for (let i = 0; i < this.buffer.byteLength; i++) {
			result.setUint8(i, this.getUint8(i));
		}
		return result;
	}
}