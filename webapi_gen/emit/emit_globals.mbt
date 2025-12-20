// Globals emitter - generates globals.mbt with global singleton objects

///|
/// Configuration for global singletons to emit
/// Each entry is (global_name, interface_name, js_property_name)
let global_singletons : Array[(String, String, String)] = [
  ("document", "Document", "document"),
  ("window", "Window", "window"),
  ("navigator", "Navigator", "navigator"),
]

///|
/// Emit a single global FFI declaration and binding
fn emit_global_binding(
  global_name : String,
  interface_name : String,
  js_property : String,
) -> String {
  let ffi_name = "\{global_name}_ffi"
  let buf = StringBuilder::new()
  buf.write_string("///|\n")
  buf.write_string(
    "extern \"js\" fn \{ffi_name}() -> \{interface_name} = \"() => \{js_property}\"\n",
  )
  buf.write_string("\n")
  buf.write_string("///|\n")
  buf.write_string("pub let \{global_name} : \{interface_name} = \{ffi_name}()")
  buf.to_string()
}

///|
/// Emit globals.mbt file content
/// Only emits globals for interfaces that exist in the flattened IDL
pub fn emit_globals(flattened : @flattened_idl.FlattenedIdl) -> String {
  let buf = StringBuilder::new()

  // Header
  buf.write_string("// Auto-generated MoonBit bindings for global objects\n")
  buf.write_string("// Do not edit manually\n")
  let bindings : Array[String] = []
  for entry in global_singletons {
    let (global_name, interface_name, js_property) = entry
    // Only emit if the interface exists in the flattened IDL
    if flattened.interfaces.contains(interface_name) {
      bindings.push(
        emit_global_binding(global_name, interface_name, js_property),
      )
    }
  }
  if bindings.length() > 0 {
    buf.write_string("\n")
    buf.write_string(bindings.join("\n\n"))
    buf.write_string("\n")
  }
  buf.to_string()
}

///|
test "emit_global_binding" {
  let result = emit_global_binding("document", "Document", "document")
  let expected =
    #|///|
    #|extern "js" fn document_ffi() -> Document = "() => document"
    #|
    #|///|
    #|pub let document : Document = document_ffi()
  inspect(result, content=expected)
}

///|
test "emit_globals with Document interface" {
  let idl =
    #|interface Document {};
  let definitions = @parser.parse(idl)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let result = emit_globals(flattened)
  inspect(
    result,
    content=(
      #|// Auto-generated MoonBit bindings for global objects
      #|// Do not edit manually
      #|
      #|///|
      #|extern "js" fn document_ffi() -> Document = "() => document"
      #|
      #|///|
      #|pub let document : Document = document_ffi()
      #|
    ),
  )
}

///|
test "emit_globals with multiple interfaces" {
  let idl =
    #|interface Document {};
    #|interface Window {};
  let definitions = @parser.parse(idl)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let result = emit_globals(flattened)
  inspect(
    result,
    content=(
      #|// Auto-generated MoonBit bindings for global objects
      #|// Do not edit manually
      #|
      #|///|
      #|extern "js" fn document_ffi() -> Document = "() => document"
      #|
      #|///|
      #|pub let document : Document = document_ffi()
      #|
      #|///|
      #|extern "js" fn window_ffi() -> Window = "() => window"
      #|
      #|///|
      #|pub let window : Window = window_ffi()
      #|
    ),
  )
}

///|
test "emit_globals skips missing interfaces" {
  // Parse an IDL that doesn't have Document, Window, or Navigator
  let idl =
    #|interface SomeOtherInterface {};
  let definitions = @parser.parse(idl)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let result = emit_globals(flattened)
  // No bindings, just header
  inspect(
    result,
    content="// Auto-generated MoonBit bindings for global objects\n// Do not edit manually\n",
  )
}
