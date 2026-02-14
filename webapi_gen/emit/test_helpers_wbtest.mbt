///|
/// Parse WebIDL and return flattened IDL and type registry.
/// Common setup for most emit tests.
fn parse_and_flatten(
  idl : String,
) -> (@flattened_idl.FlattenedIdl, @type_registry.TypeRegistry) raise Error {
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  (flattened, type_registry)
}

///|
/// Parse WebIDL and create an InterfaceEmitter ready to emit.
fn make_interface_emitter(idl : String) -> InterfaceEmitter raise Error {
  let (flattened, type_registry) = parse_and_flatten(idl)
  InterfaceEmitter::{ idl: flattened, type_registry, log_skipped: ignore }
}
