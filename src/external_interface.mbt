// Do not edit. This file is generated.
// MoonBit type: External
// Specifications: html.idl

///|
#external
pub type External

///|
pub impl TJsValue for External with to_js(self : External) -> JsValue = "%identity"

///|
pub fn[T : TExternal] External::into(self : External) -> T = "%identity"

///|
pub impl TExternal for External

///|
pub trait TExternal: TJsValue {
  add_search_provider(self : Self) -> Unit = _
  is_search_provider_installed(self : Self) -> Unit = _
}

///|
extern "js" fn external_add_search_provider_ffi(obj : JsValue) -> Unit = "(obj) => obj.AddSearchProvider(obj)"

///|
impl TExternal with add_search_provider(self : Self) -> Unit {
  external_add_search_provider_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn external_is_search_provider_installed_ffi(obj : JsValue) -> Unit = "(obj) => obj.IsSearchProviderInstalled(obj)"

///|
impl TExternal with is_search_provider_installed(self : Self) -> Unit {
  external_is_search_provider_installed_ffi(TJsValue::to_js(self))
}
