// Do not edit. This file is generated.
// MoonBit type: External
// Specifications: html.idl

///|
/// [External](https://developer.mozilla.org/en-US/docs/Web/API/External)
#external
pub type External

///|
pub impl TJsValue for External with to_js(self : External) -> JsValue = "%identity"

///|
pub impl FromJsAny for External with from_js_any(value : JsAny) -> External = "%identity"

///|
pub fn[T : TExternal] External::into(self : External) -> T = "%identity"

///|
pub impl TExternal for External

///|
/// [External](https://developer.mozilla.org/en-US/docs/Web/API/External) interface.
pub trait TExternal: TJsValue {
  add_search_provider(self : Self) -> Unit = _
  is_search_provider_installed(self : Self) -> Unit = _
}

///|
/// [External.AddSearchProvider](https://developer.mozilla.org/en-US/docs/Web/API/External/AddSearchProvider)
impl TExternal with add_search_provider(self : Self) -> Unit {
  external_add_search_provider_ffi(TJsValue::to_js(self))
}

///|
/// [External.IsSearchProviderInstalled](https://developer.mozilla.org/en-US/docs/Web/API/External/IsSearchProviderInstalled)
impl TExternal with is_search_provider_installed(self : Self) -> Unit {
  external_is_search_provider_installed_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn external_add_search_provider_ffi(obj : JsValue) -> Unit = "(obj) => obj.AddSearchProvider()"

///|
#cfg(target="js")
extern "js" fn external_is_search_provider_installed_ffi(obj : JsValue) -> Unit = "(obj) => obj.IsSearchProviderInstalled()"

///|
#cfg(target="wasm-gc")
fn external_add_search_provider_ffi(obj : JsValue) -> Unit = "webapi_External" "AddSearchProvider"

///|
#cfg(target="wasm-gc")
fn external_is_search_provider_installed_ffi(obj : JsValue) -> Unit = "webapi_External" "IsSearchProviderInstalled"
