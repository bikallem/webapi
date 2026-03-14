// Do not edit. This file is generated.
// MoonBit type: GetHTMLOptions
// Specifications: html.idl

/// [GetHTMLOptions](https://developer.mozilla.org/en-US/docs/Web/API/GetHTMLOptions)
#external
pub type GetHTMLOptions

pub impl TJsValue for GetHTMLOptions with to_js(self: GetHTMLOptions) -> JsValue = "%identity"

pub impl FromJsAny for GetHTMLOptions with from_js_any(value : JsAny) -> GetHTMLOptions = "%identity"

pub fn GetHTMLOptions::new(serializable_shadow_roots? : Bool, 
shadow_roots? : Array[ShadowRoot]) -> GetHTMLOptions {
  get_html_options_ffi(opt_to_js(serializable_shadow_roots), opt_to_js(shadow_roots))
}

pub fn GetHTMLOptions::empty() -> GetHTMLOptions { get_html_options_empty_ffi() }

pub fn GetHTMLOptions::serializable_shadow_roots(self : GetHTMLOptions) -> Bool? {
  get_html_options_get_serializable_shadow_roots_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn GetHTMLOptions::shadow_roots(self : GetHTMLOptions) -> Array[ShadowRoot]? {
  get_html_options_get_shadow_roots_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn get_html_options_ffi(serializable_shadow_roots: JsValue, shadow_roots: JsValue) -> GetHTMLOptions = 
#|(serializableShadowRoots, shadowRoots) => {
#|  const obj = {};
#|  if (serializableShadowRoots !== undefined) obj.serializableShadowRoots = serializableShadowRoots;
#|  if (shadowRoots !== undefined) obj.shadowRoots = shadowRoots;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn get_html_options_empty_ffi() -> GetHTMLOptions = "() => {}"

#cfg(target="js")
extern "js" fn get_html_options_get_serializable_shadow_roots_ffi(obj: JsValue) -> JsValue = "(obj) => obj.serializableShadowRoots"

#cfg(target="js")
extern "js" fn get_html_options_get_shadow_roots_ffi(obj: JsValue) -> JsValue = "(obj) => obj.shadowRoots"

#cfg(target="wasm-gc")
fn get_html_options_ffi(serializable_shadow_roots: JsValue, shadow_roots: JsValue) -> GetHTMLOptions = "webapi_GetHTMLOptions" "new"

#cfg(target="wasm-gc")
fn get_html_options_empty_ffi() -> GetHTMLOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn get_html_options_get_serializable_shadow_roots_ffi(obj: JsValue) -> JsValue = "webapi_GetHTMLOptions" "get_serializableShadowRoots"

#cfg(target="wasm-gc")
fn get_html_options_get_shadow_roots_ffi(obj: JsValue) -> JsValue = "webapi_GetHTMLOptions" "get_shadowRoots"