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
/// Emits merged multi-target code for all given names using the provided emitter.
pub fn[E : Emitter] emit_all_multi(
  emitter : E,
  names : Iter[String],
) -> Map[Filename, Code] {
  let files : Map[Filename, Code] = {}
  for name in names {
    let (Filename(base_filename), emits) = emitter.emit(name)
    let multi = mbt_code_gen_multi(emits)
    files[Filename(base_filename)] = Code(merge_multi_target_code(multi))
  }
  files
}
