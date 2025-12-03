// Auto-generated MoonBit bindings for StructuredSerializeOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary StructuredSerializeOptions {
//   sequence<object> transfer = [];
// };

///|
#external
pub type StructuredSerializeOptions

///|
pub impl TJsValue for StructuredSerializeOptions with to_js(self : StructuredSerializeOptions) -> JsValue = "%identity"

///|
fn structured_serialize_options_ffi(transfer : JsValue) -> StructuredSerializeOptions = "webapi_StructuredSerializeOptions" "new"

///|
pub fn StructuredSerializeOptions::new(
  transfer? : Array[JsValue] = []
) -> StructuredSerializeOptions {
  structured_serialize_options_ffi(TJsValue::to_js(transfer))
}

///|
pub fn StructuredSerializeOptions::empty() -> StructuredSerializeOptions = "webapi_Dictionary" "empty"