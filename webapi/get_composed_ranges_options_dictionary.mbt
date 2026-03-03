// Do not edit. This file is generated.
// MoonBit type: GetComposedRangesOptions
// Specifications: selection-api.idl

///|
/// [GetComposedRangesOptions](https://developer.mozilla.org/en-US/docs/Web/API/GetComposedRangesOptions)
#external
pub type GetComposedRangesOptions

///|
pub impl TJsValue for GetComposedRangesOptions with to_js(
  self : GetComposedRangesOptions,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for GetComposedRangesOptions with from_js_any(value : JsAny) -> GetComposedRangesOptions = "%identity"

///|
pub fn GetComposedRangesOptions::new(
  shadow_roots? : Array[ShadowRoot],
) -> GetComposedRangesOptions {
  get_composed_ranges_options_ffi(opt_to_js(shadow_roots))
}

///|
pub fn GetComposedRangesOptions::empty() -> GetComposedRangesOptions {
  get_composed_ranges_options_empty_ffi()
}

///|
pub fn GetComposedRangesOptions::shadow_roots(
  self : GetComposedRangesOptions,
) -> Array[ShadowRoot]? {
  get_composed_ranges_options_get_shadow_roots_ffi(TJsValue::to_js(self)).to_option()
}
