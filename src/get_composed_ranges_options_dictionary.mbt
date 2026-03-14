// Do not edit. This file is generated.
// MoonBit type: GetComposedRangesOptions
// Specifications: selection-api.idl

/// [GetComposedRangesOptions](https://developer.mozilla.org/en-US/docs/Web/API/GetComposedRangesOptions)
#external
pub type GetComposedRangesOptions

pub impl TJsValue for GetComposedRangesOptions with to_js(self: GetComposedRangesOptions) -> JsValue = "%identity"

pub impl FromJsAny for GetComposedRangesOptions with from_js_any(value : JsAny) -> GetComposedRangesOptions = "%identity"

pub fn GetComposedRangesOptions::new(shadow_roots? : Array[ShadowRoot]) -> GetComposedRangesOptions {
  get_composed_ranges_options_ffi(opt_to_js(shadow_roots))
}

pub fn GetComposedRangesOptions::empty() -> GetComposedRangesOptions { get_composed_ranges_options_empty_ffi() }

pub fn GetComposedRangesOptions::shadow_roots(self : GetComposedRangesOptions) -> Array[ShadowRoot]? {
  get_composed_ranges_options_get_shadow_roots_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn get_composed_ranges_options_ffi(shadow_roots: JsValue) -> GetComposedRangesOptions = 
#|(shadowRoots) => {
#|  const obj = {};
#|  if (shadowRoots !== undefined) obj.shadowRoots = shadowRoots;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn get_composed_ranges_options_empty_ffi() -> GetComposedRangesOptions = "() => {}"

#cfg(target="js")
extern "js" fn get_composed_ranges_options_get_shadow_roots_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shadowRoots"

#cfg(target="wasm-gc")
fn get_composed_ranges_options_ffi(shadow_roots: JsValue) -> GetComposedRangesOptions = "webapi_GetComposedRangesOptions" "new"

#cfg(target="wasm-gc")
fn get_composed_ranges_options_empty_ffi() -> GetComposedRangesOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn get_composed_ranges_options_get_shadow_roots_ffi(obj: JsValue) -> JsValue = "webapi_GetComposedRangesOptions" "get_shadowRoots"