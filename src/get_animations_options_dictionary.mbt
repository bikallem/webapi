// Do not edit. This file is generated.
// MoonBit type: GetAnimationsOptions
// Specifications: web-animations.idl

///|
/// [GetAnimationsOptions](https://developer.mozilla.org/en-US/docs/Web/API/GetAnimationsOptions)
#external
pub type GetAnimationsOptions

///|
pub impl TJsValue for GetAnimationsOptions with to_js(
  self : GetAnimationsOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for GetAnimationsOptions with from_js_any(value : JsAny) -> GetAnimationsOptions = "%identity"

///|
pub fn GetAnimationsOptions::new(
  subtree? : Bool = false,
  pseudo_element? : CSSOMString = JsValue::null(),
) -> GetAnimationsOptions {
  get_animations_options_ffi(
    TJsValue::to_js(subtree),
    TJsValue::to_js(pseudo_element),
  )
}

///|
pub fn GetAnimationsOptions::empty() -> GetAnimationsOptions {
  get_animations_options_empty_ffi()
}
