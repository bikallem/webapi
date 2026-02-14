// Do not edit. This file is generated.
// MoonBit type: ProgressEventInit
// Specifications: dom.idl, xhr.idl

///|
/// [ProgressEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEventInit)
#external
pub type ProgressEventInit

///|
pub impl TJsValue for ProgressEventInit with to_js(self : ProgressEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for ProgressEventInit with from_js_any(value : JsAny) -> ProgressEventInit = "%identity"

///|
pub fn ProgressEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  length_computable? : Bool = false,
  loaded? : Double = (0 : Double),
  total? : Double = (0 : Double),
) -> ProgressEventInit {
  progress_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(length_computable),
    TJsValue::to_js(loaded),
    TJsValue::to_js(total),
  )
}

///|
pub fn ProgressEventInit::empty() -> ProgressEventInit {
  progress_event_init_empty_ffi()
}
