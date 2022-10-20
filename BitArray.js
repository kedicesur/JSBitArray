class BitArray extends DataView {	
	#length = 0;
	#mask   = new Uint8Array([
		 0b10000000,
		 0b01000000,
		 0b00100000,
		 0b00010000,
		 0b00001000,
		 0b00000100,
		 0b00000010,
		 0b00000001
	]);
	#mask_  = this.#mask.map(b => ~b);
	#index  = 0;
	#offset = 0;
	
	constructor(n) {
		super(new ArrayBuffer(Math.ceil(n/8)));
		this.#length = n;
	}
	
	get length() {
		return this.#length;
	}
	
	at(n) {
		// Returns the bit at the given index.
		this.#index = ~~(n/8);
		this.#offset = n % 8;
		return (this.getUint8(this.#index) & this.#mask[this.#offset]) >> (7-this.#offset);
	}
	
	put(n, b) {
		// Sets the value at the given index.
		n < this.#length && (
			this.#index = ~~(n/8),
			this.#offset = n % 8,
			this.setUint8(this.#index, b ? this.getUint8(this.#index) | this.#mask[this.#offset] : this.getUint8(this.#index) & this.#mask_[this.#offset])
		);
	}

	toggle(n) {
		// Flips the bit at the given index
		this.#index = ~~(n/8);
		this.#offset = n % 8;
		this.setUint8(this.#index, this.getUint8(this.#index) ^ this.#mask[this.#offset]);
	}
	
	toString() {
		return new Uint8Array(this.buffer).reduce((p,c) => p.toString(2).padStart(8,"0")+c.toString(2).padStart(8,"0")).slice(0,this.#length);
	}
}