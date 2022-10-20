class BitArray extends DataView{
	constructor(n, ab) {
		if (n > 1.5e10) throw new Error("BitArray size can not exceed 1.5e10");
		super(ab instanceof ArrayBuffer ? ab : new ArrayBuffer(Number((BigInt(n + 31) & ~31n) >> 3n)));
		// Sets ArrayBuffer.byteLength to multiples of 4 bytes (32 bits)
	}

	get length() {
		return this.buffer.byteLength << 3;
	}

	get popcount() {
		var m1  = 0x55555555,
			m2  = 0x33333333,
			m4  = 0x0f0f0f0f,
			h01 = 0x01010101,
			pc  = 0,
			x;
		for (var i = 0, len = this.buffer.byteLength >> 2; i < len; i++){
			 x = this.getUint32(i << 2);
			 x -= (x >> 1) & m1;             //put count of each 2 bits into those 2 bits
			 x = (x & m2) + ((x >> 2) & m2); //put count of each 4 bits into those 4 bits
			 x = (x + (x >> 4)) & m4;        //put count of each 8 bits into those 8 bits
			 pc += (x * h01) >> 56;
		}
		return pc;
	}

	// n >> 3 is Math.floor(n/8)
	// n & 7 is n % 8

	and(bar) {
		var len = Math.min(this.buffer.byteLength,bar.buffer.byteLength),
			res = new BitArray(len << 3);
		for (var i = 0; i < len; i += 4) res.setUint32(i,this.getUint32(i) & bar.getUint32(i));
		return res;
	}

	at(n) {  
		return this.getUint8(n >> 3) & (1 << (n & 7)) ? 1 : 0;
	}
	
	or(bar) {
		var len = Math.min(this.buffer.byteLength,bar.buffer.byteLength),
			res = new BitArray(len << 3);
		for (var i = 0; i < len; i += 4) res.setUint32(i,this.getUint32(i) | bar.getUint32(i));
		return res;
	}
	
	not() {
		var len = this.buffer.byteLength,
			res = new BitArray(len << 3);
		for (var i = 0; i < len; i += 4) res.setUint32(i,~(this.getUint32(i) >> 0));
		return res;
	}

	reset(n) {
		this.setUint8(n >> 3, this.getUint8(n >> 3) & ~(1 << (n & 7)));
	}

	set(n) {
		this.setUint8(n >> 3, this.getUint8(n >> 3) | (1 << (n & 7)));
	}

	slice(a = 0, b = this.length) {
		return new BitArray(b-a,this.buffer.slice(a >> 3, b >> 3));
	}

	toggle(n) {
		this.setUint8(n >> 3, this.getUint8(n >> 3) ^ (1 << (n & 7)));
	}

	toString() {
		return new Uint8Array(this.buffer).reduce((p,c) => p + ((BigInt(c)* 0x0202020202n & 0x010884422010n) % 1023n).toString(2).padStart(8,"0"),"");
	}
	
	xor(bar) {
		var len = Math.min(this.buffer.byteLength,bar.buffer.byteLength),
			res = new BitArray(len << 3);
		for (var i = 0; i < len; i += 4) res.setUint32(i,this.getUint32(i) ^ bar.getUint32(i));
		return res;
	}
}