declare namespace __AdaptedExports {
  /** Exported memory */
  export const memory: WebAssembly.Memory;
  // Exported runtime interface
  export function __new(size: number, id: number): number;
  export function __pin(ptr: number): number;
  export function __unpin(ptr: number): void;
  export function __collect(): void;
  export const __rtti_base: number;
  /**
   * assembly/index/__byteLength
   * @param ptr `usize`
   * @returns `i32`
   */
  export function __byteLength(ptr: number): number;
  /**
   * assembly/index/__dataStart
   * @param ptr `usize`
   * @returns `i32`
   */
  export function __dataStart(ptr: number): number;
  /**
   * assembly/index/__length
   * @param ptr `usize`
   * @returns `f64`
   */
  export function __length(ptr: number): number;
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
   * assembly/index/compare
   * @param ptrA `usize`
   * @param ptrB `usize`
   * @returns `i32`
   */
  export function compare(ptrA: number, ptrB: number): number;
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
   * assembly/index/slice
   * @param ptr `usize`
   * @param start `f64`
   * @param end `f64`
   * @returns `i32`
   */
  export function slice(ptr: number, start: number, end: number): number;
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
