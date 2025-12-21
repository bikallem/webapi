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
