import * as mod from "https://deno.land/std@0.162.0/testing/asserts.ts";
import { BA } from "../mod.ts";
import { BitArray as BA_WASM } from "../lib/BitArray_WASM.ts";

Deno.test( "BitArray Tests"
         , function(){
             const ba = new BA(10);
             mod.assertInstanceOf(ba,BA);
             mod.assertEquals(ba.length,32);
             mod.assertEquals(ba.size,10);
             ba.set(9);
             mod.assertEquals(ba.at(9),1);
             mod.assertEquals(ba.any(),true);
             mod.assert(ba.isEqual(ba.slice()));
             mod.assert(ba.randomize().not().isEqual(ba.slice().not()));
             mod.assert(ba.popcnt);
             mod.assertFalse(ba.wipe().any());
             mod.assert(ba.wipe(true).all());
             mod.assertEquals(ba.toString(),"11111111111111111111111111111111");
           }
         );

Deno.test( "BitArray_WASM Tests"
         , function(){
             const ba = new BA_WASM(10);
             mod.assertInstanceOf(ba,BA_WASM);
             mod.assertEquals(ba.length,10);
             ba.set(9);
             console.log(`${ba}`);
             mod.assertEquals(ba.at(9),1);
             mod.assertEquals(ba.any(),true);
             mod.assert(ba.isEqual(ba.slice()));
             mod.assert(ba.wipe(2).not().isEqual(ba.slice().not()));
             mod.assert(ba.popcnt);
             mod.assertFalse(ba.wipe(0).any());
             mod.assert(ba.wipe(1).all());
             mod.assertEquals(ba.toString(),"1".repeat(ba.length));
           }
         );

Deno.test( "BitArray Population Count"
         , function(){
             let ba = new BA(1e7), // 415897
                 l  = ba.length,
                 t  = 0;
             for (let i = 0; i < l; i++) Math.random() > .99 && ( ba.set(i)
                                                                , t++
                                                                );
             mod.assertEquals(ba.popcnt,t);
           }
         );

Deno.test( "BitArray_WASM Population Count"
         , function(){
             let ba = new BA_WASM(1e7),
                 l  = ba.length,
                 t  = 0;
             for (let i = 0; i < l; i++) Math.random() > .99 && ( ba.set(i)
                                                                , t++
                                                                );
             mod.assertEquals(Number(ba.popcnt()),t);
           }
         );

Deno.test( "BitArray Sequential Set on Randomized BitArray"
         , function(){
             let ba = new BA(1e7), // 415897
                 l  = ba.length;

             ba.randomize();
             for (let i = 0; i < l; i++) ba.set(i);
             mod.assert(ba.all());
           }
         );

Deno.test( "BitArray_WASM Sequential Set on Randomized BitArray"
         , function(){
             let ba = new BA_WASM(1e7), // 415897
                 l  = ba.length;

             ba.wipe(2);
             for (let i = 0; i < l; i++) ba.set(i);
             mod.assert(ba.all());
           }
         );

Deno.test( "BitArray Logical Operations"
         , function(){
             const ba = new BA(1e7),
                   bb = new BA(1e7),
                   l  = ba.length;
             for (let i = 0; i < l; i++) i % 2 ? ba.set(i)
                                               : bb.set(i);
             mod.assert(ba.or(bb).all());
             mod.assert(ba.xor(bb).all());
             mod.assertFalse(ba.and(bb).any());
             //mod.assertEquals(ba.not().toString(), bb.toString());
           }
         );

Deno.test( "BitArray_WASM Logical Operations"
         , function(){
             const ba = new BA_WASM(1e7),
                   bb = new BA_WASM(1e7),
                   l  = ba.length;
             for (let i = 0; i < l; i++) i % 2 ? ba.set(i)
                                               : bb.set(i);
             mod.assert(ba.or(bb).all());
             mod.assert(ba.xor(bb).all());
             mod.assertFalse(ba.and(bb).any());
             //mod.assertEquals(ba.not().toString(), bb.toString());
             //mod.assertEquals(ba.not().slice().toString(), bb.slice().toString());
           }
         );