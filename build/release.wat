(module
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $i32_=>_none (func_subtype (param i32) func))
 (type $i32_i32_=>_i32 (func_subtype (param i32 i32) (result i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_=>_none (func_subtype (param i32 i32) func))
 (type $i32_=>_f64 (func_subtype (param i32) (result f64) func))
 (type $i32_f64_=>_none (func_subtype (param i32 f64) func))
 (type $i32_i32_i32_=>_none (func_subtype (param i32 i32 i32) func))
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $i64_=>_i32 (func_subtype (param i64) (result i32) func))
 (type $none_=>_f64 (func_subtype (result f64) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (type $i32_f64_=>_i32 (func_subtype (param i32 f64) (result i32) func))
 (type $f64_=>_i32 (func_subtype (param f64) (result i32) func))
 (type $i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32) (result i32) func))
 (type $i32_f64_f64_=>_i32 (func_subtype (param i32 f64 f64) (result i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 36480))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1196) "<")
 (data (i32.const 1208) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1260) ",")
 (data (i32.const 1272) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1340) ",")
 (data (i32.const 1352) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1388) "<")
 (data (i32.const 1400) "\02\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data (i32.const 1452) "<")
 (data (i32.const 1464) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1548) "<")
 (data (i32.const 1560) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1612) "<")
 (data (i32.const 1624) "\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 1676) "L")
 (data (i32.const 1688) "\02\00\00\000\00\00\00L\00e\00n\00g\00t\00h\00s\00 \00a\00r\00e\00 \00n\00o\00t\00 \00e\00q\00u\00a\00l\00.\00.\00!")
 (data (i32.const 1756) "|")
 (data (i32.const 1768) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 1884) "<")
 (data (i32.const 1896) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 1948) "\1c")
 (data (i32.const 1960) "\02\00\00\00\02\00\00\000")
 (data (i32.const 1980) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 2380) "\1c\04")
 (data (i32.const 2392) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data (i32.const 3436) "\\")
 (data (i32.const 3448) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 3532) "\1c")
 (data (i32.const 3544) "\02")
 (data (i32.const 3564) "\1c")
 (data (i32.const 3576) "\02\00\00\00\06\00\00\00.\00.\00 ")
 (data (i32.const 3596) ",")
 (data (i32.const 3608) "\02\00\00\00\1a\00\00\00 \00m\00o\00r\00e\00 \00b\00i\00t\00s\00 \00.\00.")
 (data (i32.const 3644) "\1c\00\00\00\03\00\00\00\00\00\00\00\06\00\00\00\0c\00\00\00\00\0e\00\00\00\00\00\00 \0e")
 (data (i32.const 3680) "\07\00\00\00 \00\00\00 \00\00\00 ")
 (data (i32.const 3708) "\04A")
 (export "__release" (func $assembly/index/__release))
 (export "new_BitView" (func $assembly/index/new_BitView))
 (export "all" (func $assembly/index/all))
 (export "and_or_xor" (func $assembly/index/and_or_xor))
 (export "any" (func $assembly/index/any))
 (export "at" (func $assembly/index/at))
 (export "compare" (func $assembly/index/compare))
 (export "length" (func $assembly/index/length))
 (export "not" (func $assembly/index/not))
 (export "popcnt" (func $assembly/index/popcnt))
 (export "reset" (func $assembly/index/reset))
 (export "set" (func $assembly/index/set))
 (export "size" (func $assembly/index/size))
 (export "slice" (func $assembly/index/slice))
 (export "toggle" (func $assembly/index/toggle))
 (export "toString" (func $assembly/index/toString))
 (export "wipe" (func $assembly/index/wipe))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#unlink (type $i32_=>_none) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load $0 offset=4
  i32.const -4
  i32.and
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.load $0 offset=8
   i32.eqz
   local.get $0
   i32.const 36480
   i32.lt_u
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load $0 offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $1
  local.get $0
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
 )
 (func $~lib/rt/itcms/Object#makeGray (type $i32_=>_none) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load $0 offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  global.get $~lib/rt/itcms/toSpace
  local.set $1
  local.get $0
  i32.load $0 offset=12
  local.tee $2
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 3680
   i32.load $0
   i32.gt_u
   if
    i32.const 1216
    i32.const 1280
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 2
   i32.shl
   i32.const 3684
   i32.add
   i32.load $0
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $1
  i32.load $0 offset=8
  local.set $2
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $1
  i32.or
  i32.store $0 offset=4
  local.get $0
  local.get $2
  i32.store $0 offset=8
  local.get $2
  local.get $0
  local.get $2
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=8
 )
 (func $assembly/index/__release (type $i32_=>_none) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.ne
   if
    i32.const 1056
    i32.const 1120
    i32.const 352
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/itcms/state
   i32.const 1
   i32.eq
   if
    local.get $1
    call $~lib/rt/itcms/Object#makeGray
   else
    local.get $1
    call $~lib/rt/itcms/Object#unlink
    global.get $~lib/rt/itcms/fromSpace
    local.tee $0
    i32.load $0 offset=8
    local.set $2
    local.get $1
    local.get $0
    global.get $~lib/rt/itcms/white
    i32.or
    i32.store $0 offset=4
    local.get $1
    local.get $2
    i32.store $0 offset=8
    local.get $2
    local.get $1
    local.get $2
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store $0 offset=4
    local.get $0
    local.get $1
    i32.store $0 offset=8
   end
  end
 )
 (func $~lib/rt/itcms/visitRoots (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  i32.const 1216
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1472
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1632
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1056
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 2400
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3456
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1360
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load $0 offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/tlsf/removeBlock (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load $0
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1568
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1568
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $3
   local.get $2
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $3
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1568
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0 offset=8
  local.set $5
  local.get $1
  i32.load $0 offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store $0 offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store $0 offset=4
  end
  local.get $1
  local.get $0
  local.get $3
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  i32.eq
  if
   local.get $0
   local.get $3
   i32.const 4
   i32.shl
   local.get $2
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.store $0 offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load $0 offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    local.get $2
    i32.store $0 offset=4
    local.get $2
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load $0
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store $0
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1568
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1568
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load $0
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load $0
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store $0
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load $0
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load $0
   local.tee $1
   i32.load $0
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1568
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store $0
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store $0
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1568
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1568
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store $0
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1568
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store $0 offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store $0 offset=96
  local.get $0
  local.get $0
  i32.load $0
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store $0
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/addMemory (type $i32_i32_i32_=>_none) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 1568
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load $0 offset=1568
  local.tee $4
  if
   local.get $4
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1568
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $4
    i32.load $0
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1568
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store $0
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  local.tee $2
  i32.const 2
  i32.store $0
  local.get $0
  local.get $2
  i32.store $0 offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  memory.size $0
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
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
  i32.const 36480
  i32.const 0
  i32.store $0
  i32.const 38048
  i32.const 0
  i32.store $0
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 36480
    i32.add
    i32.const 0
    i32.store $0 offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 36480
      i32.add
      i32.const 0
      i32.store $0 offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 36480
  i32.const 38052
  memory.size $0
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 36480
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (type $none_=>_i32) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load $0 offset=4
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $0
       i32.load $0 offset=4
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store $0 offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load $0 offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load $0 offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 36480
      i32.lt_u
      if
       local.get $0
       i32.load $0
       local.tee $2
       if
        local.get $2
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load $0 offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load $0 offset=4
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $0
        i32.load $0 offset=4
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store $0 offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load $0 offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load $0 offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load $0 offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 36480
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store $0 offset=4
     local.get $0
     i32.const 0
     i32.store $0 offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load $0
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 36480
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load $0
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1568
       i32.const 559
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load $0
      i32.const 1
      i32.or
      i32.store $0
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.store $0 offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (type $i32_i32_=>_i32) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1568
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=96
  else
   local.get $0
   i32.load $0
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1568
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (type $i32_i32_=>_i32) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1472
   i32.const 1120
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    local.get $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1472
   i32.const 1568
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 12
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $2
  i32.const 12
  i32.le_u
  select
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size $0
   local.tee $2
   i32.const 4
   local.get $4
   i32.load $0 offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   local.get $5
   i32.const 1
   i32.const 27
   local.get $5
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.get $5
   local.get $5
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow $0
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size $0
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1568
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $5
  local.get $2
  i32.load $0
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1568
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load $0
  local.set $3
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1568
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $6
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $5
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store $0
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.add
   local.tee $3
   local.get $6
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store $0
   local.get $4
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $3
   i32.const -2
   i32.and
   i32.store $0
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load $0
   i32.const -3
   i32.and
   i32.store $0
  end
  local.get $2
  local.get $1
  i32.store $0 offset=12
  local.get $2
  local.get $0
  i32.store $0 offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load $0 offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store $0 offset=4
  local.get $2
  local.get $3
  i32.store $0 offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $1
  local.get $2
  i32.store $0 offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load $0
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill $0
  local.get $1
 )
 (func $assembly/index/all (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  i32.const 1
  local.set $1
  i32.const 8
  i32.const 0
  local.get $0
  i64.load $0 offset=16
  i64.const 63
  i64.and
  local.tee $2
  local.get $0
  i32.load $0 offset=8
  local.get $0
  i32.load $0 offset=4
  local.tee $0
  i32.add
  i64.extend_i32_s
  i64.ne
  select
  local.set $3
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_s
   local.get $1
   i32.and
   if
    local.get $0
    i64.load $0
    i64.const -1
    i64.eq
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  local.get $2
  i64.const 0
  i64.ne
  local.get $1
  i32.and
  if (result i32)
   local.get $0
   i64.load $0
   i64.const -1
   local.get $2
   i64.shr_u
   i64.or
   i64.const -1
   i64.eq
  else
   local.get $1
  end
 )
 (func $assembly/index/any (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 1
  local.set $2
  local.get $0
  i32.load $0 offset=4
  local.tee $1
  local.get $0
  i32.load $0 offset=8
  i32.add
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.gt_s
   local.get $2
   i32.and
   if
    local.get $1
    i64.load $0
    i64.eqz
    local.set $2
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
  i32.eqz
 )
 (func $assembly/index/at (type $i32_f64_=>_i32) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i64)
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i64.trunc_sat_f64_u
  local.tee $2
  i32.wrap_i64
  i32.const 3
  i32.shr_u
  i32.add
  i32.load8_u $0
  i32.const 128
  local.get $2
  i64.const 7
  i64.and
  i32.wrap_i64
  i32.shr_u
  i32.and
 )
 (func $assembly/index/compare (type $i32_i32_=>_i32) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load $0 offset=8
  local.get $1
  i32.load $0 offset=8
  i32.ne
  if
   i32.const 1696
   i32.const 1408
   i32.const 107
   i32.const 54
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load $0 offset=8
  local.set $2
  block $~lib/util/memory/memcmp|inlined.0
   local.get $0
   i32.load $0 offset=4
   local.tee $3
   local.get $1
   i32.load $0 offset=4
   local.tee $1
   i32.eq
   br_if $~lib/util/memory/memcmp|inlined.0
   local.get $3
   i32.const 7
   i32.and
   local.get $1
   i32.const 7
   i32.and
   i32.eq
   if
    loop $while-continue|0
     local.get $3
     i32.const 7
     i32.and
     if
      i32.const 0
      local.set $4
      local.get $2
      i32.eqz
      br_if $~lib/util/memory/memcmp|inlined.0
      local.get $3
      i32.load8_u $0
      local.tee $0
      local.get $1
      i32.load8_u $0
      local.tee $5
      i32.sub
      local.set $4
      local.get $0
      local.get $5
      i32.ne
      br_if $~lib/util/memory/memcmp|inlined.0
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    loop $while-continue|1
     local.get $2
     i32.const 8
     i32.ge_u
     if
      local.get $3
      i64.load $0
      local.get $1
      i64.load $0
      i64.eq
      if
       local.get $3
       i32.const 8
       i32.add
       local.set $3
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       local.get $2
       i32.const 8
       i32.sub
       local.set $2
       br $while-continue|1
      end
     end
    end
   end
   loop $while-continue|2
    local.get $2
    local.tee $0
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    if
     local.get $3
     i32.load8_u $0
     local.tee $0
     local.get $1
     i32.load8_u $0
     local.tee $5
     i32.sub
     local.set $4
     local.get $0
     local.get $5
     i32.ne
     br_if $~lib/util/memory/memcmp|inlined.0
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
   i32.const 0
   local.set $4
  end
  local.get $4
 )
 (func $assembly/index/length (type $i32_=>_f64) (param $0 i32) (result f64)
  local.get $0
  i64.load $0 offset=16
  f64.convert_i64_u
 )
 (func $assembly/index/popcnt (type $i32_=>_f64) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  local.get $0
  i32.load $0 offset=4
  local.tee $1
  local.get $0
  i32.load $0 offset=8
  i32.add
  local.set $3
  local.get $1
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $2
    local.get $0
    i64.load $0
    i64.popcnt
    i64.add
    local.set $2
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  f64.convert_i64_u
 )
 (func $assembly/index/reset (type $i32_f64_=>_none) (param $0 i32) (param $1 f64)
  (local $2 i64)
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i64.trunc_sat_f64_u
  local.tee $2
  i64.const 3
  i64.shr_u
  i32.wrap_i64
  i32.add
  local.tee $0
  local.get $0
  i32.load8_u $0
  i32.const 128
  local.get $2
  i32.wrap_i64
  i32.const 7
  i32.and
  i32.shr_u
  i32.const -1
  i32.xor
  i32.and
  i32.store8 $0
 )
 (func $assembly/index/set (type $i32_f64_=>_none) (param $0 i32) (param $1 f64)
  (local $2 i32)
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i64.trunc_sat_f64_u
  i32.wrap_i64
  local.tee $2
  i32.const 3
  i32.shr_u
  i32.add
  local.tee $0
  local.get $0
  i32.load8_u $0
  i32.const 128
  local.get $2
  i32.const 7
  i32.and
  i32.shr_u
  i32.or
  i32.store8 $0
 )
 (func $assembly/index/size (type $i32_=>_f64) (param $0 i32) (result f64)
  local.get $0
  i64.load32_s $0 offset=8
  i64.const 3
  i64.shl
  f64.convert_i64_u
 )
 (func $assembly/index/toggle (type $i32_f64_=>_none) (param $0 i32) (param $1 f64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i64.trunc_sat_f64_u
  local.tee $2
  i64.const 7
  i64.and
  i32.wrap_i64
  local.set $4
  local.get $0
  i32.load $0 offset=4
  local.get $2
  i64.const 3
  i64.shr_u
  i32.wrap_i64
  i32.add
  local.set $3
  local.get $2
  local.get $0
  i64.load $0 offset=16
  i64.gt_u
  if
   i32.const 1216
   i32.const 1408
   i32.const 183
   i32.const 35
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $3
  i32.load8_u $0
  i32.const 128
  local.get $4
  i32.shr_u
  i32.xor
  i32.store8 $0
 )
 (func $~lib/number/U64#toString (type $i64_=>_i32) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3712
  i32.lt_s
  if
   i32.const 36512
   i32.const 36560
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  block $__inlined_func$~lib/util/number/utoa64
   local.get $0
   i64.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1968
    local.set $1
    br $__inlined_func$~lib/util/number/utoa64
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 64
   local.get $0
   i64.clz
   i32.wrap_i64
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   loop $do-loop|0
    local.get $1
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i64.const 1
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.const 3456
    i32.add
    i32.load16_u $0
    i32.store16 $0
    local.get $0
    i64.const 1
    i64.shr_u
    local.tee $0
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $1
 )
 (func $~lib/number/I32#toString (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3712
  i32.lt_s
  if
   i32.const 36512
   i32.const 36560
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  block $__inlined_func$~lib/util/number/itoa32
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1968
    local.set $5
    br $__inlined_func$~lib/util/number/itoa32
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $0
   i32.sub
   local.get $0
   local.get $0
   i32.const 31
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $4
   select
   local.tee $1
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $1
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $1
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $1
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $1
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $1
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.tee $0
   i32.const 1
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.store $0
   local.get $4
   local.get $5
   i32.add
   local.set $2
   loop $while-continue|0
    local.get $1
    i32.const 10000
    i32.ge_u
    if
     local.get $1
     i32.const 10000
     i32.rem_u
     local.set $3
     local.get $1
     i32.const 10000
     i32.div_u
     local.set $1
     local.get $2
     local.get $0
     i32.const 4
     i32.sub
     local.tee $0
     i32.const 1
     i32.shl
     i32.add
     local.get $3
     i32.const 100
     i32.div_u
     i32.const 2
     i32.shl
     i32.const 1980
     i32.add
     i64.load32_u $0
     local.get $3
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 1980
     i32.add
     i64.load32_u $0
     i64.const 32
     i64.shl
     i64.or
     i64.store $0
     br $while-continue|0
    end
   end
   local.get $1
   i32.const 100
   i32.ge_u
   if
    local.get $2
    local.get $0
    i32.const 2
    i32.sub
    local.tee $0
    i32.const 1
    i32.shl
    i32.add
    local.get $1
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 1980
    i32.add
    i32.load $0
    i32.store $0
    local.get $1
    i32.const 100
    i32.div_u
    local.set $1
   end
   local.get $1
   i32.const 10
   i32.ge_u
   if
    local.get $2
    local.get $0
    i32.const 2
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.get $1
    i32.const 2
    i32.shl
    i32.const 1980
    i32.add
    i32.load $0
    i32.store $0
   else
    local.get $2
    local.get $0
    i32.const 1
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.get $1
    i32.const 48
    i32.add
    i32.store16 $0
   end
   local.get $4
   if
    local.get $5
    i32.const 45
    i32.store16 $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $5
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (type $none_=>_i32) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3660
  i32.load $0
  i32.const 2
  i32.shr_u
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3712
  i32.lt_s
  if
   i32.const 36512
   i32.const 36560
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i64.const 0
  i64.store $0
  local.get $4
  i32.const 0
  i32.store $0 offset=8
  block $__inlined_func$~lib/util/string/joinStringArray
   local.get $3
   i32.const 1
   i32.sub
   local.tee $4
   i32.const 0
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 3552
    local.set $2
    br $__inlined_func$~lib/util/string/joinStringArray
   end
   local.get $4
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 3664
    i32.load $0
    local.tee $1
    i32.store $0
    local.get $0
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    i32.const 3552
    local.get $1
    select
    local.set $2
    br $__inlined_func$~lib/util/string/joinStringArray
   end
   loop $for-loop|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.const 2
     i32.shl
     i32.const 3664
     i32.add
     i32.load $0
     local.tee $5
     i32.store $0 offset=4
     local.get $5
     if
      local.get $0
      local.get $5
      i32.const 20
      i32.sub
      i32.load $0 offset=16
      i32.const 1
      i32.shr_u
      i32.add
      local.set $0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.get $4
   i32.const 3548
   i32.load $0
   i32.const 1
   i32.shr_u
   local.tee $3
   i32.mul
   i32.add
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store $0 offset=8
   i32.const 0
   local.set $0
   loop $for-loop|1
    local.get $0
    local.get $4
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.const 2
     i32.shl
     i32.const 3664
     i32.add
     i32.load $0
     local.tee $5
     i32.store $0 offset=4
     local.get $5
     if
      local.get $2
      local.get $1
      i32.const 1
      i32.shl
      i32.add
      local.get $5
      local.get $5
      i32.const 20
      i32.sub
      i32.load $0 offset=16
      i32.const 1
      i32.shr_u
      local.tee $5
      i32.const 1
      i32.shl
      memory.copy $0 $0
      local.get $1
      local.get $5
      i32.add
      local.set $1
     end
     local.get $3
     if
      local.get $2
      local.get $1
      i32.const 1
      i32.shl
      i32.add
      i32.const 3552
      local.get $3
      i32.const 1
      i32.shl
      memory.copy $0 $0
      local.get $1
      local.get $3
      i32.add
      local.set $1
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 2
   i32.shl
   i32.const 3664
   i32.add
   i32.load $0
   local.tee $0
   i32.store $0 offset=4
   local.get $0
   if
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.const -2
    i32.and
    memory.copy $0 $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $2
 )
 (func $~lib/string/String.__concat (type $i32_i32_=>_i32) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3712
  i32.lt_s
  if
   i32.const 36512
   i32.const 36560
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  block $__inlined_func$~lib/string/String#concat
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const -2
   i32.and
   local.tee $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const -2
   i32.and
   local.tee $4
   i32.add
   local.tee $2
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 3552
    local.set $2
    br $__inlined_func$~lib/string/String#concat
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store $0
   local.get $2
   local.get $0
   local.get $3
   memory.copy $0 $0
   local.get $2
   local.get $3
   i32.add
   local.get $1
   local.get $4
   memory.copy $0 $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $2
 )
 (func $~lib/math/NativeMath.random (type $none_=>_f64) (result f64)
  (local $0 i64)
  (local $1 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   call $~lib/builtins/seed
   i64.reinterpret_f64
   local.tee $0
   i64.eqz
   if
    i64.const -7046029254386353131
    local.set $0
   end
   local.get $0
   local.get $0
   i64.const 33
   i64.shr_u
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $0
   i64.const 33
   i64.shr_u
   local.get $0
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $0
   i64.const 33
   i64.shr_u
   local.get $0
   i64.xor
   global.set $~lib/math/random_state0_64
   global.get $~lib/math/random_state0_64
   i64.const -1
   i64.xor
   local.tee $0
   i64.const 33
   i64.shr_u
   local.get $0
   i64.xor
   i64.const -49064778989728563
   i64.mul
   local.tee $0
   i64.const 33
   i64.shr_u
   local.get $0
   i64.xor
   i64.const -4265267296055464877
   i64.mul
   local.tee $0
   i64.const 33
   i64.shr_u
   local.get $0
   i64.xor
   global.set $~lib/math/random_state1_64
   i32.const 1
   global.set $~lib/math/random_seeded
  end
  global.get $~lib/math/random_state0_64
  local.set $1
  global.get $~lib/math/random_state1_64
  local.tee $0
  global.set $~lib/math/random_state0_64
  local.get $0
  local.get $1
  local.get $1
  i64.const 23
  i64.shl
  i64.xor
  local.tee $1
  i64.const 17
  i64.shr_u
  local.get $1
  i64.xor
  i64.xor
  local.get $0
  i64.const 26
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state1_64
  local.get $0
  i64.const 12
  i64.shr_u
  i64.const 4607182418800017408
  i64.or
  f64.reinterpret_i64
  f64.const -1
  f64.add
 )
 (func $assembly/index/wipe (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load $0 offset=4
  local.get $0
  i32.load $0 offset=8
  i32.add
  local.set $2
  block $break|0
   block $case2|0
    block $case1|0
     local.get $1
     i32.const 255
     i32.and
     local.tee $1
     if
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      br $case2|0
     end
     local.get $0
     i32.load $0 offset=4
     i32.const 0
     local.get $0
     i32.load $0 offset=8
     memory.fill $0
     br $break|0
    end
    local.get $0
    i32.load $0 offset=4
    i32.const 255
    local.get $0
    i32.load $0 offset=8
    memory.fill $0
    br $break|0
   end
   local.get $0
   i32.load $0 offset=4
   local.set $0
   loop $for-loop|1
    local.get $0
    local.get $2
    i32.lt_u
    if
     local.get $0
     call $~lib/math/NativeMath.random
     f64.const 4294967295
     f64.mul
     i64.trunc_sat_f64_u
     i64.const 32
     i64.shl
     call $~lib/math/NativeMath.random
     f64.const 4294967295
     f64.mul
     i32.trunc_sat_f64_u
     i64.extend_i32_u
     i64.or
     i64.store $0
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     br $for-loop|1
    end
   end
  end
 )
 (func $~lib/rt/__visit_members (type $i32_=>_none) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $folding-inner0
   block $invalid
    block $~lib/staticarray/StaticArray<~lib/string/String>
     block $~lib/string/String
      block $~lib/arraybuffer/ArrayBuffer
       block $~lib/object/Object
        local.get $0
        i32.const 8
        i32.sub
        i32.load $0
        br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner0 $folding-inner0 $folding-inner0 $~lib/staticarray/StaticArray<~lib/string/String> $invalid
       end
       return
      end
      return
     end
     return
    end
    local.get $0
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.add
    local.set $1
    loop $while-continue|0
     local.get $0
     local.get $1
     i32.lt_u
     if
      local.get $0
      i32.load $0
      local.tee $2
      if
       local.get $2
       call $byn-split-outlined-A$~lib/rt/itcms/__visit
      end
      local.get $0
      i32.const 4
      i32.add
      local.set $0
      br $while-continue|0
     end
    end
    return
   end
   unreachable
  end
  local.get $0
  i32.load $0
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
 )
 (func $~start (type $none_=>_none)
  i32.const 1172
  i32.const 1168
  i32.store $0
  i32.const 1176
  i32.const 1168
  i32.store $0
  i32.const 1168
  global.set $~lib/rt/itcms/toSpace
  i32.const 1316
  i32.const 1312
  i32.store $0
  i32.const 1320
  i32.const 1312
  i32.store $0
  i32.const 1312
  global.set $~lib/rt/itcms/fromSpace
  memory.size $0
  i32.const 16
  i32.shl
  i32.const 36480
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1524
  i32.const 1520
  i32.store $0
  i32.const 1528
  i32.const 1520
  i32.store $0
  i32.const 1520
  global.set $~lib/rt/itcms/pinSpace
 )
 (func $assembly/index/toString (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3712
  i32.lt_s
  if
   i32.const 36512
   i32.const 36560
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.const 28
  memory.fill $0
  local.get $0
  i32.load $0 offset=4
  local.tee $3
  local.get $0
  i32.load $0 offset=8
  i32.add
  i32.const 8
  i32.sub
  i64.load $0
  local.set $1
  local.get $3
  i64.load $0
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
  local.tee $4
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $4
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  call $~lib/number/U64#toString
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1968
  i32.store $0 offset=8
  local.get $3
  call $~lib/string/String#padStart
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $2
  local.get $3
  i64.const 64
  local.get $0
  i64.load $0 offset=16
  local.tee $4
  local.get $4
  i64.const 64
  i64.ge_u
  select
  i32.wrap_i64
  call $~lib/string/String#slice
  local.tee $5
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i64.load $0 offset=16
  i64.const 128
  i64.gt_u
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0 offset=8
   i32.const 3
   i32.shr_u
   i32.const 2
   i32.sub
   i32.const 6
   i32.shl
   call $~lib/number/I32#toString
   local.tee $2
   i32.store $0 offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 3664
   i32.store $0
   i32.const 3668
   local.get $2
   i32.store $0
   local.get $2
   if
    i32.const 3664
    local.get $2
    i32.const 1
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 3664
   i32.store $0
   local.get $2
   i32.const 3552
   i32.store $0 offset=4
   call $~lib/staticarray/StaticArray<~lib/string/String>#join
  else
   i32.const 3552
  end
  local.tee $2
  i32.store $0 offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i64.load $0 offset=16
  i64.const 64
  i64.gt_u
  if (result i32)
   local.get $1
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $1
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $1
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $1
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
   call $~lib/number/U64#toString
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   local.get $3
   i32.store $0 offset=4
   local.get $6
   i32.const 1968
   i32.store $0 offset=8
   local.get $3
   call $~lib/string/String#padStart
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0
   local.get $3
   local.get $0
   i64.load $0 offset=16
   i32.wrap_i64
   i32.const 63
   i32.and
   local.tee $0
   i32.const 64
   local.get $0
   select
   call $~lib/string/String#slice
  else
   i32.const 3552
  end
  local.tee $0
  i32.store $0 offset=24
  local.get $5
  local.get $2
  call $~lib/string/String.__concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $0
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/index/BitView#constructor (type $i64_=>_i32) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 3712
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   i32.const 24
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   local.get $1
   i64.const 0
   i64.store $0 offset=16
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3712
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store $0
   local.get $1
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.const 5
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store $0
   end
   local.get $1
   i32.const 0
   i32.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   local.get $0
   i64.const 63
   i64.add
   i64.const 6
   i64.shr_u
   i32.wrap_i64
   local.tee $3
   i32.const 134217727
   i32.gt_u
   if
    i32.const 1360
    i32.const 1408
    i32.const 17
    i32.const 57
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 3
   i32.shl
   local.tee $4
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store $0 offset=4
   local.get $1
   local.get $3
   i32.store $0
   local.get $3
   if
    local.get $1
    local.get $3
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $1
   local.get $3
   i32.store $0 offset=4
   local.get $1
   local.get $4
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $1
   i32.store $0
   local.get $1
   local.get $0
   i64.store $0 offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 36512
  i32.const 36560
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/new_BitView (type $f64_=>_i32) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3712
  i32.lt_s
  if
   i32.const 36512
   i32.const 36560
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i64.trunc_sat_f64_u
  call $assembly/index/BitView#constructor
  local.tee $4
  i32.store $0
  local.get $4
  if
   local.get $4
   i32.const 20
   i32.sub
   local.tee $3
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 1632
    i32.const 1120
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/pinSpace
   local.tee $2
   i32.load $0 offset=8
   local.set $1
   local.get $3
   local.get $2
   i32.const 3
   i32.or
   i32.store $0 offset=4
   local.get $3
   local.get $1
   i32.store $0 offset=8
   local.get $1
   local.get $3
   local.get $1
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store $0 offset=4
   local.get $2
   local.get $3
   i32.store $0 offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $assembly/index/and_or_xor (type $i32_i32_i32_=>_i32) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3712
  i32.lt_s
  if
   i32.const 36512
   i32.const 36560
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.store $0
  local.get $5
  local.get $0
  i64.load $0 offset=16
  local.tee $3
  local.get $1
  i64.load $0 offset=16
  local.tee $4
  local.get $3
  local.get $4
  i64.lt_u
  select
  call $assembly/index/BitView#constructor
  local.tee $5
  i32.store $0
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      local.get $2
      i32.const 255
      i32.and
      i32.const 1
      i32.sub
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      local.get $5
      i32.load $0 offset=8
      i32.lt_s
      if
       local.get $2
       local.get $5
       i32.load $0 offset=4
       i32.add
       local.get $2
       local.get $0
       i32.load $0 offset=4
       i32.add
       i64.load $0
       local.get $2
       local.get $1
       i32.load $0 offset=4
       i32.add
       i64.load $0
       i64.and
       i64.store $0
       local.get $2
       i32.const 8
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     br $break|0
    end
    i32.const 0
    local.set $2
    loop $for-loop|2
     local.get $2
     local.get $5
     i32.load $0 offset=8
     i32.lt_s
     if
      local.get $2
      local.get $5
      i32.load $0 offset=4
      i32.add
      local.get $2
      local.get $0
      i32.load $0 offset=4
      i32.add
      i64.load $0
      local.get $2
      local.get $1
      i32.load $0 offset=4
      i32.add
      i64.load $0
      i64.or
      i64.store $0
      local.get $2
      i32.const 8
      i32.add
      local.set $2
      br $for-loop|2
     end
    end
    br $break|0
   end
   i32.const 0
   local.set $2
   loop $for-loop|3
    local.get $2
    local.get $5
    i32.load $0 offset=8
    i32.lt_s
    if
     local.get $2
     local.get $5
     i32.load $0 offset=4
     i32.add
     local.get $2
     local.get $0
     i32.load $0 offset=4
     i32.add
     i64.load $0
     local.get $2
     local.get $1
     i32.load $0 offset=4
     i32.add
     i64.load $0
     i64.xor
     i64.store $0
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     br $for-loop|3
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $assembly/index/not (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3712
  i32.lt_s
  if
   i32.const 36512
   i32.const 36560
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i64.load $0 offset=16
  call $assembly/index/BitView#constructor
  local.tee $2
  i32.store $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.load $0 offset=8
   i32.lt_s
   if
    local.get $1
    local.get $2
    i32.load $0 offset=4
    i32.add
    local.get $1
    local.get $0
    i32.load $0 offset=4
    i32.add
    i64.load $0
    i64.const -1
    i64.xor
    i64.store $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/index/slice (type $i32_f64_f64_=>_i32) (param $0 i32) (param $1 f64) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3712
  i32.lt_s
  if
   i32.const 36512
   i32.const 36560
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $2
  f64.const 0
  f64.lt
  if (result f64)
   local.get $0
   i64.load $0 offset=16
   f64.convert_i64_u
  else
   local.get $2
  end
  local.get $1
  f64.sub
  i64.trunc_sat_f64_u
  call $assembly/index/BitView#constructor
  local.tee $7
  i32.store $0
  local.get $0
  i64.load32_u $0 offset=4
  local.get $1
  i64.trunc_sat_f64_u
  local.tee $4
  i64.const 6
  i64.shr_u
  i64.add
  i32.wrap_i64
  local.set $6
  local.get $4
  i64.const 63
  i64.and
  i32.wrap_i64
  local.set $3
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $7
   i32.load $0 offset=8
   i32.lt_s
   if
    local.get $0
    local.get $7
    i32.load $0 offset=4
    i32.add
    local.get $0
    i32.const 8
    i32.add
    local.tee $5
    local.get $7
    i32.load $0 offset=8
    i32.lt_s
    if (result i64)
     local.get $5
     local.get $6
     i32.add
     i64.load $0
     i64.const 64
     local.get $3
     i64.extend_i32_u
     i64.sub
     i64.shr_u
    else
     i64.const 0
    end
    local.get $0
    local.get $6
    i32.add
    i64.load $0
    local.get $3
    i64.extend_i32_u
    i64.shl
    i64.or
    i64.store $0
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/string/String#padStart (type $i32_=>_i32) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3712
  i32.lt_s
  if
   i32.const 36512
   i32.const 36560
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 1964
  i32.load $0
  i32.const -2
  i32.and
  local.tee $1
  i32.eqz
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const -2
  i32.and
  local.tee $5
  i32.const 128
  i32.gt_u
  i32.or
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 128
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0
  i32.const 128
  local.get $5
  i32.sub
  local.tee $3
  local.get $1
  i32.gt_u
  if
   local.get $3
   local.get $3
   i32.const 2
   i32.sub
   local.get $1
   i32.div_u
   local.get $1
   i32.mul
   local.tee $6
   i32.sub
   local.set $7
   loop $while-continue|0
    local.get $4
    local.get $6
    i32.lt_u
    if
     local.get $2
     local.get $4
     i32.add
     i32.const 1968
     local.get $1
     memory.copy $0 $0
     local.get $1
     local.get $4
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
   local.get $2
   local.get $6
   i32.add
   i32.const 1968
   local.get $7
   memory.copy $0 $0
  else
   local.get $2
   i32.const 1968
   local.get $3
   memory.copy $0 $0
  end
  local.get $2
  local.get $3
  i32.add
  local.get $0
  local.get $5
  memory.copy $0 $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String#slice (type $i32_i32_=>_i32) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3712
  i32.lt_s
  if
   i32.const 36512
   i32.const 36560
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $2
   local.get $1
   local.get $2
   i32.lt_s
   select
  end
  local.tee $1
  i32.const 0
  i32.le_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 3552
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 1
  i32.shl
  local.tee $1
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0
  local.get $2
  local.get $0
  local.get $1
  memory.copy $0 $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (type $i32_=>_none) (param $0 i32)
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (type $i32_i32_i32_=>_none) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load $0 offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
)