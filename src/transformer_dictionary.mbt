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
