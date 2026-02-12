///|
/// Wasm-gc value types that are NOT externref (i32, f64, etc.).
/// %identity cannot convert between these and JsValue (externref).
/// Must use TJsValue::to_js delegation instead.
let wasm_value_types : Array[String] = [
  "Bool", "Int", "UInt", "Int64", "UInt64", "Float", "Double",
]

///|
/// Other non-primitive types that are valid as wasm-gc import return types.
/// These are all externref (#external) types or Unit.
let wasm_valid_stub_other_types : Array[String] = [
  "JsValue", "Unit", "JsUndefined",
  // Typed arrays — all #external types
   "Uint8Array", "Uint8ClampedArray", "Int8Array", "Uint16Array", "Int16Array", "Uint32Array",
  "Int32Array", "Float16Array", "Float32Array", "Float64Array", "BigInt64Array",
  "BigUint64Array",
  // Buffer types — #external
   "DataView", "ArrayBuffer", "SharedArrayBuffer",
]

///|
fn is_wasm_value_type(type_name : String) -> Bool {
  wasm_value_types.contains(type_name)
}

///|
fn is_wasm_valid_stub_other_type(type_name : String) -> Bool {
  wasm_valid_stub_other_types.contains(type_name)
}
