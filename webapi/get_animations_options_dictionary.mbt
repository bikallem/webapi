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
  subtree? : Bool,
  pseudo_element? : CSSOMString,
) -> GetAnimationsOptions {
  get_animations_options_ffi(opt_to_js(subtree), opt_to_js(pseudo_element))
}

///|
pub fn GetAnimationsOptions::empty() -> GetAnimationsOptions {
  get_animations_options_empty_ffi()
}

///|
pub fn GetAnimationsOptions::subtree(self : GetAnimationsOptions) -> Bool? {
  get_animations_options_get_subtree_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn GetAnimationsOptions::pseudo_element(
  self : GetAnimationsOptions,
) -> CSSOMString? {
  get_animations_options_get_pseudo_element_ffi(TJsValue::to_js(self)).to_option()
}
