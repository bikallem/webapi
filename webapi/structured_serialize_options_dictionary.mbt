// Do not edit. This file is generated.
// MoonBit type: StructuredSerializeOptions
// Specifications: html.idl

///|
/// [StructuredSerializeOptions](https://developer.mozilla.org/en-US/docs/Web/API/StructuredSerializeOptions)
#external
pub type StructuredSerializeOptions

///|
pub impl TJsValue for StructuredSerializeOptions with to_js(
  self : StructuredSerializeOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for StructuredSerializeOptions with from_js_any(
  value : JsAny,
) -> StructuredSerializeOptions = "%identity"

///|
pub fn StructuredSerializeOptions::new(
  transfer? : Array[JsValue],
) -> StructuredSerializeOptions {
  structured_serialize_options_ffi(opt_to_js(transfer))
}

///|
pub fn StructuredSerializeOptions::empty() -> StructuredSerializeOptions {
  structured_serialize_options_empty_ffi()
}

///|
pub fn StructuredSerializeOptions::transfer(
  self : StructuredSerializeOptions,
) -> Array[JsValue]? {
  structured_serialize_options_get_transfer_ffi(TJsValue::to_js(self)).to_option()
}

///|
#cfg(target="js")
extern "js" fn structured_serialize_options_ffi(
  transfer : JsValue,
) -> StructuredSerializeOptions =
  #|(transfer) => {
  #|  const obj = {};
  #|  if (transfer !== undefined) obj.transfer = transfer;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn structured_serialize_options_empty_ffi() -> StructuredSerializeOptions = "() => {}"

///|
#cfg(target="js")
extern "js" fn structured_serialize_options_get_transfer_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.transfer"

///|
#cfg(target="wasm-gc")
fn structured_serialize_options_ffi(
  transfer : JsValue,
) -> StructuredSerializeOptions = "webapi_StructuredSerializeOptions" "new"

///|
#cfg(target="wasm-gc")
fn structured_serialize_options_empty_ffi() -> StructuredSerializeOptions = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn structured_serialize_options_get_transfer_ffi(obj : JsValue) -> JsValue = "webapi_StructuredSerializeOptions" "get_transfer"
