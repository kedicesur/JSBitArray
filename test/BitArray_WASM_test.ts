//import * as mod from "https://deno.land/std@0.162.0/testing/asserts.ts";
import { BitArray_WASM as BA_WASM } from "../lib/BitArray_WASM.ts";
import { BA } from "../mod.ts";

//8589934400

let ba      = new BA(1e6),
    ba_wasm = new BA_WASM(1e6),
    pc      = 0;
console.time("randomize wasm");
ba_wasm.randomize();
console.timeEnd("randomize wasm");
console.time("popcnt wasm");
pc = ba_wasm.popcnt;
console.timeEnd("popcnt wasm");
console.log(pc);

console.time("randomize");
ba.randomize();
console.timeEnd("randomize");
console.time("popcnt");
pc = ba.popcnt;
console.timeEnd("popcnt");
console.log(pc);