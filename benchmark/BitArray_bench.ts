import { pi as piArr } from "./pi_array.ts";
import { pi as piUia } from "./pi_uint8array.ts"
import { pi as piBar } from "./pi_bitarray.ts";

let s = 0,
    e = 1e6,
    r = 0;

Deno.bench( "Array"
          , function(){
              r = piArr(s, e);
            }
          );

Deno.bench( "BitArray"
          , function(){
              r = piBar(s, e);
            }
          );

Deno.bench( "Uint8Array"
          , function(){
              r = piUia(s, e);
            }
          );