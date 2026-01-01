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
  @json.inspect(emits, content=[
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
  @json.inspect(emits, content=[
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
  @json.inspect(emits, content=[
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
  @json.inspect(emits, content=[
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
  @json.inspect(emits, content=[]) // No emits for non-union type
}
