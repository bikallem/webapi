///|
using @parser {type DefinitionExtendedAttributes}

///|
using @partial_merged {merge_partials}

///|
using @flattened_idl {flatten}

///|
using @config {type GeneratorConfig}

///|
using @emitter {
  emit_all_typedefs,
  emit_all_enums,
  emit_all_dictionaries,
  emit_all_interfaces,
  emit_all_callbacks,
  emit_js_runtime,
  emit_globals,
}

///|
using @type_registry {type TypeRegistry}
