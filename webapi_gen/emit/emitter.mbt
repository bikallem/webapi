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
/// Derive a variant filename by inserting a suffix before the .mbt extension.
/// e.g. variant_filename("foo_interface.mbt", "_js") => "foo_interface_js.mbt"
fn variant_filename(base : String, suffix : String) -> Filename {
  let stem = base.strip_suffix(".mbt").unwrap()
  Filename("\{stem}\{suffix}.mbt")
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
    shared[Filename(base_filename)] = Code(multi.shared)
    if multi.js_ffi.length() > 0 {
      js_ffi[variant_filename(base_filename, "_js")] = Code(multi.js_ffi)
    }
    if multi.wasm_ffi.length() > 0 {
      wasm_ffi[variant_filename(base_filename, "_wasm")] = Code(multi.wasm_ffi)
    }
  }
  MultiTargetFiles::{ shared, js_ffi, wasm_ffi }
}
