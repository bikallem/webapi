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
      #|Union("TestInterfaceTestMethodParam")
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
      #|Union("TestInterfaceTestMethodParam")
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
      #|Union("TestInterfaceTestMethodParam")
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
      ["TypeName", "Array[TestInterfaceTestMethodParam2]"],
      ["TraitName", "TTestInterfaceTestMethodParam"],
    ],
  ]) // One trait + two impls for union options
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
      #|Other("String")
    ),
  )
  @json.inspect(emits, content=[]) // No emits for non-union type
}

///|
test "arg_default_value" {
  let registry = @type_registry.TypeRegistry::new([])

  // Test basic default values
  inspect(
    arg_default_value(@parser.Null, @parser.Identifier("MyType"), registry),
    content="MyType::null()",
  )
  inspect(
    arg_default_value(@parser.EmptyObject, @parser.Identifier("Dict"), registry),
    content="Dict::empty()",
  )
  inspect(
    arg_default_value(@parser.EmptySequence, @parser.Boolean, registry),
    content="[]",
  )
  inspect(
    arg_default_value(
      @parser.Undefined,
      @parser.Identifier("SomeType"),
      registry,
    ),
    content="SomeType::undefined()",
  )
}

///|
test "arg_default_value/string_values" {
  let registry = @type_registry.TypeRegistry::new([])

  // Test string default values for regular types
  inspect(
    arg_default_value(@parser.String("hello"), @parser.DOMString, registry),
    content="\"hello\"",
  )

  // Test string default values for enum types (when registry indicates it's an enum)
  let state_enum = @parser.DefinitionExtendedAttributes::{
    extended_attributes: [],
    definition: @parser.Enum({
      name: "State",
      values: ["active", "inactive", "pending"],
    }),
  }
  let enum_registry = @type_registry.TypeRegistry::new([state_enum])
  // Note: This test assumes the registry will properly identify enums
  inspect(
    arg_default_value(
      @parser.String("active"),
      @parser.Identifier("State"),
      enum_registry,
    ),
    content="State::Active", // Now properly recognized as enum
  )
}

///|
test "arg_default_value/const_values" {
  let registry = @type_registry.TypeRegistry::new([])

  // Test constant boolean values
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Boolean("true")),
      @parser.Boolean,
      registry,
    ),
    content="true",
  )
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Boolean("false")),
      @parser.Boolean,
      registry,
    ),
    content="false",
  )

  // Test constant numeric values
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Integer("42")),
      @parser.Long,
      registry,
    ),
    content="42",
  )
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Float(@parser.Float("3.14"))),
      @parser.Double,
      registry,
    ),
    content="3.14",
  )

  // Test special float values
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Float(@parser.Infinity)),
      @parser.Double,
      registry,
    ),
    content="@float.infinity",
  )
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Float(@parser.NegInfinity)),
      @parser.Double,
      registry,
    ),
    content="@float.neg_infinity",
  )
  inspect(
    arg_default_value(
      @parser.ConstValue(@parser.Float(@parser.NaN)),
      @parser.Double,
      registry,
    ),
    content="@float.not_a_number",
  )
}
