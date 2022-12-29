import { pi as piArr } from "./pi_array.ts";
import { pi as piUia } from "./pi_uint8array.ts"
import { pi as piBar } from "./pi_bitarray.ts";
import { pi as piWas } from "./pi_bitarray_wasm.ts";

let s = 0,
    e = 1e6,
    r;

Deno.bench( `Array       : ${s}-${e}`
          , function(){
              r = piArr(s, e);
            }
          );

Deno.bench( `BitArray    : ${s}-${e}`
          , function(){
              r = piBar(s, e);
            }
          );
Deno.bench( `BitArrayWASM: ${s}-${e}`
          , function(){
              r = piWas(s, e);
            }
          );
Deno.bench( `Uint8Array  : ${s}-${e}`
          , function(){
              r = piUia(s, e);
            }
          );