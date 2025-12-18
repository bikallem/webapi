// Callback emitter - generates MoonBit bindings for WebIDL callback functions

///|
/// Build CallbackEmit IR from CallbackFunctionDefinition
pub fn build_callback_emit(
  cb : @parser.CallbackFunctionDefinition,
  type_registry : TypeRegistry,
) -> CallbackEmit {
  let args : Array[CallbackArgEmit] = []
  for arg in cb.arguments {
    let mbt_type = to_mbt_type_string(arg.type_.type_, type_registry)
    args.push({ name: safe_identifier(arg.name), mbt_type })
  }
  let return_type = to_mbt_type_string(cb.return_type, type_registry)
  { name: cb.name, args, return_type, ffi_module: ffi_module_name(cb.name) }
}

///|
/// Generate MoonBit closure type signature for callback
/// e.g., "(Event) -> Unit"
fn callback_closure_type(cb : CallbackEmit) -> String {
  let arg_types = cb.args.map(fn(a) { a.mbt_type }).join(", ")
  "(\{arg_types}) -> \{cb.return_type}"
}

///|
/// Emit complete callback binding code
pub fn emit_callback(cb : CallbackEmit) -> String {
  let closure_type = callback_closure_type(cb)
  let type_name = cb.name
  let buf = StringBuilder::new()

  // Header comment
  buf.write_string(
    "// Auto-generated MoonBit bindings for \{type_name} callback\n\n",
  )
  buf.write_string("// Do not edit manually\n\n")

  // External type
  buf.write_string("///|\n")
  buf.write_string("#external\n")
  buf.write_string("pub type \{type_name}\n\n")

  // TJsValue impl
  buf.write_string("///|\n")
  buf.write_string(
    "pub impl TJsValue for \{type_name} with to_js(self : \{type_name}) -> JsValue = \"%identity\"\n\n",
  )

  // Constructor from MoonBit closure
  buf.write_string("///|\n")
  buf.write_string(
    "pub fn \{type_name}::new(f : \{closure_type}) -> \{type_name} = \"\{cb.ffi_module}\" \"new\"\n",
  )
  buf.to_string()
}

///|
/// Emit all callbacks from FlattenedIdl
pub fn emit_all_callbacks(
  flattened_idl : FlattenedIdl,
  type_registry : TypeRegistry,
) -> Map[String, String] {
  let result : Map[String, String] = {}
  for _name, cb_def in flattened_idl.callbacks {
    let emit = build_callback_emit(cb_def, type_registry)
    let filename = "\{to_snake_case(emit.name)}_callback.mbt"
    result[filename] = emit_callback(emit)
  }
  result
}

///|
test "build_callback_emit simple callback" {
  // callback EventListener = undefined (Event event);
  let cb : @parser.CallbackFunctionDefinition = {
    name: "EventListener",
    return_type: @parser.Type::Undefined,
    arguments: [
      {
        extended_attributes: [],
        type_: {
          extended_attributes: [],
          type_: @parser.Type::Identifier("Event"),
        },
        name: "event",
        optional: false,
        variadic: false,
        default_value: None,
      },
    ],
  }
  let registry = TypeRegistry::new([])
  let emit = build_callback_emit(cb, registry)
  inspect(emit.name, content="EventListener")
  inspect(emit.return_type, content="Unit")
  inspect(emit.args.length(), content="1")
  inspect(emit.args[0].name, content="event")
  inspect(emit.args[0].mbt_type, content="Event")
  inspect(emit.ffi_module, content="webapi_EventListener")
}

///|
test "emit_callback generates correct code" {
  let cb : CallbackEmit = {
    name: "EventListener",
    args: [{ name: "event", mbt_type: "Event" }],
    return_type: "Unit",
    ffi_module: "webapi_EventListener",
  }
  let code = emit_callback(cb)
  let expected =
    #|// Auto-generated MoonBit bindings for EventListener callback
    #|
    #|// Do not edit manually
    #|
    #|///|
    #|#external
    #|pub type EventListener
    #|
    #|///|
    #|pub impl TJsValue for EventListener with to_js(self : EventListener) -> JsValue = "%identity"
    #|
    #|///|
    #|pub fn EventListener::new(f : (Event) -> Unit) -> EventListener = "webapi_EventListener" "new"
    #|
  inspect(code, content=expected)
}

///|
test "build_callback_emit multi-arg callback" {
  // callback MutationCallback = undefined (sequence<MutationRecord> mutations, MutationObserver observer);
  let cb : @parser.CallbackFunctionDefinition = {
    name: "MutationCallback",
    return_type: @parser.Type::Undefined,
    arguments: [
      {
        extended_attributes: [],
        type_: {
          extended_attributes: [],
          type_: @parser.Type::Sequence(
            @parser.Type::Identifier("MutationRecord"),
          ),
        },
        name: "mutations",
        optional: false,
        variadic: false,
        default_value: None,
      },
      {
        extended_attributes: [],
        type_: {
          extended_attributes: [],
          type_: @parser.Type::Identifier("MutationObserver"),
        },
        name: "observer",
        optional: false,
        variadic: false,
        default_value: None,
      },
    ],
  }
  let registry = TypeRegistry::new([])
  let emit = build_callback_emit(cb, registry)
  inspect(emit.name, content="MutationCallback")
  inspect(emit.args.length(), content="2")
  inspect(emit.args[0].mbt_type, content="Array[MutationRecord]")
  inspect(emit.args[1].mbt_type, content="MutationObserver")
}

///|
test "emit_callback multi-arg generates correct closure type" {
  let cb : CallbackEmit = {
    name: "MutationCallback",
    args: [
      { name: "mutations", mbt_type: "Array[MutationRecord]" },
      { name: "observer", mbt_type: "MutationObserver" },
    ],
    return_type: "Unit",
    ffi_module: "webapi_MutationCallback",
  }
  let code = emit_callback(cb)
  // Check that the closure type is correct
  assert_true(
    code.contains(
      "(f : (Array[MutationRecord], MutationObserver) -> Unit) -> MutationCallback",
    ),
  )
}
