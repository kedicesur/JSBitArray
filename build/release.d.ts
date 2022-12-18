declare namespace __AdaptedExports {
  /** Exported memory */
  export const memory: WebAssembly.Memory;
  /**
   * assembly/index/__release
   * @param ptr `usize`
   */
  export function __release(ptr: number): void;
  /**
   * assembly/index/new_BitView
   * @param l `f64`
   * @returns `i32`
   */
  export function new_BitView(l: number): number;
  /**
   * assembly/index/all
   * @param ptr `usize`
   * @returns `u8`
   */
  export function all(ptr: number): number;
  /**
   * assembly/index/and_or_xor
   * @param ptrA `usize`
   * @param ptrB `usize`
   * @param op `u8`
   * @returns `i32`
   */
  export function and_or_xor(ptrA: number, ptrB: number, op: number): number;
  /**
   * assembly/index/any
   * @param ptr `usize`
   * @returns `u8`
   */
  export function any(ptr: number): number;
  /**
   * assembly/index/at
   * @param ptr `usize`
   * @param index `f64`
   * @returns `u8`
   */
  export function at(ptr: number, index: number): number;
  /**
   * assembly/index/compare
   * @param ptrA `usize`
   * @param ptrB `usize`
   * @returns `i32`
   */
  export function compare(ptrA: number, ptrB: number): number;
  /**
   * assembly/index/length
   * @param ptr `usize`
   * @returns `f64`
   */
  export function length(ptr: number): number;
  /**
   * assembly/index/not
   * @param ptr `usize`
   * @returns `i32`
   */
  export function not(ptr: number): number;
  /**
   * assembly/index/popcnt
   * @param ptr `usize`
   * @returns `f64`
   */
  export function popcnt(ptr: number): number;
  /**
   * assembly/index/reset
   * @param ptr `usize`
   * @param index `f64`
   */
  export function reset(ptr: number, index: number): void;
  /**
   * assembly/index/set
   * @param ptr `usize`
   * @param index `f64`
   */
  export function set(ptr: number, index: number): void;
  /**
   * assembly/index/size
   * @param ptr `usize`
   * @returns `f64`
   */
  export function size(ptr: number): number;
  /**
   * assembly/index/slice
   * @param ptr `usize`
   * @param start `f64`
   * @param end `f64`
   * @returns `i32`
   */
  export function slice(ptr: number, start: number, end: number): number;
  /**
   * assembly/index/toggle
   * @param ptr `usize`
   * @param index `f64`
   */
  export function toggle(ptr: number, index: number): void;
  /**
   * assembly/index/toString
   * @param ptr `usize`
   * @returns `~lib/string/String`
   */
  export function toString(ptr: number): string;
  /**
   * assembly/index/wipe
   * @param ptr `usize`
   * @param val `u8`
   */
  export function wipe(ptr: number, val: number): void;
}
/** Instantiates the compiled WebAssembly module with the given imports. */
export declare function instantiate(module: WebAssembly.Module, imports: {
  env: unknown,
}): Promise<typeof __AdaptedExports>;
