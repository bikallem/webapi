///|
/// Emitter trait. Abstract functionality to emit filename and mbt code for
/// a given IDL definition.
pub(open) trait Emitter {
  emit(self : Self, name : String) -> (Filename, Array[Emit])
}

///|
/// Represents a filename for the generated code.
pub(all) struct Filename(String) derive(Show, ToJson, Eq, Hash)

///|
/// Represents mbt code fragments emitted by an emiiter.
pub(all) struct Code(String) derive(Show, ToJson)

///|
/// Emits code for all given names using the provided emitter.
pub fn[E : Emitter] emit_all(
  emitter : E,
  names : Iter[String],
) -> Map[Filename, Code] {
  let result = {}
  for name in names {
    let (filename, emits) = emitter.emit(name)
    result[filename] = Code(mbt_code_gen(emits))
  }
  result
}

///|
/// Multi-target file output
pub(all) struct MultiTargetFiles {
  shared : Map[Filename, Code]
  js_ffi : Map[Filename, Code]
  wasm_ffi : Map[Filename, Code]
}

///|
/// Emits multi-target code for all given names using the provided emitter.
pub fn[E : Emitter] emit_all_multi(
  emitter : E,
  names : Iter[String],
) -> MultiTargetFiles {
  let shared : Map[Filename, Code] = {}
  let js_ffi : Map[Filename, Code] = {}
  let wasm_ffi : Map[Filename, Code] = {}
  for name in names {
    let (Filename(base_filename), emits) = emitter.emit(name)
    let multi = mbt_code_gen_multi(emits)
    // Shared file always gets written (it has the type defs, traits, impls)
    shared[Filename(base_filename)] = Code(multi.shared)
    // JS/wasm FFI files only if there's FFI content
    if multi.js_ffi.length() > 0 {
      let js_filename = base_filename
        .strip_suffix(".mbt")
        .unwrap_or("")
        .to_string() +
        "_js.mbt"
      js_ffi[Filename(js_filename)] = Code(multi.js_ffi)
    }
    if multi.wasm_ffi.length() > 0 {
      let wasm_filename = base_filename
        .strip_suffix(".mbt")
        .unwrap_or("")
        .to_string() +
        "_wasm.mbt"
      wasm_ffi[Filename(wasm_filename)] = Code(multi.wasm_ffi)
    }
  }
  MultiTargetFiles::{ shared, js_ffi, wasm_ffi }
}
