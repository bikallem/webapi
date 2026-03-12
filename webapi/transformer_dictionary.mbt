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
  start? : (TransformStreamDefaultController) -> JsValue,
  transform? : (JsValue, TransformStreamDefaultController) -> JsPromise[JsValue],
  flush? : (TransformStreamDefaultController) -> JsPromise[JsValue],
  cancel? : (JsValue) -> JsPromise[JsValue],
  readable_type? : JsValue,
  writable_type? : JsValue,
) -> Transformer {
  transformer_ffi(
    match start {
      Some(v) => TJsValue::to_js(transformer_start_callback_ffi(v))
      None => JsValue::undefined()
    },
    match transform {
      Some(v) => TJsValue::to_js(transformer_transform_callback_ffi(v))
      None => JsValue::undefined()
    },
    match flush {
      Some(v) => TJsValue::to_js(transformer_flush_callback_ffi(v))
      None => JsValue::undefined()
    },
    match cancel {
      Some(v) => TJsValue::to_js(transformer_cancel_callback_ffi(v))
      None => JsValue::undefined()
    },
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
  transformer_get_start_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn Transformer::transform(
  self : Transformer,
) -> TransformerTransformCallback? {
  transformer_get_transform_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn Transformer::flush(self : Transformer) -> TransformerFlushCallback? {
  transformer_get_flush_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn Transformer::cancel(self : Transformer) -> TransformerCancelCallback? {
  transformer_get_cancel_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn Transformer::readable_type(self : Transformer) -> JsValue? {
  transformer_get_readable_type_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn Transformer::writable_type(self : Transformer) -> JsValue? {
  transformer_get_writable_type_ffi(TJsValue::to_js(self)).to_option()
}
