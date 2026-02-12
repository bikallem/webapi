///|
test "arg_mbt_type identifies union types correctly" {
  let idl =
    #|interface TestInterface {
    #|  void testMethod(optional (DOMString or unsigned long) param = "default");
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let iface = flattened.interfaces["TestInterface"]
  guard iface.members[0].interface_member is RegularOperation(op) else {
    abort("Expected first member to be RegularOperation")
  }
  let arg = op.arguments[0]
  let (mbt_type, emits) = arg_mbt_type(
    arg.type_.type_,
    "TestInterface",
    "testMethod",
    arg.name,
    type_registry,
  )
  inspect(
    mbt_type,
    content=(
      #|Union({name: "TestInterfaceTestMethodParam", has_undefined: false, options: [Primitive("String"), Primitive("UInt")]})
    ),
  )
  json_inspect(emits, content=[
    ["UnionArgTrait", ["TraitName", "TTestInterfaceTestMethodParam"]],
    [
      "UnionArgTraitImpl",
      ["TypeName", "String"],
      ["TraitName", "TTestInterfaceTestMethodParam"],
    ],
    [
      "UnionArgTraitImpl",
      ["TypeName", "UInt"],
      ["TraitName", "TTestInterfaceTestMethodParam"],
    ],
  ]) // One trait + two impls for union options
}

///|
test "arg_mbt_type identifies nested union types correctly" {
  let idl =
    #|interface TestInterface {
    #|  void testMethod((DOMString or (unsigned long or boolean)) param);
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let iface = flattened.interfaces["TestInterface"]
  guard iface.members[0].interface_member is RegularOperation(op) else {
    abort("Expected first member to be RegularOperation")
  }
  let arg = op.arguments[0]
  let (mbt_type, emits) = arg_mbt_type(
    arg.type_.type_,
    "TestInterface",
    "testMethod",
    arg.name,
    type_registry,
  )
  inspect(
    mbt_type,
    content=(
      #|Union({name: "TestInterfaceTestMethodParam", has_undefined: false, options: [Primitive("String"), Union({name: "TestInterfaceTestMethodParam2", has_undefined: false, options: [Primitive("UInt"), Primitive("Bool")]})]})
    ),
  )
  json_inspect(emits, content=[
    ["UnionArgTrait", ["TraitName", "TTestInterfaceTestMethodParam"]],
    [
      "UnionArgTraitImpl",
      ["TypeName", "String"],
      ["TraitName", "TTestInterfaceTestMethodParam"],
    ],
    ["External", ["TypeName", "TestInterfaceTestMethodParam2"]],
    ["UnionArgTrait", ["TraitName", "TTestInterfaceTestMethodParam2"]],
    [
      "UnionArgTraitImpl",
      ["TypeName", "UInt"],
      ["TraitName", "TTestInterfaceTestMethodParam2"],
    ],
    [
      "UnionArgTraitImpl",
      ["TypeName", "Bool"],
      ["TraitName", "TTestInterfaceTestMethodParam2"],
    ],
    [
      "UnionArgTraitImpl",
      ["TypeName", "&TTestInterfaceTestMethodParam2"],
      ["TraitName", "TTestInterfaceTestMethodParam"],
    ],
  ]) // Traits and impls for nested union options
}

///|
test "arg_mbt_type identifies nested union within sequence types correctly" {
  let idl =
    #|interface TestInterface {
    #|  void testMethod((DOMString or sequence<(unsigned long or DOMString)>) param);
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let iface = flattened.interfaces["TestInterface"]
  guard iface.members[0].interface_member is RegularOperation(op) else {
    abort("Expected first member to be RegularOperation")
  }
  let arg = op.arguments[0]
  let (mbt_type, emits) = arg_mbt_type(
    arg.type_.type_,
    "TestInterface",
    "testMethod",
    arg.name,
    type_registry,
  )
  inspect(
    mbt_type,
    content=(
      #|Union({name: "TestInterfaceTestMethodParam", has_undefined: false, options: [Primitive("String"), Other("Array[&TTestInterfaceTestMethodParam2]")]})
    ),
  )
  json_inspect(emits, content=[
    ["UnionArgTrait", ["TraitName", "TTestInterfaceTestMethodParam"]],
    [
      "UnionArgTraitImpl",
      ["TypeName", "String"],
      ["TraitName", "TTestInterfaceTestMethodParam"],
    ],
    ["UnionArgTrait", ["TraitName", "TTestInterfaceTestMethodParam2"]],
    [
      "UnionArgTraitImpl",
      ["TypeName", "UInt"],
      ["TraitName", "TTestInterfaceTestMethodParam2"],
    ],
    [
      "UnionArgTraitImpl",
      ["TypeName", "String"],
      ["TraitName", "TTestInterfaceTestMethodParam2"],
    ],
    [
      "UnionArgTraitImpl",
      ["TypeName", "Array[&TTestInterfaceTestMethodParam2]"],
      ["TraitName", "TTestInterfaceTestMethodParam"],
    ],
  ]) // One trait + two impls for union options
}

///|
test "arg_mbt_type identifies union with undefined option correctly" {
  let idl =
    #|interface TestInterface {
    #|  void testMethod((DOMString or undefined) param);
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let iface = flattened.interfaces["TestInterface"]
  guard iface.members[0].interface_member is RegularOperation(op) else {
    abort("Expected first member to be RegularOperation")
  }
  let arg = op.arguments[0]
  let (mbt_type, emits) = arg_mbt_type(
    arg.type_.type_,
    "TestInterface",
    "testMethod",
    arg.name,
    type_registry,
  )
  inspect(
    mbt_type,
    content=(
      #|Union({name: "TestInterfaceTestMethodParam", has_undefined: true, options: [Primitive("String"), Other("JsUndefined")]})
    ),
  )
  json_inspect(emits, content=[
    ["UnionArgTrait", ["TraitName", "TTestInterfaceTestMethodParam"]],
    [
      "UnionArgTraitImpl",
      ["TypeName", "String"],
      ["TraitName", "TTestInterfaceTestMethodParam"],
    ],
    [
      "UnionArgTraitImpl",
      ["TypeName", "JsUndefined"],
      ["TraitName", "TTestInterfaceTestMethodParam"],
    ],
  ]) // One trait + two impls for union options including undefined
}

///|
test "arg_mbt_type identifies non-union types correctly" {
  let idl =
    #|interface TestInterface {
    #|  void testMethod(DOMString param);
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let iface = flattened.interfaces["TestInterface"]
  guard iface.members[0].interface_member is RegularOperation(op) else {
    abort("Expected first member to be RegularOperation")
  }
  let arg = op.arguments[0]
  let (mbt_type, emits) = arg_mbt_type(
    arg.type_.type_,
    "TestInterface",
    "testMethod",
    arg.name,
    type_registry,
  )
  inspect(
    mbt_type,
    content=(
      #|Primitive("String")
    ),
  )
  json_inspect(emits, content=[]) // No emits for non-union type
}

///|
test "arg_mbt_type keeps typedef and callback identifiers as concrete names" {
  let idl =
    #|typedef DOMString Alias;
    #|callback MyCb = undefined ();
    #|interface EventTarget {};
    #|interface TestInterface {
    #|  void testMethod(Alias alias, MyCb callback, EventTarget target);
    #|};
  let definitions = @parser.parse(idl)
  let type_registry = @type_registry.TypeRegistry::new(definitions)
  let flattened = @partial_merged.merge_partials(definitions)
    |> @flattened_idl.flatten(ignore)
  let iface = flattened.interfaces["TestInterface"]
  guard iface.members[0].interface_member is RegularOperation(op) else {
    abort("Expected first member to be RegularOperation")
  }
  let (alias_type, alias_emits) = arg_mbt_type(
    op.arguments[0].type_.type_,
    "TestInterface",
    "testMethod",
    op.arguments[0].name,
    type_registry,
  )
  let (callback_type, callback_emits) = arg_mbt_type(
    op.arguments[1].type_.type_,
    "TestInterface",
    "testMethod",
    op.arguments[1].name,
    type_registry,
  )
  let (target_type, target_emits) = arg_mbt_type(
    op.arguments[2].type_.type_,
    "TestInterface",
    "testMethod",
    op.arguments[2].name,
    type_registry,
  )
  inspect(alias_type, content="Other(\"Alias\")")
  inspect(callback_type, content="Other(\"MyCb\")")
  inspect(target_type, content="Interface(\"EventTarget\")")
  json_inspect(alias_emits, content=[])
  json_inspect(callback_emits, content=[])
  json_inspect(target_emits, content=[])
}

///|
test "mbt_code_gen_multi generates is_undefined across targets" {
  let emits : Array[Emit] = [Emit::IsUndefinedMethod(TypeName("MyType"))]
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content="pub fn MyType::is_undefined(self : MyType) -> Bool { my_type_is_undefined_ffi(self) }",
  )
  inspect(
    multi.js_ffi,
    content="extern \"js\" fn my_type_is_undefined_ffi(obj : MyType) -> Bool = \"(obj) => obj === undefined\"",
  )
  inspect(
    multi.wasm_ffi,
    content="fn my_type_is_undefined_ffi(obj : MyType) -> Bool = \"JsValue\" \"isUndefined\"",
  )
}

///|
test "mbt_code_gen_multi generates empty method across targets" {
  let emits : Array[Emit] = [Emit::EmptyMethod(TypeName("MyDict"))]
  let multi = mbt_code_gen_multi(emits)
  inspect(
    multi.shared,
    content="pub fn MyDict::empty() -> MyDict { my_dict_empty_ffi() }",
  )
  inspect(
    multi.js_ffi,
    content="extern \"js\" fn my_dict_empty_ffi() -> MyDict = \"() => {}\"",
  )
  inspect(
    multi.wasm_ffi,
    content="fn my_dict_empty_ffi() -> MyDict = \"webapi_Dictionary\" \"empty\"",
  )
}

///|
test "mbt_code_gen_multi generates dictionary create across targets" {
  let args : Array[@type_mapping.MethodArg] = [
    {
      name: "title",
      original_name: "title",
      type_: @type_mapping.ArgMbtType::Primitive("String"),
      optional: true,
      variadic: false,
      default_value: None,
    },
  ]
  let emits : Array[Emit] = [
    Emit::DictionaryCreate(TypeName("MyOptions"), args),
  ]
  let multi = mbt_code_gen_multi(emits)
  inspect(multi.shared.contains("pub fn MyOptions::new("), content="true")
  inspect(
    multi.js_ffi.contains("extern \"js\" fn my_options_ffi("),
    content="true",
  )
  inspect(
    multi.wasm_ffi,
    content="fn my_options_ffi(title: JsValue) -> MyOptions = \"webapi_MyOptions\" \"new\"",
  )
}

///|
test "mbt_code_gen_multi generates callback across targets" {
  let args : Array[CallbackArgEmit] = [{ name: "event", mbt_type: "Event" }]
  let emits : Array[Emit] = [
    Emit::Callback(TypeName("EventListener"), args, TypeName("Unit")),
  ]
  let multi = mbt_code_gen_multi(emits)
  // Shared should be empty (callbacks are entirely target-specific)
  inspect(
    multi.shared,
    content=(
      #|pub fn EventListener::new(callback : (Event) -> Unit) -> EventListener { event_listener_ffi(callback) }
    ),
  )
  // JS callback passes typed closure directly
  inspect(multi.js_ffi.contains("(Event) -> Unit"), content="true")
  inspect(
    multi.js_ffi.contains("extern \"js\" fn event_listener_ffi"),
    content="true",
  )
  // Wasm callback wraps in JsValue closure
  inspect(
    multi.wasm_ffi,
    content=(
      #|fn event_listener_ffi(callback : (Event) -> Unit) -> EventListener = "webapi_EventListener" "new"
    ),
  )
}
