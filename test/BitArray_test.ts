import * as mod from "https://deno.land/std@0.162.0/testing/asserts.ts";
import {BA} from "../mod.ts";

Deno.test( "BitArray Tests"
         , function(){
             const ba = new BA(10);
             mod.assertInstanceOf(ba,BA);
             mod.assertEquals(ba.length,32);
             mod.assertEquals(ba.size,10);
             ba.set(9);
             mod.assertEquals(ba.at(9),1);
             mod.assertEquals(ba.any(),true);
             mod.assert(ba.randomize().not().isEqual(ba.slice().not()));
             mod.assert(ba.popcnt)
             mod.assertFalse(ba.clear().any())
             mod.assertEquals(ba.toString(),"00000000000000000000000000000000");
           }
         );

Deno.test( "Population Count"
         , function(){
             let ba = new BA(415897),
                 l  = ba.length,
                 t  = 0;
             for (let i = 0; i < l; i++) Math.random() > .5 && ( ba.set(i)
                                                               , t++
                                                               );
             mod.assertEquals(ba.popcnt,t);
           }
         );

Deno.test( "Logical Operations"
         , function(){
             let ba = new BA(1453),
                 bb = new BA(1453),
                 l  = ba.length;
             for (let i = 0; i < l; i++) i % 2 ? ba.set(i)
                                               : bb.set(i);
             mod.assert(ba.or(bb).all());
             mod.assert(ba.xor(bb).all());
             mod.assertFalse(ba.and(bb).any());
             mod.assertEquals(ba.not().toString(), bb.toString());
           }
         );