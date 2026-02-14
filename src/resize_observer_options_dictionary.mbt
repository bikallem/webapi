// Do not edit. This file is generated.
// MoonBit type: ResizeObserverOptions
// Specifications: resize-observer.idl

///|
/// [ResizeObserverOptions](https://developer.mozilla.org/en-US/docs/Web/API/ResizeObserverOptions)
#external
pub type ResizeObserverOptions

///|
pub impl TJsValue for ResizeObserverOptions with to_js(
  self : ResizeObserverOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ResizeObserverOptions with from_js_any(value : JsAny) -> ResizeObserverOptions = "%identity"

///|
pub fn ResizeObserverOptions::new(
  box? : ResizeObserverBoxOptions = ResizeObserverBoxOptions::ContentBox,
) -> ResizeObserverOptions {
  resize_observer_options_ffi(TJsValue::to_js(box))
}

///|
pub fn ResizeObserverOptions::empty() -> ResizeObserverOptions {
  resize_observer_options_empty_ffi()
}
