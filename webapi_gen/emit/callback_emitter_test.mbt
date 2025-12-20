///|
test "emit_callback simple EventListener" {
  let idl =
    #|callback EventListener = undefined (Event event);
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  // Extract the callback from parsed definitions
  let cb_def = match definitions[0].definition {
    CallbackFunction(cb) => cb
    _ => fail("Expected callback function")
  }
  let emits = emit_callback(cb_def, registry)
  inspect(emits.length(), content="1")
  @json.inspect(emits[0], content=[
    "Callback",
    ["TypeName", "EventListener"],
    [{ "name": "event", "mbt_type": "Event" }],
    "Unit",
  ])
}

///|
test "emit_callback with interface argument uses trait reference" {
  let idl =
    #|interface Event {};
    #|callback EventListener = undefined (Event event);
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  // Extract the callback from parsed definitions
  let cb_def = match definitions[1].definition {
    CallbackFunction(cb) => cb
    _ => fail("Expected callback function")
  }
  let emits = emit_callback(cb_def, registry)
  @json.inspect(emits[0], content=[
    "Callback",
    ["TypeName", "EventListener"],
    [{ "name": "event", "mbt_type": "&TEvent" }],
    "Unit",
  ])
}

///|
test "emit_callback multi-arg MutationCallback" {
  let idl =
    #|callback MutationCallback = undefined (sequence<MutationRecord> mutations, MutationObserver observer);
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let cb_def = match definitions[0].definition {
    CallbackFunction(cb) => cb
    _ => fail("Expected callback function")
  }
  let emits = emit_callback(cb_def, registry)
  @json.inspect(emits[0], content=[
    "Callback",
    ["TypeName", "MutationCallback"],
    [
      { "name": "mutations", "mbt_type": "Array[MutationRecord]" },
      { "name": "observer", "mbt_type": "MutationObserver" },
    ],
    "Unit",
  ])
}

///|
test "js_code_gen Callback generates correct code" {
  let idl =
    #|callback EventListener = undefined (Event event);
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let cb_def = match definitions[0].definition {
    CallbackFunction(cb) => cb
    _ => fail("Expected callback function")
  }
  let emits = emit_callback(cb_def, registry)
  let code = js_code_gen(emits)
  let expected =
    #|///|
    #|#external
    #|pub type EventListener
    #|
    #|///|
    #|pub impl TJsValue for EventListener with to_js(self : EventListener) -> JsValue = "%identity"
    #|
    #|///|
    #|pub fn EventListener::new(f : (Event) -> Unit) -> EventListener = "webapi_EventListener" "new"
  inspect(code, content=expected)
}

///|
test "js_code_gen Callback with multiple args" {
  let idl =
    #|callback MutationCallback = undefined (sequence<MutationRecord> mutations, MutationObserver observer);
  let definitions = @parser.parse(idl)
  let registry = @type_registry.TypeRegistry::new(definitions)
  let cb_def = match definitions[0].definition {
    CallbackFunction(cb) => cb
    _ => fail("Expected callback function")
  }
  let emits = emit_callback(cb_def, registry)
  let code = js_code_gen(emits)
  assert_true(
    code.contains(
      "(f : (Array[MutationRecord], MutationObserver) -> Unit) -> MutationCallback",
    ),
  )
}
