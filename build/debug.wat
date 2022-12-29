(module
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $i32_i32_=>_none (func_subtype (param i32 i32) func))
 (type $i32_i32_=>_i32 (func_subtype (param i32 i32) (result i32) func))
 (type $i32_=>_none (func_subtype (param i32) func))
 (type $i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32) (result i32) func))
 (type $i32_i32_i32_=>_none (func_subtype (param i32 i32 i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i64_i32_=>_i32 (func_subtype (param i64 i32) (result i32) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (type $i32_i64_i32_=>_none (func_subtype (param i32 i64 i32) func))
 (type $none_=>_f64 (func_subtype (result f64) func))
 (type $i32_=>_f64 (func_subtype (param i32) (result f64) func))
 (type $i32_=>_i64 (func_subtype (param i32) (result i64) func))
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $i32_i64_=>_none (func_subtype (param i32 i64) func))
 (type $i64_=>_i32 (func_subtype (param i64) (result i32) func))
 (type $i32_i64_i32_i32_=>_none (func_subtype (param i32 i64 i32 i32) func))
 (type $i64_=>_i64 (func_subtype (param i64) (result i64) func))
 (type $i64_=>_none (func_subtype (param i64) func))
 (type $i32_i64_=>_i32 (func_subtype (param i32 i64) (result i32) func))
 (type $i32_f64_f64_=>_i32 (func_subtype (param i32 f64 f64) (result i32) func))
 (type $f64_=>_i32 (func_subtype (param f64) (result i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (global $node_modules/assemblyscript/std/assembly/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $node_modules/assemblyscript/std/assembly/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $node_modules/assemblyscript/std/assembly/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $~lib/builtins/u64.MAX_VALUE i64 (i64.const -1))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/u8.MIN_VALUE i32 (i32.const 0))
 (global $~lib/builtins/u8.MAX_VALUE i32 (i32.const 255))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state0_32 (mut i32) (i32.const 0))
 (global $~lib/math/random_state1_32 (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 2528))
 (global $~lib/memory/__data_end i32 (i32.const 2560))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 35328))
 (global $~lib/memory/__heap_base i32 (i32.const 35328))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 60) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 124) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 188) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 256) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 288) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 316) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 380) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 432) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 460) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 524) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\000\00\00\00L\00e\00n\00g\00t\00h\00s\00 \00a\00r\00e\00 \00n\00o\00t\00 \00e\00q\00u\00a\00l\00.\00.\00!\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 604) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data (i32.const 732) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 796) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 828) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 1228) "\1c\04\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2284) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data (i32.const 2380) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2412) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00.\00.\00 \00\00\00\00\00\00\00")
 (data (i32.const 2444) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00 \00m\00o\00r\00e\00 \00b\00i\00t\00s\00 \00.\00.\00\00\00")
 (data (i32.const 2492) "\1c\00\00\00\03\00\00\00\00\00\00\00\06\00\00\00\0c\00\00\00\80\t\00\00\00\00\00\00\a0\t\00\00")
 (data (i32.const 2528) "\07\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04A\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "__byteLength" (func $assembly/index/__byteLength))
 (export "__dataStart" (func $assembly/index/__dataStart))
 (export "__length" (func $assembly/index/__length))
 (export "new_BitView" (func $assembly/index/new_BitView))
 (export "all" (func $assembly/index/all))
 (export "and_or_xor" (func $assembly/index/and_or_xor))
 (export "any" (func $assembly/index/any))
 (export "compare" (func $assembly/index/compare))
 (export "not" (func $assembly/index/not))
 (export "popcnt" (func $assembly/index/popcnt))
 (export "slice" (func $assembly/index/slice))
 (export "toString" (func $assembly/index/toString))
 (export "wipe" (func $assembly/index/wipe))
 (export "memory" (memory $0))
 (start $~start)
 (func $assembly/index/ArrayBufferView#get:byteLength (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $assembly/index/ArrayBufferView#get:dataStart (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $assembly/index/BitView#get:length (type $i32_=>_i64) (param $this i32) (result i64)
  local.get $this
  i64.load $0 offset=16
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (type $i32_i32_=>_none) (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store $0 offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (type $i32_i32_=>_none) (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store $0 offset=8
 )
 (func $~lib/rt/itcms/initLazy (type $i32_=>_i32) (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
  return
 )
 (func $~lib/rt/itcms/Object#get:nextWithColor (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/itcms/Object#get:next (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#get:color (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  return
 )
 (func $~lib/rt/itcms/visitRoots (type $i32_=>_none) (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  local.get $cookie
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/itcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 208
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    local.get $cookie
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/itcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (type $i32_i32_=>_none) (param $this i32) (param $color i32)
  local.get $this
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#get:prev (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/rt/itcms/Object#set:next (type $i32_i32_=>_none) (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (type $i32_=>_none) (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:next
  local.set $next
  local.get $next
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 208
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 208
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/Object#get:rtId (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/__typeinfo (type $i32_=>_i32) (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load $0
  i32.gt_u
  if
   i32.const 336
   i32.const 400
   i32.const 21
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  i32.const 4
  i32.add
  local.get $id
  i32.const 4
  i32.mul
  i32.add
  call $~lib/shared/typeinfo/Typeinfo#get:flags
  return
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (type $i32_=>_i32) (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
  local.set $rtId
  local.get $rtId
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $rtId
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
  return
 )
 (func $~lib/rt/itcms/Object#linkTo (type $i32_i32_i32_=>_none) (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/itcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (type $i32_=>_none) (param $this i32)
  (local $1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 208
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $this
  call $~lib/rt/itcms/Object#unlink
  local.get $this
  global.get $~lib/rt/itcms/toSpace
  local.get $this
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (type $i32_i32_=>_none) (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  i32.const 0
  drop
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (type $i32_=>_none) (param $cookie i32)
  (local $ptr i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   if
    local.get $ptr
    i32.load $0
    local.get $cookie
    call $~lib/rt/itcms/__visit
    local.get $ptr
    i32.const 4
    i32.add
    local.set $ptr
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/itcms/Object#get:size (type $i32_=>_i32) (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  return
 )
 (func $~lib/rt/tlsf/Root#set:flMap (type $i32_i32_=>_none) (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store $0
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (type $i32_i32_=>_none) (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store $0
 )
 (func $~lib/rt/tlsf/Block#set:prev (type $i32_i32_=>_none) (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (type $i32_i32_=>_none) (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store $0 offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/tlsf/removeBlock (type $i32_i32_=>_none) (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/tlsf/Block#get:prev
  local.set $prev
  local.get $block
  call $~lib/rt/tlsf/Block#get:next
  local.set $next
  local.get $prev
  if
   local.get $prev
   local.get $next
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $next
  if
   local.get $next
   local.get $prev
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $block
  block $~lib/rt/tlsf/GETHEAD|inlined.0 (result i32)
   local.get $root
   local.set $root|11
   local.get $fl
   local.set $fl|12
   local.get $sl
   local.set $sl|13
   local.get $root|11
   local.get $fl|12
   i32.const 4
   i32.shl
   local.get $sl|13
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.0
  end
  i32.eq
  if
   local.get $root
   local.set $root|14
   local.get $fl
   local.set $fl|15
   local.get $sl
   local.set $sl|16
   local.get $next
   local.set $head
   local.get $root|14
   local.get $fl|15
   i32.const 4
   i32.shl
   local.get $sl|16
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $head
   i32.store $0 offset=96
   local.get $next
   i32.eqz
   if
    block $~lib/rt/tlsf/GETSL|inlined.0 (result i32)
     local.get $root
     local.set $root|18
     local.get $fl
     local.set $fl|19
     local.get $root|18
     local.get $fl|19
     i32.const 2
     i32.shl
     i32.add
     i32.load $0 offset=4
     br $~lib/rt/tlsf/GETSL|inlined.0
    end
    local.set $slMap
    local.get $root
    local.set $root|21
    local.get $fl
    local.set $fl|22
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap|23
    local.get $root|21
    local.get $fl|22
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap|23
    i32.store $0 offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     call $~lib/rt/tlsf/Root#get:flMap
     i32.const 1
     local.get $fl
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (type $i32_i32_=>_none) (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  i32.const 1
  drop
  local.get $block
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETRIGHT|inlined.0 (result i32)
   local.get $block
   local.set $block|3
   local.get $block|3
   i32.const 4
   i32.add
   local.get $block|3
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   br $~lib/rt/tlsf/GETRIGHT|inlined.0
  end
  local.set $right
  local.get $right
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $rightInfo
  local.get $rightInfo
  i32.const 1
  i32.and
  if
   local.get $root
   local.get $right
   call $~lib/rt/tlsf/removeBlock
   local.get $block
   local.get $blockInfo
   i32.const 4
   i32.add
   local.get $rightInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.1 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.1
   end
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   block $~lib/rt/tlsf/GETFREELEFT|inlined.0 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.sub
    i32.load $0
    br $~lib/rt/tlsf/GETFREELEFT|inlined.0
   end
   local.set $left
   local.get $left
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $leftInfo
   i32.const 1
   drop
   local.get $leftInfo
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $root
   local.get $left
   call $~lib/rt/tlsf/removeBlock
   local.get $left
   local.set $block
   local.get $block
   local.get $leftInfo
   i32.const 4
   i32.add
   local.get $blockInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $right
  local.get $rightInfo
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $block
  i32.const 4
  i32.add
  local.get $size
  i32.add
  local.get $right
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $right
  i32.const 4
  i32.sub
  local.get $block
  i32.store $0
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $13
   i32.const 1073741820
   local.tee $14
   local.get $13
   local.get $14
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETHEAD|inlined.1 (result i32)
   local.get $root
   local.set $root|16
   local.get $fl
   local.set $fl|17
   local.get $sl
   local.set $sl|18
   local.get $root|16
   local.get $fl|17
   i32.const 4
   i32.shl
   local.get $sl|18
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.1
  end
  local.set $head
  local.get $block
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $block
  local.get $head
  call $~lib/rt/tlsf/Block#set:next
  local.get $head
  if
   local.get $head
   local.get $block
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $root
  local.set $root|20
  local.get $fl
  local.set $fl|21
  local.get $sl
  local.set $sl|22
  local.get $block
  local.set $head|23
  local.get $root|20
  local.get $fl|21
  i32.const 4
  i32.shl
  local.get $sl|22
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head|23
  i32.store $0 offset=96
  local.get $root
  local.get $root
  call $~lib/rt/tlsf/Root#get:flMap
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|26
  local.get $fl
  local.set $fl|27
  block $~lib/rt/tlsf/GETSL|inlined.1 (result i32)
   local.get $root
   local.set $root|24
   local.get $fl
   local.set $fl|25
   local.get $root|24
   local.get $fl|25
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=4
   br $~lib/rt/tlsf/GETSL|inlined.1
  end
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root|26
  local.get $fl|27
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/addMemory (type $i32_i32_i32_=>_i32) (param $root i32) (param $start i32) (param $end i32) (result i32)
  (local $root|3 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|9 i32)
  (local $tail|10 i32)
  i32.const 1
  drop
  local.get $start
  local.get $end
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $start
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $start
  local.get $end
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $end
  block $~lib/rt/tlsf/GETTAIL|inlined.0 (result i32)
   local.get $root
   local.set $root|3
   local.get $root|3
   i32.load $0 offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.0
  end
  local.set $tail
  i32.const 0
  local.set $tailInfo
  local.get $tail
  if
   i32.const 1
   drop
   local.get $start
   local.get $tail
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $start
   i32.const 16
   i32.sub
   local.get $tail
   i32.eq
   if
    local.get $start
    i32.const 16
    i32.sub
    local.set $start
    local.get $tail
    call $~lib/rt/common/BLOCK#get:mmInfo
    local.set $tailInfo
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $start
   local.get $root
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $end
  local.get $start
  i32.sub
  local.set $size
  local.get $size
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $size
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $leftSize
  local.get $start
  local.set $left
  local.get $left
  local.get $leftSize
  i32.const 1
  i32.or
  local.get $tailInfo
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $start
  i32.const 4
  i32.add
  local.get $leftSize
  i32.add
  local.set $tail
  local.get $tail
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.set $root|9
  local.get $tail
  local.set $tail|10
  local.get $root|9
  local.get $tail|10
  i32.store $0 offset=1568
  local.get $root
  local.get $left
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  return
 )
 (func $~lib/rt/tlsf/initialize (type $none_=>_none)
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $root|7 i32)
  (local $fl|8 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $head i32)
  (local $memStart i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $rootOffset
  memory.size $0
  local.set $pagesBefore
  local.get $rootOffset
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.gt_s
  if (result i32)
   local.get $pagesNeeded
   local.get $pagesBefore
   i32.sub
   memory.grow $0
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $rootOffset
  local.set $root
  local.get $root
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|4
  i32.const 0
  local.set $tail
  local.get $root|4
  local.get $tail
  i32.store $0 offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   if
    local.get $root
    local.set $root|7
    local.get $fl
    local.set $fl|8
    i32.const 0
    local.set $slMap
    local.get $root|7
    local.get $fl|8
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap
    i32.store $0 offset=4
    i32.const 0
    local.set $sl
    loop $for-loop|1
     local.get $sl
     i32.const 16
     i32.lt_u
     if
      local.get $root
      local.set $root|11
      local.get $fl
      local.set $fl|12
      local.get $sl
      local.set $sl|13
      i32.const 0
      local.set $head
      local.get $root|11
      local.get $fl|12
      i32.const 4
      i32.shl
      local.get $sl|13
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $head
      i32.store $0 offset=96
      local.get $sl
      i32.const 1
      i32.add
      local.set $sl
      br $for-loop|1
     end
    end
    local.get $fl
    i32.const 1
    i32.add
    local.set $fl
    br $for-loop|0
   end
  end
  local.get $rootOffset
  i32.const 1572
  i32.add
  local.set $memStart
  i32.const 0
  drop
  local.get $root
  local.get $memStart
  memory.size $0
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $root
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (type $i32_=>_i32) (param $ptr i32) (result i32)
  (local $block i32)
  local.get $ptr
  i32.const 4
  i32.sub
  local.set $block
  local.get $ptr
  i32.const 0
  i32.ne
  if (result i32)
   local.get $ptr
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $block
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/freeBlock (type $i32_i32_=>_none) (param $root i32) (param $block i32)
  i32.const 0
  drop
  local.get $block
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (type $i32_=>_none) (param $ptr i32)
  local.get $ptr
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $ptr
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (type $i32_=>_none) (param $obj i32)
  local.get $obj
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $obj
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $obj
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (type $none_=>_i32) (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $black
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    loop $while-continue|1
     local.get $obj
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $obj
      global.set $~lib/rt/itcms/iter
      local.get $obj
      call $~lib/rt/itcms/Object#get:color
      local.get $black
      i32.ne
      if
       local.get $obj
       local.get $black
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $obj
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $obj
      call $~lib/rt/itcms/Object#get:next
      local.set $obj
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    local.get $obj
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $obj
     loop $while-continue|2
      local.get $obj
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $obj
       call $~lib/rt/itcms/Object#get:color
       local.get $black
       i32.ne
       if
        local.get $obj
        local.get $black
        call $~lib/rt/itcms/Object#set:color
        local.get $obj
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $obj
       call $~lib/rt/itcms/Object#get:next
       local.set $obj
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $from
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $from
     global.set $~lib/rt/itcms/toSpace
     local.get $black
     global.set $~lib/rt/itcms/white
     local.get $from
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $obj
   local.get $obj
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $obj
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $obj
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 208
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $obj
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
  return
 )
 (func $~lib/rt/itcms/interrupt (type $none_=>_none)
  (local $budget i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $budget
  loop $do-loop|0
   local.get $budget
   call $~lib/rt/itcms/step
   i32.sub
   local.set $budget
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $budget
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (type $i32_=>_i32) (param $size i32) (result i32)
  local.get $size
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $size
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
  return
 )
 (func $~lib/rt/tlsf/prepareSize (type $i32_=>_i32) (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 144
   i32.const 480
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
  return
 )
 (func $~lib/rt/tlsf/searchBlock (type $i32_i32_=>_i32) (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   i32.const 536870910
   i32.lt_u
   if (result i32)
    local.get $size
    i32.const 1
    i32.const 27
    local.get $size
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else
    local.get $size
   end
   local.set $requestSize
   i32.const 31
   local.get $requestSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $requestSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETSL|inlined.2 (result i32)
   local.get $root
   local.set $root|5
   local.get $fl
   local.set $fl|6
   local.get $root|5
   local.get $fl|6
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=4
   br $~lib/rt/tlsf/GETSL|inlined.2
  end
  i32.const 0
  i32.const -1
  i32.xor
  local.get $sl
  i32.shl
  i32.and
  local.set $slMap
  i32.const 0
  local.set $head
  local.get $slMap
  i32.eqz
  if
   local.get $root
   call $~lib/rt/tlsf/Root#get:flMap
   i32.const 0
   i32.const -1
   i32.xor
   local.get $fl
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $flMap
   local.get $flMap
   i32.eqz
   if
    i32.const 0
    local.set $head
   else
    local.get $flMap
    i32.ctz
    local.set $fl
    block $~lib/rt/tlsf/GETSL|inlined.3 (result i32)
     local.get $root
     local.set $root|10
     local.get $fl
     local.set $fl|11
     local.get $root|10
     local.get $fl|11
     i32.const 2
     i32.shl
     i32.add
     i32.load $0 offset=4
     br $~lib/rt/tlsf/GETSL|inlined.3
    end
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 480
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    block $~lib/rt/tlsf/GETHEAD|inlined.2 (result i32)
     local.get $root
     local.set $root|12
     local.get $fl
     local.set $fl|13
     local.get $slMap
     i32.ctz
     local.set $sl|14
     local.get $root|12
     local.get $fl|13
     i32.const 4
     i32.shl
     local.get $sl|14
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load $0 offset=96
     br $~lib/rt/tlsf/GETHEAD|inlined.2
    end
    local.set $head
   end
  else
   block $~lib/rt/tlsf/GETHEAD|inlined.3 (result i32)
    local.get $root
    local.set $root|15
    local.get $fl
    local.set $fl|16
    local.get $slMap
    i32.ctz
    local.set $sl|17
    local.get $root|15
    local.get $fl|16
    i32.const 4
    i32.shl
    local.get $sl|17
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=96
    br $~lib/rt/tlsf/GETHEAD|inlined.3
   end
   local.set $head
  end
  local.get $head
  return
 )
 (func $~lib/rt/tlsf/growMemory (type $i32_i32_=>_none) (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  i32.const 0
  drop
  local.get $size
  i32.const 536870910
  i32.lt_u
  if
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $size
  end
  memory.size $0
  local.set $pagesBefore
  local.get $size
  i32.const 4
  local.get $pagesBefore
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  block $~lib/rt/tlsf/GETTAIL|inlined.1 (result i32)
   local.get $root
   local.set $root|3
   local.get $root|3
   i32.load $0 offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.1
  end
  i32.ne
  i32.shl
  i32.add
  local.set $size
  local.get $size
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesBefore
  local.tee $5
  local.get $pagesNeeded
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow $0
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size $0
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (type $i32_i32_i32_=>_none) (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $size
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $size
  i32.sub
  local.set $remaining
  local.get $remaining
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $block
   local.get $size
   local.get $blockInfo
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   i32.const 4
   i32.add
   local.get $size
   i32.add
   local.set $spare
   local.get $spare
   local.get $remaining
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $root
   local.get $spare
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $block
   local.get $blockInfo
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.3 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.add
    local.get $block|7
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.3
   end
   block $~lib/rt/tlsf/GETRIGHT|inlined.2 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.2
   end
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (type $i32_i32_=>_i32) (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  local.get $size
  call $~lib/rt/tlsf/prepareSize
  local.set $payloadSize
  local.get $root
  local.get $payloadSize
  call $~lib/rt/tlsf/searchBlock
  local.set $block
  local.get $block
  i32.eqz
  if
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/growMemory
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/searchBlock
   local.set $block
   i32.const 1
   drop
   local.get $block
   i32.eqz
   if
    i32.const 0
    i32.const 480
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $payloadSize
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 480
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/removeBlock
  local.get $root
  local.get $block
  local.get $payloadSize
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/__alloc (type $i32_=>_i32) (param $size i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $size
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  return
 )
 (func $~lib/rt/itcms/Object#set:rtId (type $i32_i32_=>_none) (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store $0 offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (type $i32_i32_=>_none) (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store $0 offset=16
 )
 (func $~lib/rt/itcms/__new (type $i32_i32_=>_i32) (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 144
   i32.const 208
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/itcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $obj
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $obj
  i32.const 20
  i32.add
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $size
  memory.fill $0
  local.get $ptr
  return
 )
 (func $~lib/rt/itcms/__link (type $i32_i32_i32_=>_none) (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
  (local $child i32)
  (local $parent i32)
  (local $parentColor i32)
  local.get $childPtr
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $parentPtr
  i32.eqz
  if
   i32.const 0
   i32.const 208
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $childPtr
  i32.const 20
  i32.sub
  local.set $child
  local.get $child
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $parentPtr
   i32.const 20
   i32.sub
   local.set $parent
   local.get $parent
   call $~lib/rt/itcms/Object#get:color
   local.set $parentColor
   local.get $parentColor
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $expectMultiple
    if
     local.get $parent
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $parentColor
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $assembly/index/ArrayBufferView#set:buffer (type $i32_i32_=>_none) (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store $0
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/ArrayBufferView#set:dataStart (type $i32_i32_=>_none) (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store $0 offset=4
 )
 (func $assembly/index/ArrayBufferView#set:byteLength (type $i32_i32_=>_none) (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store $0 offset=8
 )
 (func $assembly/index/BitView#set:length (type $i32_i64_=>_none) (param $this i32) (param $length i64)
  local.get $this
  local.get $length
  i64.store $0 offset=16
 )
 (func $~lib/util/number/decimalCount32 (type $i32_=>_i32) (param $value i32) (result i32)
  local.get $value
  i32.const 100000
  i32.lt_u
  if
   local.get $value
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $value
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $value
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $value
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $value
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $value
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (type $i32_i32_i32_=>_none) (param $buffer i32) (param $num i32) (param $offset i32)
  (local $t i32)
  (local $r i32)
  (local $d1 i32)
  (local $d2 i32)
  (local $digits1 i64)
  (local $digits2 i64)
  (local $t|9 i32)
  (local $d1|10 i32)
  (local $digits i32)
  (local $digits|12 i32)
  (local $digit i32)
  loop $while-continue|0
   local.get $num
   i32.const 10000
   i32.ge_u
   if
    local.get $num
    i32.const 10000
    i32.div_u
    local.set $t
    local.get $num
    i32.const 10000
    i32.rem_u
    local.set $r
    local.get $t
    local.set $num
    local.get $r
    i32.const 100
    i32.div_u
    local.set $d1
    local.get $r
    i32.const 100
    i32.rem_u
    local.set $d2
    i32.const 828
    local.get $d1
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u $0
    local.set $digits1
    i32.const 828
    local.get $d2
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u $0
    local.set $digits2
    local.get $offset
    i32.const 4
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $digits1
    local.get $digits2
    i64.const 32
    i64.shl
    i64.or
    i64.store $0
    br $while-continue|0
   end
  end
  local.get $num
  i32.const 100
  i32.ge_u
  if
   local.get $num
   i32.const 100
   i32.div_u
   local.set $t|9
   local.get $num
   i32.const 100
   i32.rem_u
   local.set $d1|10
   local.get $t|9
   local.set $num
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 828
   local.get $d1|10
   i32.const 2
   i32.shl
   i32.add
   i32.load $0
   local.set $digits
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits
   i32.store $0
  end
  local.get $num
  i32.const 10
  i32.ge_u
  if
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 828
   local.get $num
   i32.const 2
   i32.shl
   i32.add
   i32.load $0
   local.set $digits|12
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits|12
   i32.store $0
  else
   local.get $offset
   i32.const 1
   i32.sub
   local.set $offset
   i32.const 48
   local.get $num
   i32.add
   local.set $digit
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digit
   i32.store16 $0
  end
 )
 (func $~lib/util/number/decimalCount64High (type $i64_=>_i32) (param $value i64) (result i32)
  local.get $value
  i64.const 1000000000000000
  i64.lt_u
  if
   local.get $value
   i64.const 1000000000000
   i64.lt_u
   if
    i32.const 10
    local.get $value
    i64.const 100000000000
    i64.ge_u
    i32.add
    local.get $value
    i64.const 10000000000
    i64.ge_u
    i32.add
    return
   else
    i32.const 13
    local.get $value
    i64.const 100000000000000
    i64.ge_u
    i32.add
    local.get $value
    i64.const 10000000000000
    i64.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $value
   i64.const 100000000000000000
   i64.lt_u
   if
    i32.const 16
    local.get $value
    i64.const 10000000000000000
    i64.ge_u
    i32.add
    return
   else
    i32.const 18
    local.get $value
    i64.const -8446744073709551616
    i64.ge_u
    i32.add
    local.get $value
    i64.const 1000000000000000000
    i64.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa64_dec_lut (type $i32_i64_i32_=>_none) (param $buffer i32) (param $num i64) (param $offset i32)
  (local $t i64)
  (local $r i32)
  (local $b i32)
  (local $c i32)
  (local $b1 i32)
  (local $b2 i32)
  (local $c1 i32)
  (local $c2 i32)
  (local $digits1 i64)
  (local $digits2 i64)
  loop $while-continue|0
   local.get $num
   i64.const 100000000
   i64.ge_u
   if
    local.get $num
    i64.const 100000000
    i64.div_u
    local.set $t
    local.get $num
    local.get $t
    i64.const 100000000
    i64.mul
    i64.sub
    i32.wrap_i64
    local.set $r
    local.get $t
    local.set $num
    local.get $r
    i32.const 10000
    i32.div_u
    local.set $b
    local.get $r
    i32.const 10000
    i32.rem_u
    local.set $c
    local.get $b
    i32.const 100
    i32.div_u
    local.set $b1
    local.get $b
    i32.const 100
    i32.rem_u
    local.set $b2
    local.get $c
    i32.const 100
    i32.div_u
    local.set $c1
    local.get $c
    i32.const 100
    i32.rem_u
    local.set $c2
    i32.const 828
    local.get $c1
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u $0
    local.set $digits1
    i32.const 828
    local.get $c2
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u $0
    local.set $digits2
    local.get $offset
    i32.const 4
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $digits1
    local.get $digits2
    i64.const 32
    i64.shl
    i64.or
    i64.store $0
    i32.const 828
    local.get $b1
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u $0
    local.set $digits1
    i32.const 828
    local.get $b2
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u $0
    local.set $digits2
    local.get $offset
    i32.const 4
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $digits1
    local.get $digits2
    i64.const 32
    i64.shl
    i64.or
    i64.store $0
    br $while-continue|0
   end
  end
  local.get $buffer
  local.get $num
  i32.wrap_i64
  local.get $offset
  call $~lib/util/number/utoa32_dec_lut
 )
 (func $~lib/util/number/utoa_hex_lut (type $i32_i64_i32_=>_none) (param $buffer i32) (param $num i64) (param $offset i32)
  loop $while-continue|0
   local.get $offset
   i32.const 2
   i32.ge_u
   if
    local.get $offset
    i32.const 2
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 1248
    local.get $num
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    i32.store $0
    local.get $num
    i64.const 8
    i64.shr_u
    local.set $num
    br $while-continue|0
   end
  end
  local.get $offset
  i32.const 1
  i32.and
  if
   local.get $buffer
   i32.const 1248
   local.get $num
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u $0
   i32.store16 $0
  end
 )
 (func $~lib/util/number/ulog_base (type $i64_i32_=>_i32) (param $num i64) (param $base i32) (result i32)
  (local $value i32)
  (local $b64 i64)
  (local $b i64)
  (local $e i32)
  block $~lib/util/number/isPowerOf2<i32>|inlined.0 (result i32)
   local.get $base
   local.set $value
   local.get $value
   i32.popcnt
   i32.const 1
   i32.eq
   br $~lib/util/number/isPowerOf2<i32>|inlined.0
  end
  if
   i32.const 63
   local.get $num
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $base
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $base
  i64.extend_i32_s
  local.set $b64
  local.get $b64
  local.set $b
  i32.const 1
  local.set $e
  loop $while-continue|0
   local.get $num
   local.get $b
   i64.ge_u
   if
    local.get $num
    local.get $b
    i64.div_u
    local.set $num
    local.get $b
    local.get $b
    i64.mul
    local.set $b
    local.get $e
    i32.const 1
    i32.shl
    local.set $e
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $num
   i64.const 1
   i64.ge_u
   if
    local.get $num
    local.get $b64
    i64.div_u
    local.set $num
    local.get $e
    i32.const 1
    i32.add
    local.set $e
    br $while-continue|1
   end
  end
  local.get $e
  i32.const 1
  i32.sub
  return
 )
 (func $~lib/util/number/utoa64_any_core (type $i32_i64_i32_i32_=>_none) (param $buffer i32) (param $num i64) (param $offset i32) (param $radix i32)
  (local $base i64)
  (local $shift i64)
  (local $mask i64)
  (local $q i64)
  local.get $radix
  i64.extend_i32_s
  local.set $base
  local.get $radix
  local.get $radix
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $radix
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $shift
   local.get $base
   i64.const 1
   i64.sub
   local.set $mask
   loop $do-loop|0
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 2304
    local.get $num
    local.get $mask
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u $0
    i32.store16 $0
    local.get $num
    local.get $shift
    i64.shr_u
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $num
    local.get $base
    i64.div_u
    local.set $q
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 2304
    local.get $num
    local.get $q
    local.get $base
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u $0
    i32.store16 $0
    local.get $q
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/number/U64#toString (type $i64_i32_=>_i32) (param $this i64) (param $radix i32) (result i32)
  local.get $this
  local.get $radix
  call $~lib/util/number/utoa64
  return
 )
 (func $~lib/rt/common/OBJECT#get:rtSize (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=16
 )
 (func $~lib/string/String#get:length (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
  return
 )
 (func $~lib/memory/memory.repeat (type $i32_i32_i32_i32_=>_none) (param $dst i32) (param $src i32) (param $srcLength i32) (param $count i32)
  (local $index i32)
  (local $total i32)
  i32.const 0
  local.set $index
  local.get $srcLength
  local.get $count
  i32.mul
  local.set $total
  loop $while-continue|0
   local.get $index
   local.get $total
   i32.lt_u
   if
    local.get $dst
    local.get $index
    i32.add
    local.get $src
    local.get $srcLength
    memory.copy $0 $0
    local.get $index
    local.get $srcLength
    i32.add
    local.set $index
    br $while-continue|0
   end
  end
 )
 (func $~lib/number/I32#toString (type $i32_i32_=>_i32) (param $this i32) (param $radix i32) (result i32)
  local.get $this
  local.get $radix
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (type $i32_i32_i32_=>_none) (param $this i32) (param $index i32) (param $value i32)
  local.get $this
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store $0
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#get:length (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 2
  i32.shr_u
  return
 )
 (func $~lib/math/murmurHash3 (type $i64_=>_i64) (param $h i64) (result i64)
  local.get $h
  local.get $h
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $h
  local.get $h
  i64.const -49064778989728563
  i64.mul
  local.set $h
  local.get $h
  local.get $h
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $h
  local.get $h
  i64.const -4265267296055464877
  i64.mul
  local.set $h
  local.get $h
  local.get $h
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $h
  local.get $h
  return
 )
 (func $~lib/math/splitMix32 (type $i32_=>_i32) (param $h i32) (result i32)
  local.get $h
  i32.const 1831565813
  i32.add
  local.set $h
  local.get $h
  local.get $h
  i32.const 15
  i32.shr_u
  i32.xor
  local.get $h
  i32.const 1
  i32.or
  i32.mul
  local.set $h
  local.get $h
  local.get $h
  local.get $h
  local.get $h
  i32.const 7
  i32.shr_u
  i32.xor
  local.get $h
  i32.const 61
  i32.or
  i32.mul
  i32.add
  i32.xor
  local.set $h
  local.get $h
  local.get $h
  i32.const 14
  i32.shr_u
  i32.xor
  return
 )
 (func $~lib/math/NativeMath.seedRandom (type $i64_=>_none) (param $value i64)
  local.get $value
  i64.const 0
  i64.eq
  if
   i64.const -7046029254386353131
   local.set $value
  end
  local.get $value
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state0_64
  global.get $~lib/math/random_state0_64
  i64.const -1
  i64.xor
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state1_64
  local.get $value
  i32.wrap_i64
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state0_32
  global.get $~lib/math/random_state0_32
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state1_32
  i32.const 1
  global.set $~lib/math/random_seeded
 )
 (func $~lib/math/NativeMath.random (type $none_=>_f64) (result f64)
  (local $s1 i64)
  (local $s0 i64)
  (local $r i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   call $~lib/builtins/seed
   i64.reinterpret_f64
   call $~lib/math/NativeMath.seedRandom
  end
  global.get $~lib/math/random_state0_64
  local.set $s1
  global.get $~lib/math/random_state1_64
  local.set $s0
  local.get $s0
  global.set $~lib/math/random_state0_64
  local.get $s1
  local.get $s1
  i64.const 23
  i64.shl
  i64.xor
  local.set $s1
  local.get $s1
  local.get $s1
  i64.const 17
  i64.shr_u
  i64.xor
  local.set $s1
  local.get $s1
  local.get $s0
  i64.xor
  local.set $s1
  local.get $s1
  local.get $s0
  i64.const 26
  i64.shr_u
  i64.xor
  local.set $s1
  local.get $s1
  global.set $~lib/math/random_state1_64
  local.get $s0
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  local.set $r
  local.get $r
  f64.reinterpret_i64
  f64.const 1
  f64.sub
  return
 )
 (func $~lib/rt/__visit_globals (type $i32_=>_none) (param $0 i32)
  (local $1 i32)
  i32.const 336
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 144
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1248
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2304
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/object/Object~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  nop
 )
 (func $assembly/index/BitView~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $assembly/index/ArrayBufferView~visit
 )
 (func $assembly/index/ArrayBufferView~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__visit (type $i32_i32_=>_none) (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  i32.const 1
  drop
  local.get $this
  local.set $cur
  local.get $cur
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load $0
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/staticarray/StaticArray<~lib/string/String>#__visit
 )
 (func $~lib/rt/__visit_members (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/staticarray/StaticArray<~lib/string/String>
    block $assembly/index/ArrayBufferView
     block $assembly/index/BitView
      block $~lib/arraybuffer/ArrayBufferView
       block $~lib/string/String
        block $~lib/arraybuffer/ArrayBuffer
         block $~lib/object/Object
          local.get $0
          i32.const 8
          i32.sub
          i32.load $0
          br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $assembly/index/BitView $assembly/index/ArrayBufferView $~lib/staticarray/StaticArray<~lib/string/String> $invalid
         end
         return
        end
        return
       end
       return
      end
      local.get $0
      local.get $1
      call $~lib/arraybuffer/ArrayBufferView~visit
      return
     end
     local.get $0
     local.get $1
     call $assembly/index/BitView~visit
     return
    end
    local.get $0
    local.get $1
    call $assembly/index/ArrayBufferView~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/staticarray/StaticArray<~lib/string/String>~visit
   return
  end
  unreachable
 )
 (func $~start (type $none_=>_none)
  memory.size $0
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 256
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 288
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 432
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $~stack_check (type $none_=>_none)
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 35360
   i32.const 35408
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $assembly/index/__byteLength (type $i32_=>_i32) (param $ptr i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $ptr
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $assembly/index/ArrayBufferView#get:byteLength
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/index/__dataStart (type $i32_=>_i32) (param $ptr i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $ptr
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $assembly/index/ArrayBufferView#get:dataStart
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/index/__length (type $i32_=>_f64) (param $ptr i32) (result f64)
  (local $1 i32)
  (local $2 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $ptr
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $assembly/index/BitView#get:length
  f64.convert_i64_u
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/index/ArrayBufferView#constructor (type $i32_i32_i32_=>_i32) (param $this i32) (param $length i32) (param $alignLog2 i32) (result i32)
  (local $buffer i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  call $assembly/index/ArrayBufferView#set:buffer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  call $assembly/index/ArrayBufferView#set:dataStart
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  call $assembly/index/ArrayBufferView#set:byteLength
  local.get $length
  i32.const 1073741820
  local.get $alignLog2
  i32.shr_u
  i32.gt_u
  if
   i32.const 32
   i32.const 80
   i32.const 17
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $length
  local.get $alignLog2
  i32.shl
  local.tee $length
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store $0 offset=8
  i32.const 2
  global.get $node_modules/assemblyscript/std/assembly/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $buffer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=12
  local.get $4
  call $assembly/index/ArrayBufferView#set:buffer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $buffer
  call $assembly/index/ArrayBufferView#set:dataStart
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $length
  call $assembly/index/ArrayBufferView#set:byteLength
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $assembly/index/BitView#constructor (type $i32_i64_=>_i32) (param $this i32) (param $l i64) (result i32)
  (local $U64_SIZE i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i64.const 0
  call $assembly/index/BitView#set:length
  local.get $l
  i64.const 63
  i64.add
  i64.const 6
  i64.shr_u
  i32.wrap_i64
  local.set $U64_SIZE
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $U64_SIZE
  i32.const 3
  call $assembly/index/ArrayBufferView#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $l
  call $assembly/index/BitView#set:length
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/index/all (type $i32_=>_i32) (param $ptr i32) (result i32)
  (local $BITVIEW i32)
  (local $EXCESS i64)
  (local $r i32)
  (local $i i32)
  (local $l i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $ptr
  local.tee $BITVIEW
  i32.store $0
  local.get $BITVIEW
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  call $assembly/index/BitView#get:length
  i64.const 63
  i64.and
  local.set $EXCESS
  i32.const 1
  local.set $r
  local.get $BITVIEW
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  call $assembly/index/ArrayBufferView#get:dataStart
  local.set $i
  local.get $i
  local.get $BITVIEW
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  call $assembly/index/ArrayBufferView#get:byteLength
  i32.add
  i64.extend_i32_s
  local.get $EXCESS
  i64.sub
  i64.const 0
  i64.ne
  if (result i32)
   i32.const 8
  else
   i32.const 0
  end
  local.set $l
  loop $while-continue|0
   local.get $r
   if (result i32)
    local.get $i
    local.get $l
    i32.lt_s
   else
    i32.const 0
   end
   if
    local.get $i
    i64.load $0
    global.get $~lib/builtins/u64.MAX_VALUE
    i64.eq
    local.set $r
    local.get $i
    i32.const 8
    i32.add
    local.set $i
    br $while-continue|0
   end
  end
  local.get $r
  if (result i32)
   local.get $EXCESS
   i64.const 0
   i64.ne
  else
   i32.const 0
  end
  if
   local.get $i
   i64.load $0
   global.get $~lib/builtins/u64.MAX_VALUE
   local.get $EXCESS
   i64.shr_u
   i64.or
   global.get $~lib/builtins/u64.MAX_VALUE
   i64.eq
   local.set $r
  end
  local.get $r
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $assembly/index/and_or_xor (type $i32_i32_i32_=>_i32) (param $ptrA i32) (param $ptrB i32) (param $op i32) (result i32)
  (local $BITVIEW_A i32)
  (local $BITVIEW_B i32)
  (local $5 i64)
  (local $6 i64)
  (local $BITVIEW_R i32)
  (local $8 i32)
  (local $i i32)
  (local $i|10 i32)
  (local $i|11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $ptrA
  local.tee $BITVIEW_A
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $ptrB
  local.tee $BITVIEW_B
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $BITVIEW_A
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store $0 offset=8
  local.get $12
  call $assembly/index/BitView#get:length
  local.tee $5
  local.get $BITVIEW_B
  local.set $12
  global.get $~lib/memory/__stack_pointer
  local.get $12
  i32.store $0 offset=8
  local.get $12
  call $assembly/index/BitView#get:length
  local.tee $6
  local.get $5
  local.get $6
  i64.lt_u
  select
  call $assembly/index/BitView#constructor
  local.tee $BITVIEW_R
  i32.store $0 offset=12
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      local.get $op
      i32.const 255
      i32.and
      local.set $8
      local.get $8
      i32.const 1
      i32.eq
      br_if $case0|0
      local.get $8
      i32.const 2
      i32.eq
      br_if $case1|0
      local.get $8
      i32.const 3
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 0
     local.set $i
     loop $for-loop|1
      local.get $i
      local.get $BITVIEW_R
      local.set $12
      global.get $~lib/memory/__stack_pointer
      local.get $12
      i32.store $0 offset=8
      local.get $12
      call $assembly/index/ArrayBufferView#get:byteLength
      i32.lt_s
      if
       local.get $BITVIEW_R
       local.set $12
       global.get $~lib/memory/__stack_pointer
       local.get $12
       i32.store $0 offset=8
       local.get $12
       call $assembly/index/ArrayBufferView#get:dataStart
       local.get $i
       i32.add
       local.get $BITVIEW_A
       local.set $12
       global.get $~lib/memory/__stack_pointer
       local.get $12
       i32.store $0 offset=8
       local.get $12
       call $assembly/index/ArrayBufferView#get:dataStart
       local.get $i
       i32.add
       i64.load $0
       local.get $BITVIEW_B
       local.set $12
       global.get $~lib/memory/__stack_pointer
       local.get $12
       i32.store $0 offset=8
       local.get $12
       call $assembly/index/ArrayBufferView#get:dataStart
       local.get $i
       i32.add
       i64.load $0
       i64.and
       i64.store $0
       local.get $i
       i32.const 8
       i32.add
       local.set $i
       br $for-loop|1
      end
     end
     br $break|0
    end
    i32.const 0
    local.set $i|10
    loop $for-loop|2
     local.get $i|10
     local.get $BITVIEW_R
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store $0 offset=8
     local.get $12
     call $assembly/index/ArrayBufferView#get:byteLength
     i32.lt_s
     if
      local.get $BITVIEW_R
      local.set $12
      global.get $~lib/memory/__stack_pointer
      local.get $12
      i32.store $0 offset=8
      local.get $12
      call $assembly/index/ArrayBufferView#get:dataStart
      local.get $i|10
      i32.add
      local.get $BITVIEW_A
      local.set $12
      global.get $~lib/memory/__stack_pointer
      local.get $12
      i32.store $0 offset=8
      local.get $12
      call $assembly/index/ArrayBufferView#get:dataStart
      local.get $i|10
      i32.add
      i64.load $0
      local.get $BITVIEW_B
      local.set $12
      global.get $~lib/memory/__stack_pointer
      local.get $12
      i32.store $0 offset=8
      local.get $12
      call $assembly/index/ArrayBufferView#get:dataStart
      local.get $i|10
      i32.add
      i64.load $0
      i64.or
      i64.store $0
      local.get $i|10
      i32.const 8
      i32.add
      local.set $i|10
      br $for-loop|2
     end
    end
    br $break|0
   end
   i32.const 0
   local.set $i|11
   loop $for-loop|3
    local.get $i|11
    local.get $BITVIEW_R
    local.set $12
    global.get $~lib/memory/__stack_pointer
    local.get $12
    i32.store $0 offset=8
    local.get $12
    call $assembly/index/ArrayBufferView#get:byteLength
    i32.lt_s
    if
     local.get $BITVIEW_R
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store $0 offset=8
     local.get $12
     call $assembly/index/ArrayBufferView#get:dataStart
     local.get $i|11
     i32.add
     local.get $BITVIEW_A
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store $0 offset=8
     local.get $12
     call $assembly/index/ArrayBufferView#get:dataStart
     local.get $i|11
     i32.add
     i64.load $0
     local.get $BITVIEW_B
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $12
     i32.store $0 offset=8
     local.get $12
     call $assembly/index/ArrayBufferView#get:dataStart
     local.get $i|11
     i32.add
     i64.load $0
     i64.xor
     i64.store $0
     local.get $i|11
     i32.const 8
     i32.add
     local.set $i|11
     br $for-loop|3
    end
   end
   br $break|0
  end
  local.get $BITVIEW_R
  i32.const 0
  i32.shr_u
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
  return
 )
 (func $assembly/index/any (type $i32_=>_i32) (param $ptr i32) (result i32)
  (local $BITVIEW i32)
  (local $r i32)
  (local $i i32)
  (local $l i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $ptr
  local.tee $BITVIEW
  i32.store $0
  i32.const 1
  local.set $r
  local.get $BITVIEW
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  call $assembly/index/ArrayBufferView#get:dataStart
  local.set $i
  local.get $i
  local.get $BITVIEW
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  call $assembly/index/ArrayBufferView#get:byteLength
  i32.add
  local.set $l
  loop $while-continue|0
   local.get $r
   if (result i32)
    local.get $i
    local.get $l
    i32.lt_s
   else
    i32.const 0
   end
   if
    local.get $i
    i64.load $0
    i64.const 0
    i64.eq
    local.set $r
    local.get $i
    i32.const 8
    i32.add
    local.set $i
    br $while-continue|0
   end
  end
  local.get $r
  if (result i32)
   i32.const 0
  else
   i32.const 1
  end
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $assembly/index/compare (type $i32_i32_=>_i32) (param $ptrA i32) (param $ptrB i32) (result i32)
  (local $BITVIEW_A i32)
  (local $BITVIEW_B i32)
  (local $vl i32)
  (local $vr i32)
  (local $n i32)
  (local $vl|7 i32)
  (local $vr|8 i32)
  (local $n|9 i32)
  (local $a i32)
  (local $b i32)
  (local $12 i32)
  (local $a|13 i32)
  (local $b|14 i32)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $ptrA
  local.tee $BITVIEW_A
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $ptrB
  local.tee $BITVIEW_B
  i32.store $0 offset=4
  local.get $BITVIEW_A
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=8
  local.get $15
  call $assembly/index/ArrayBufferView#get:byteLength
  local.get $BITVIEW_B
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=8
  local.get $15
  call $assembly/index/ArrayBufferView#get:byteLength
  i32.ne
  if
   i32.const 544
   i32.const 80
   i32.const 102
   i32.const 54
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/memory/memory.compare|inlined.0 (result i32)
   local.get $BITVIEW_A
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store $0 offset=8
   local.get $15
   call $assembly/index/ArrayBufferView#get:dataStart
   local.set $vl
   local.get $BITVIEW_B
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store $0 offset=8
   local.get $15
   call $assembly/index/ArrayBufferView#get:dataStart
   local.set $vr
   local.get $BITVIEW_A
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store $0 offset=8
   local.get $15
   call $assembly/index/ArrayBufferView#get:byteLength
   local.set $n
   block $~lib/util/memory/memcmp|inlined.0 (result i32)
    local.get $vl
    local.set $vl|7
    local.get $vr
    local.set $vr|8
    local.get $n
    local.set $n|9
    local.get $vl|7
    local.get $vr|8
    i32.eq
    if
     i32.const 0
     br $~lib/util/memory/memcmp|inlined.0
    end
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $vl|7
    i32.const 7
    i32.and
    local.get $vr|8
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $vl|7
      i32.const 7
      i32.and
      if
       local.get $n|9
       i32.eqz
       if
        i32.const 0
        br $~lib/util/memory/memcmp|inlined.0
       end
       local.get $vl|7
       i32.load8_u $0
       local.set $a
       local.get $vr|8
       i32.load8_u $0
       local.set $b
       local.get $a
       local.get $b
       i32.ne
       if
        local.get $a
        local.get $b
        i32.sub
        br $~lib/util/memory/memcmp|inlined.0
       end
       local.get $n|9
       i32.const 1
       i32.sub
       local.set $n|9
       local.get $vl|7
       i32.const 1
       i32.add
       local.set $vl|7
       local.get $vr|8
       i32.const 1
       i32.add
       local.set $vr|8
       br $while-continue|0
      end
     end
     block $while-break|1
      loop $while-continue|1
       local.get $n|9
       i32.const 8
       i32.ge_u
       if
        local.get $vl|7
        i64.load $0
        local.get $vr|8
        i64.load $0
        i64.ne
        if
         br $while-break|1
        end
        local.get $vl|7
        i32.const 8
        i32.add
        local.set $vl|7
        local.get $vr|8
        i32.const 8
        i32.add
        local.set $vr|8
        local.get $n|9
        i32.const 8
        i32.sub
        local.set $n|9
        br $while-continue|1
       end
      end
     end
    end
    loop $while-continue|2
     local.get $n|9
     local.tee $12
     i32.const 1
     i32.sub
     local.set $n|9
     local.get $12
     if
      local.get $vl|7
      i32.load8_u $0
      local.set $a|13
      local.get $vr|8
      i32.load8_u $0
      local.set $b|14
      local.get $a|13
      local.get $b|14
      i32.ne
      if
       local.get $a|13
       local.get $b|14
       i32.sub
       br $~lib/util/memory/memcmp|inlined.0
      end
      local.get $vl|7
      i32.const 1
      i32.add
      local.set $vl|7
      local.get $vr|8
      i32.const 1
      i32.add
      local.set $vr|8
      br $while-continue|2
     end
    end
    i32.const 0
    br $~lib/util/memory/memcmp|inlined.0
   end
   br $~lib/memory/memory.compare|inlined.0
  end
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
  return
 )
 (func $assembly/index/not (type $i32_=>_i32) (param $ptr i32) (result i32)
  (local $BITVIEW_A i32)
  (local $BITVIEW_R i32)
  (local $i i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $ptr
  local.tee $BITVIEW_A
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $BITVIEW_A
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/index/BitView#get:length
  call $assembly/index/BitView#constructor
  local.tee $BITVIEW_R
  i32.store $0 offset=8
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $BITVIEW_R
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   call $assembly/index/ArrayBufferView#get:byteLength
   i32.lt_s
   if
    local.get $i
    local.get $BITVIEW_R
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    call $assembly/index/ArrayBufferView#get:dataStart
    i32.add
    local.get $i
    local.get $BITVIEW_A
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    call $assembly/index/ArrayBufferView#get:dataStart
    i32.add
    i64.load $0
    i64.const -1
    i64.xor
    i64.store $0
    local.get $i
    i32.const 8
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $BITVIEW_R
  i32.const 0
  i32.shr_u
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/index/popcnt (type $i32_=>_f64) (param $ptr i32) (result f64)
  (local $BITVIEW i32)
  (local $END i32)
  (local $r i64)
  (local $index i32)
  (local $5 i32)
  (local $6 f64)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $ptr
  local.tee $BITVIEW
  i32.store $0
  local.get $BITVIEW
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  call $assembly/index/ArrayBufferView#get:dataStart
  local.get $BITVIEW
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  call $assembly/index/ArrayBufferView#get:byteLength
  i32.add
  local.set $END
  i64.const 0
  local.set $r
  local.get $BITVIEW
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  call $assembly/index/ArrayBufferView#get:dataStart
  local.set $index
  loop $for-loop|0
   local.get $index
   local.get $END
   i32.lt_u
   if
    local.get $r
    local.get $index
    i64.load $0
    i64.popcnt
    i64.add
    local.set $r
    local.get $index
    i32.const 8
    i32.add
    local.set $index
    br $for-loop|0
   end
  end
  local.get $r
  f64.convert_i64_u
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $assembly/index/slice (type $i32_f64_f64_=>_i32) (param $ptr i32) (param $start f64) (param $end f64) (result i32)
  (local $BITVIEW_A i32)
  (local $BITVIEW_R i32)
  (local $COPY_START i32)
  (local $BIT_OFFSET i32)
  (local $left i64)
  (local $right i64)
  (local $next i32)
  (local $cursor i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $ptr
  local.tee $BITVIEW_A
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $end
  local.get $start
  f64.sub
  i64.trunc_sat_f64_u
  call $assembly/index/BitView#constructor
  local.tee $BITVIEW_R
  i32.store $0 offset=4
  local.get $BITVIEW_A
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store $0 offset=8
  local.get $11
  call $assembly/index/ArrayBufferView#get:dataStart
  i64.extend_i32_u
  local.get $start
  i64.trunc_sat_f64_u
  i64.const 6
  i64.shr_u
  i64.add
  i32.wrap_i64
  local.set $COPY_START
  local.get $start
  i64.trunc_sat_f64_u
  i64.const 63
  i64.and
  i32.wrap_i64
  local.set $BIT_OFFSET
  i32.const 0
  local.set $cursor
  loop $for-loop|0
   local.get $cursor
   local.get $BITVIEW_R
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=8
   local.get $11
   call $assembly/index/ArrayBufferView#get:byteLength
   i32.lt_s
   if
    local.get $cursor
    i32.const 8
    i32.add
    local.set $next
    local.get $COPY_START
    local.get $cursor
    i32.add
    i64.load $0
    local.get $BIT_OFFSET
    i32.const 255
    i32.and
    i64.extend_i32_u
    i64.shl
    local.set $left
    local.get $next
    local.get $BITVIEW_R
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store $0 offset=8
    local.get $11
    call $assembly/index/ArrayBufferView#get:byteLength
    i32.lt_s
    if (result i64)
     local.get $COPY_START
     local.get $next
     i32.add
     i64.load $0
     i64.const 64
     local.get $BIT_OFFSET
     i32.const 255
     i32.and
     i64.extend_i32_u
     i64.sub
     i64.shr_u
    else
     i64.const 0
    end
    local.set $right
    local.get $BITVIEW_R
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store $0 offset=8
    local.get $11
    call $assembly/index/ArrayBufferView#get:dataStart
    local.get $cursor
    i32.add
    local.get $left
    local.get $right
    i64.or
    i64.store $0
    local.get $cursor
    i32.const 8
    i32.add
    local.set $cursor
    br $for-loop|0
   end
  end
  local.get $BITVIEW_R
  i32.const 0
  i32.shr_u
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
  return
 )
 (func $~lib/string/String#padStart (type $i32_i32_i32_=>_i32) (param $this i32) (param $length i32) (param $pad i32) (result i32)
  (local $thisSize i32)
  (local $targetSize i32)
  (local $padSize i32)
  (local $prependSize i32)
  (local $out i32)
  (local $repeatCount i32)
  (local $restBase i32)
  (local $restSize i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store $0
  local.get $11
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $thisSize
  local.get $length
  i32.const 1
  i32.shl
  local.set $targetSize
  local.get $pad
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store $0
  local.get $11
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $padSize
  local.get $targetSize
  local.get $thisSize
  i32.lt_u
  if (result i32)
   i32.const 1
  else
   local.get $padSize
   i32.eqz
  end
  if
   local.get $this
   local.set $11
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $11
   return
  end
  local.get $targetSize
  local.get $thisSize
  i32.sub
  local.set $prependSize
  global.get $~lib/memory/__stack_pointer
  local.get $targetSize
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store $0 offset=4
  local.get $prependSize
  local.get $padSize
  i32.gt_u
  if
   local.get $prependSize
   i32.const 2
   i32.sub
   local.get $padSize
   i32.div_u
   local.set $repeatCount
   local.get $repeatCount
   local.get $padSize
   i32.mul
   local.set $restBase
   local.get $prependSize
   local.get $restBase
   i32.sub
   local.set $restSize
   local.get $out
   local.get $pad
   local.get $padSize
   local.get $repeatCount
   call $~lib/memory/memory.repeat
   local.get $out
   local.get $restBase
   i32.add
   local.get $pad
   local.get $restSize
   memory.copy $0 $0
  else
   local.get $out
   local.get $pad
   local.get $prependSize
   memory.copy $0 $0
  end
  local.get $out
  local.get $prependSize
  i32.add
  local.get $this
  local.get $thisSize
  memory.copy $0 $0
  local.get $out
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
  return
 )
 (func $~lib/string/String#slice (type $i32_i32_i32_=>_i32) (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $out i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store $0
  local.get $13
  call $~lib/string/String#get:length
  local.set $len
  local.get $start
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $start
   local.get $len
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $start
   local.tee $6
   local.get $len
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $start
  local.get $end
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $end
   local.get $len
   i32.add
   local.tee $8
   i32.const 0
   local.tee $9
   local.get $8
   local.get $9
   i32.gt_s
   select
  else
   local.get $end
   local.tee $10
   local.get $len
   local.tee $11
   local.get $10
   local.get $11
   i32.lt_s
   select
  end
  local.set $end
  local.get $end
  local.get $start
  i32.sub
  local.set $len
  local.get $len
  i32.const 0
  i32.le_s
  if
   i32.const 2400
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $len
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store $0 offset=4
  local.get $out
  local.get $this
  local.get $start
  i32.const 1
  i32.shl
  i32.add
  local.get $len
  i32.const 1
  i32.shl
  memory.copy $0 $0
  local.get $out
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/util/string/joinStringArray (type $i32_i32_i32_=>_i32) (param $dataStart i32) (param $length i32) (param $separator i32) (result i32)
  (local $lastIndex i32)
  (local $4 i32)
  (local $estLen i32)
  (local $value i32)
  (local $i i32)
  (local $offset i32)
  (local $sepLen i32)
  (local $result i32)
  (local $i|11 i32)
  (local $valueLen i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $length
  i32.const 1
  i32.sub
  local.set $lastIndex
  local.get $lastIndex
  i32.const 0
  i32.lt_s
  if
   i32.const 2400
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  local.get $lastIndex
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $dataStart
   i32.load $0
   local.tee $4
   i32.store $0
   local.get $4
   if (result i32)
    local.get $4
   else
    i32.const 2400
   end
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  i32.const 0
  local.set $estLen
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    local.tee $value
    i32.store $0 offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $estLen
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store $0 offset=8
     local.get $13
     call $~lib/string/String#get:length
     i32.add
     local.set $estLen
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $offset
  local.get $separator
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store $0 offset=8
  local.get $13
  call $~lib/string/String#get:length
  local.set $sepLen
  global.get $~lib/memory/__stack_pointer
  local.get $estLen
  local.get $sepLen
  local.get $lastIndex
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $result
  i32.store $0 offset=12
  i32.const 0
  local.set $i|11
  loop $for-loop|1
   local.get $i|11
   local.get $lastIndex
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i|11
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    local.tee $value
    i32.store $0 offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store $0 offset=8
     local.get $13
     call $~lib/string/String#get:length
     local.set $valueLen
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $value
     local.get $valueLen
     i32.const 1
     i32.shl
     memory.copy $0 $0
     local.get $offset
     local.get $valueLen
     i32.add
     local.set $offset
    end
    local.get $sepLen
    if
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $separator
     local.get $sepLen
     i32.const 1
     i32.shl
     memory.copy $0 $0
     local.get $offset
     local.get $sepLen
     i32.add
     local.set $offset
    end
    local.get $i|11
    i32.const 1
    i32.add
    local.set $i|11
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $dataStart
  local.get $lastIndex
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $value
  i32.store $0 offset=4
  local.get $value
  i32.const 0
  i32.ne
  if
   local.get $result
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $value
   local.get $value
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store $0 offset=8
   local.get $13
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   memory.copy $0 $0
  end
  local.get $result
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (type $i32_i32_=>_i32) (param $this i32) (param $separator i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  i32.const 1
  drop
  local.get $this
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/staticarray/StaticArray<~lib/string/String>#get:length
  local.get $separator
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/util/string/joinStringArray
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/string/String#concat (type $i32_i32_=>_i32) (param $this i32) (param $other i32) (result i32)
  (local $thisSize i32)
  (local $otherSize i32)
  (local $outSize i32)
  (local $out i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $thisSize
  local.get $other
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $otherSize
  local.get $thisSize
  local.get $otherSize
  i32.add
  local.set $outSize
  local.get $outSize
  i32.const 0
  i32.eq
  if
   i32.const 2400
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $outSize
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store $0 offset=4
  local.get $out
  local.get $this
  local.get $thisSize
  memory.copy $0 $0
  local.get $out
  local.get $thisSize
  i32.add
  local.get $other
  local.get $otherSize
  memory.copy $0 $0
  local.get $out
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/string/String.__concat (type $i32_i32_=>_i32) (param $left i32) (param $right i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $left
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $right
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/index/toString (type $i32_=>_i32) (param $ptr i32) (result i32)
  (local $BITVIEW i32)
  (local $FIRST_WORD i64)
  (local $LAST_WORD i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $START_STR i32)
  (local $9 i32)
  (local $MID_STR i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (local $END_STR i32)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 36
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  local.get $ptr
  local.tee $BITVIEW
  i32.store $0
  local.get $BITVIEW
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=4
  local.get $15
  call $assembly/index/ArrayBufferView#get:dataStart
  i64.load $0
  local.set $FIRST_WORD
  local.get $BITVIEW
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=4
  local.get $15
  call $assembly/index/ArrayBufferView#get:dataStart
  local.get $BITVIEW
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=4
  local.get $15
  call $assembly/index/ArrayBufferView#get:byteLength
  i32.add
  i32.const 8
  i32.sub
  i64.load $0
  local.set $LAST_WORD
  global.get $~lib/memory/__stack_pointer
  local.get $FIRST_WORD
  local.tee $4
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $4
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $5
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $5
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  i32.const 2
  call $~lib/number/U64#toString
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=8
  local.get $15
  i32.const 64
  i32.const 816
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=12
  local.get $15
  call $~lib/string/String#padStart
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=4
  local.get $15
  i32.const 0
  local.get $BITVIEW
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=8
  local.get $15
  call $assembly/index/BitView#get:length
  local.tee $6
  i64.const 64
  local.tee $7
  local.get $6
  local.get $7
  i64.lt_u
  select
  i32.wrap_i64
  call $~lib/string/String#slice
  local.tee $START_STR
  i32.store $0 offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $BITVIEW
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=4
  local.get $15
  call $assembly/index/BitView#get:length
  i64.const 128
  i64.gt_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $BITVIEW
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store $0 offset=4
   local.get $15
   call $assembly/index/ArrayBufferView#get:byteLength
   i32.const 3
   i32.shr_u
   i32.const 2
   i32.sub
   i32.const 6
   i32.shl
   i32.const 10
   call $~lib/number/I32#toString
   local.tee $9
   i32.store $0 offset=20
   i32.const 2512
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store $0 offset=4
   local.get $15
   i32.const 1
   local.get $9
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store $0 offset=24
   local.get $15
   call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   i32.const 2512
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store $0 offset=4
   local.get $15
   i32.const 2400
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store $0 offset=8
   local.get $15
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
  else
   i32.const 2400
  end
  local.tee $MID_STR
  i32.store $0 offset=28
  global.get $~lib/memory/__stack_pointer
  local.get $BITVIEW
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=4
  local.get $15
  call $assembly/index/BitView#get:length
  i64.const 64
  i64.gt_u
  if (result i32)
   local.get $LAST_WORD
   local.tee $11
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $11
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $12
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $12
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
   i32.const 2
   call $~lib/number/U64#toString
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store $0 offset=8
   local.get $15
   i32.const 64
   i32.const 816
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store $0 offset=12
   local.get $15
   call $~lib/string/String#padStart
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store $0 offset=4
   local.get $15
   i32.const 0
   local.get $BITVIEW
   local.set $15
   global.get $~lib/memory/__stack_pointer
   local.get $15
   i32.store $0 offset=8
   local.get $15
   call $assembly/index/BitView#get:length
   i32.wrap_i64
   i32.const 63
   i32.and
   local.tee $13
   if (result i32)
    local.get $13
   else
    i32.const 64
   end
   call $~lib/string/String#slice
  else
   i32.const 2400
  end
  local.tee $END_STR
  i32.store $0 offset=32
  local.get $START_STR
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=24
  local.get $15
  local.get $MID_STR
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=12
  local.get $15
  call $~lib/string/String.__concat
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=4
  local.get $15
  local.get $END_STR
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0 offset=8
  local.get $15
  call $~lib/string/String.__concat
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 36
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
  return
 )
 (func $assembly/index/wipe (type $i32_i32_=>_none) (param $ptr i32) (param $val i32)
  (local $BITVIEW i32)
  (local $END i32)
  (local $4 i32)
  (local $index i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $ptr
  local.tee $BITVIEW
  i32.store $0
  local.get $BITVIEW
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  call $assembly/index/ArrayBufferView#get:dataStart
  local.get $BITVIEW
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  call $assembly/index/ArrayBufferView#get:byteLength
  i32.add
  local.set $END
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      local.get $val
      i32.const 255
      i32.and
      local.set $4
      local.get $4
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $4
      i32.const 1
      i32.eq
      br_if $case1|0
      br $case2|0
     end
     local.get $BITVIEW
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=4
     local.get $6
     call $assembly/index/ArrayBufferView#get:dataStart
     global.get $~lib/builtins/u8.MIN_VALUE
     local.get $BITVIEW
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=4
     local.get $6
     call $assembly/index/ArrayBufferView#get:byteLength
     memory.fill $0
     br $break|0
    end
    local.get $BITVIEW
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    call $assembly/index/ArrayBufferView#get:dataStart
    global.get $~lib/builtins/u8.MAX_VALUE
    local.get $BITVIEW
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    call $assembly/index/ArrayBufferView#get:byteLength
    memory.fill $0
    br $break|0
   end
   local.get $BITVIEW
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   call $assembly/index/ArrayBufferView#get:dataStart
   local.set $index
   loop $for-loop|1
    local.get $index
    local.get $END
    i32.lt_u
    if
     local.get $index
     call $~lib/math/NativeMath.random
     global.get $~lib/builtins/u32.MAX_VALUE
     f64.convert_i32_u
     f64.mul
     i64.trunc_sat_f64_u
     i64.const 32
     i64.shl
     call $~lib/math/NativeMath.random
     global.get $~lib/builtins/u32.MAX_VALUE
     f64.convert_i32_u
     f64.mul
     i32.trunc_sat_f64_u
     i64.extend_i32_u
     i64.or
     i64.store $0
     local.get $index
     i32.const 8
     i32.add
     local.set $index
     br $for-loop|1
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/new_BitView (type $f64_=>_i32) (param $l f64) (result i32)
  (local $ba i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $l
  i64.trunc_sat_f64_u
  call $assembly/index/BitView#constructor
  local.tee $ba
  i32.store $0
  local.get $ba
  i32.const 0
  i32.shr_u
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/util/number/utoa64 (type $i64_i32_=>_i32) (param $value i64) (param $radix i32) (result i32)
  (local $out i32)
  (local $val32 i32)
  (local $decimals i32)
  (local $buffer i32)
  (local $num i32)
  (local $offset i32)
  (local $decimals|8 i32)
  (local $buffer|9 i32)
  (local $num|10 i64)
  (local $offset|11 i32)
  (local $decimals|12 i32)
  (local $buffer|13 i32)
  (local $num|14 i64)
  (local $offset|15 i32)
  (local $decimals|16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $radix
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 624
   i32.const 752
   i32.const 401
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  i64.const 0
  i64.ne
  i32.eqz
  if
   i32.const 816
   local.set $17
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $17
   return
  end
  local.get $radix
  i32.const 10
  i32.eq
  if
   local.get $value
   global.get $~lib/builtins/u32.MAX_VALUE
   i64.extend_i32_u
   i64.le_u
   if
    local.get $value
    i32.wrap_i64
    local.set $val32
    local.get $val32
    call $~lib/util/number/decimalCount32
    local.set $decimals
    global.get $~lib/memory/__stack_pointer
    local.get $decimals
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store $0
    local.get $out
    local.set $buffer
    local.get $val32
    local.set $num
    local.get $decimals
    local.set $offset
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $buffer
    local.get $num
    local.get $offset
    call $~lib/util/number/utoa32_dec_lut
   else
    local.get $value
    call $~lib/util/number/decimalCount64High
    local.set $decimals|8
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|8
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store $0
    local.get $out
    local.set $buffer|9
    local.get $value
    local.set $num|10
    local.get $decimals|8
    local.set $offset|11
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $buffer|9
    local.get $num|10
    local.get $offset|11
    call $~lib/util/number/utoa64_dec_lut
   end
  else
   local.get $radix
   i32.const 16
   i32.eq
   if
    i32.const 63
    local.get $value
    i64.clz
    i32.wrap_i64
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $decimals|12
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|12
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store $0
    local.get $out
    local.set $buffer|13
    local.get $value
    local.set $num|14
    local.get $decimals|12
    local.set $offset|15
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $buffer|13
    local.get $num|14
    local.get $offset|15
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $value
    local.get $radix
    call $~lib/util/number/ulog_base
    local.set $decimals|16
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|16
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store $0
    local.get $out
    local.get $value
    local.get $decimals|16
    local.get $radix
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $out
  local.set $17
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $17
  return
 )
 (func $~lib/util/number/itoa32 (type $i32_i32_=>_i32) (param $value i32) (param $radix i32) (result i32)
  (local $sign i32)
  (local $out i32)
  (local $decimals i32)
  (local $buffer i32)
  (local $num i32)
  (local $offset i32)
  (local $decimals|8 i32)
  (local $buffer|9 i32)
  (local $num|10 i32)
  (local $offset|11 i32)
  (local $val32 i32)
  (local $decimals|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $radix
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 624
   i32.const 752
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  i32.eqz
  if
   i32.const 816
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $value
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.shl
  local.set $sign
  local.get $sign
  if
   i32.const 0
   local.get $value
   i32.sub
   local.set $value
  end
  local.get $radix
  i32.const 10
  i32.eq
  if
   local.get $value
   call $~lib/util/number/decimalCount32
   local.set $decimals
   global.get $~lib/memory/__stack_pointer
   local.get $decimals
   i32.const 1
   i32.shl
   local.get $sign
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $out
   i32.store $0
   local.get $out
   local.get $sign
   i32.add
   local.set $buffer
   local.get $value
   local.set $num
   local.get $decimals
   local.set $offset
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $buffer
   local.get $num
   local.get $offset
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $radix
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $value
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $decimals|8
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|8
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store $0
    local.get $out
    local.get $sign
    i32.add
    local.set $buffer|9
    local.get $value
    local.set $num|10
    local.get $decimals|8
    local.set $offset|11
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $buffer|9
    local.get $num|10
    i64.extend_i32_u
    local.get $offset|11
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $value
    local.set $val32
    local.get $val32
    i64.extend_i32_u
    local.get $radix
    call $~lib/util/number/ulog_base
    local.set $decimals|13
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|13
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store $0
    local.get $out
    local.get $sign
    i32.add
    local.get $val32
    i64.extend_i32_u
    local.get $decimals|13
    local.get $radix
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $sign
  if
   local.get $out
   i32.const 45
   i32.store16 $0
  end
  local.get $out
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
)
