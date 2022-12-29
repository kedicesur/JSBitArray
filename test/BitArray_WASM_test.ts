//import * as mod from "https://deno.land/std@0.162.0/testing/asserts.ts";
import { BitArray as BA_WASM } from "../lib/BitArray_WASM.ts";
import { BA } from "../mod.ts";
import { pi } from "../benchmark/pi_array.ts"

//8589934400

let ba      = new BA(1e6),
    ba_wasm = new BA_WASM(1e6),
    pc      = 0;
console.time("randomize wasm");
ba_wasm.wipe(2);
console.timeEnd("randomize wasm");
console.time("popcnt wasm");
pc = ba_wasm.popcnt();
console.timeEnd("popcnt wasm");
console.log(pc);

console.time("randomize");
ba.randomize();
console.timeEnd("randomize");
console.time("popcnt");
pc = ba.popcnt;
console.timeEnd("popcnt");
console.log(pc);

const a = new BA_WASM(10),
      b = new BA_WASM(37);

a.set(7);
a.set(8);
b.set(8);
console.log(a.toString());
console.log(b.toString());
console.log(a.and(b).toString());
console.log(b.and(a).toString());


console.time("PI");
const r = pi(0,1e4);
console.timeEnd("PI");
console.log(r);


