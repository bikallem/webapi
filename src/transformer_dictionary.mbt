// Do not edit. This file is generated.
// MoonBit type: Transformer
// Specifications: streams.idl

///|
/// [Transformer](https://developer.mozilla.org/en-US/docs/Web/API/Transformer)
#external
pub type Transformer

///|
pub impl TJsValue for Transformer with to_js(self : Transformer) -> JsValue = "%identity"

///|
pub impl FromJsAny for Transformer with from_js_any(value : JsAny) -> Transformer = "%identity"

///|
pub fn Transformer::new(
  start? : TransformerStartCallback,
  transform? : TransformerTransformCallback,
  flush? : TransformerFlushCallback,
  cancel? : TransformerCancelCallback,
  readable_type? : JsValue,
  writable_type? : JsValue,
) -> Transformer {
  transformer_ffi(
    opt_to_js(start),
    opt_to_js(transform),
    opt_to_js(flush),
    opt_to_js(cancel),
    opt_to_js(readable_type),
    opt_to_js(writable_type),
  )
}

///|
pub fn Transformer::empty() -> Transformer {
  transformer_empty_ffi()
}

///|
pub fn Transformer::start(self : Transformer) -> TransformerStartCallback? {
  let result = transformer_get_start_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn Transformer::transform(
  self : Transformer,
) -> TransformerTransformCallback? {
  let result = transformer_get_transform_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn Transformer::flush(self : Transformer) -> TransformerFlushCallback? {
  let result = transformer_get_flush_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn Transformer::cancel(self : Transformer) -> TransformerCancelCallback? {
  let result = transformer_get_cancel_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn Transformer::readable_type(self : Transformer) -> JsValue? {
  let result = transformer_get_readable_type_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn Transformer::writable_type(self : Transformer) -> JsValue? {
  let result = transformer_get_writable_type_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
