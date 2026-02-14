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
