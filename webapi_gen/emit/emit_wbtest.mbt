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
