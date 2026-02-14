///|
test "is_wasm_value_type identifies wasm value types" {
  inspect(is_wasm_value_type("Bool"), content="true")
  inspect(is_wasm_value_type("Int"), content="true")
  inspect(is_wasm_value_type("UInt"), content="true")
  inspect(is_wasm_value_type("Int64"), content="true")
  inspect(is_wasm_value_type("UInt64"), content="true")
  inspect(is_wasm_value_type("Float"), content="true")
  inspect(is_wasm_value_type("Double"), content="true")
}

///|
test "is_wasm_value_type rejects non-value types" {
  inspect(is_wasm_value_type("String"), content="false")
  inspect(is_wasm_value_type("JsValue"), content="false")
  inspect(is_wasm_value_type("Element"), content="false")
  inspect(is_wasm_value_type("Unit"), content="false")
}

///|
test "is_wasm_valid_stub_other_type identifies valid stub types" {
  inspect(is_wasm_valid_stub_other_type("JsValue"), content="true")
  inspect(is_wasm_valid_stub_other_type("Unit"), content="true")
  inspect(is_wasm_valid_stub_other_type("JsUndefined"), content="true")
  inspect(is_wasm_valid_stub_other_type("JsArray"), content="true")
  inspect(is_wasm_valid_stub_other_type("Uint8Array"), content="true")
  inspect(is_wasm_valid_stub_other_type("Float64Array"), content="true")
  inspect(is_wasm_valid_stub_other_type("DataView"), content="true")
  inspect(is_wasm_valid_stub_other_type("ArrayBuffer"), content="true")
  inspect(is_wasm_valid_stub_other_type("DOMHighResTimeStamp"), content="true")
}

///|
test "is_wasm_valid_stub_other_type rejects unknown types" {
  inspect(is_wasm_valid_stub_other_type("Element"), content="false")
  inspect(is_wasm_valid_stub_other_type("String"), content="false")
  inspect(is_wasm_valid_stub_other_type("CustomType"), content="false")
}

///|
test "is_wasm_valid_stub_type accepts non-String primitives" {
  inspect(
    is_wasm_valid_stub_type(@type_mapping.ArgMbtType::Primitive("Int")),
    content="true",
  )
  inspect(
    is_wasm_valid_stub_type(@type_mapping.ArgMbtType::Primitive("Bool")),
    content="true",
  )
}

///|
test "is_wasm_valid_stub_type rejects String" {
  inspect(
    is_wasm_valid_stub_type(@type_mapping.ArgMbtType::Primitive("String")),
    content="false",
  )
}

///|
test "is_wasm_valid_stub_type accepts Interface and Dictionary" {
  inspect(
    is_wasm_valid_stub_type(@type_mapping.ArgMbtType::Interface("Element")),
    content="true",
  )
  inspect(
    is_wasm_valid_stub_type(@type_mapping.ArgMbtType::Dictionary("EventInit")),
    content="true",
  )
}

///|
test "is_wasm_valid_stub_type rejects Enum and Union" {
  inspect(
    is_wasm_valid_stub_type(@type_mapping.ArgMbtType::Enum("ScrollBehavior")),
    content="false",
  )
  inspect(
    is_wasm_valid_stub_type(
      @type_mapping.ArgMbtType::Union(
        @type_mapping.UnionType::{
          name: "StringOrInt",
          has_undefined: false,
          options: [
            @type_mapping.ArgMbtType::Primitive("String"),
            @type_mapping.ArgMbtType::Primitive("Int"),
          ],
        },
      ),
    ),
    content="false",
  )
}

///|
test "is_wasm_valid_stub_type accepts Self" {
  inspect(
    is_wasm_valid_stub_type(@type_mapping.ArgMbtType::Self),
    content="true",
  )
}

///|
test "is_wasm_valid_stub_type accepts Other externref types" {
  inspect(
    is_wasm_valid_stub_type(@type_mapping.ArgMbtType::Other("JsValue")),
    content="true",
  )
  inspect(
    is_wasm_valid_stub_type(@type_mapping.ArgMbtType::Other("Unit")),
    content="true",
  )
  inspect(
    is_wasm_valid_stub_type(@type_mapping.ArgMbtType::Other("Uint8Array")),
    content="true",
  )
}

///|
test "is_wasm_valid_stub_type rejects Other unknown types" {
  inspect(
    is_wasm_valid_stub_type(@type_mapping.ArgMbtType::Other("SomeTypedef")),
    content="false",
  )
}

///|
test "is_string_return detects String primitive" {
  inspect(
    is_string_return(@type_mapping.ArgMbtType::Primitive("String")),
    content="true",
  )
  inspect(
    is_string_return(@type_mapping.ArgMbtType::Primitive("Int")),
    content="false",
  )
  inspect(
    is_string_return(@type_mapping.ArgMbtType::Other("String")),
    content="false",
  )
}

///|
test "is_enum_return detects Enum type" {
  inspect(
    is_enum_return(@type_mapping.ArgMbtType::Enum("ScrollBehavior")),
    content="true",
  )
  inspect(
    is_enum_return(@type_mapping.ArgMbtType::Primitive("String")),
    content="false",
  )
}

///|
test "is_array_return detects Array types" {
  inspect(is_array_return("Array[String]"), content="true")
  inspect(is_array_return("Array[DOMQuad]"), content="true")
  inspect(is_array_return("String"), content="false")
  inspect(is_array_return("JsArray"), content="false")
}

///|
test "is_string_array_return detects Array[String]" {
  inspect(is_string_array_return("Array[String]"), content="true")
  inspect(is_string_array_return("Array[Int]"), content="false")
}
