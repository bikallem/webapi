// Do not edit. This file is generated.
// MoonBit type: External
// Specifications: html.idl

/// [External](https://developer.mozilla.org/en-US/docs/Web/API/External)
#external
pub type External

pub impl TJsValue for External with to_js(self: External) -> JsValue = "%identity"

pub impl FromJsAny for External with from_js_any(value : JsAny) -> External = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TExternal] External::into(self : External) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TExternal] External::unsafe_into(self : External) -> T = "%identity"

pub impl HasConstructor for External with constructor_name() { "External" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TExternal + HasConstructor] External::try_into(self : External) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TExternal for External

/// [External](https://developer.mozilla.org/en-US/docs/Web/API/External) interface.
pub trait TExternal: TJsValue {
  add_search_provider(self : Self) -> Unit = _
  is_search_provider_installed(self : Self) -> Unit = _
}

/// [External.AddSearchProvider](https://developer.mozilla.org/en-US/docs/Web/API/External/AddSearchProvider)
impl TExternal with add_search_provider(self : Self) -> Unit {
  external_add_search_provider_ffi(TJsValue::to_js(self))
}

/// [External.IsSearchProviderInstalled](https://developer.mozilla.org/en-US/docs/Web/API/External/IsSearchProviderInstalled)
impl TExternal with is_search_provider_installed(self : Self) -> Unit {
  external_is_search_provider_installed_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn external_add_search_provider_ffi(obj: JsValue) -> Unit = "(obj) => obj.AddSearchProvider()"

#cfg(target="js")
extern "js" fn external_is_search_provider_installed_ffi(obj: JsValue) -> Unit = "(obj) => obj.IsSearchProviderInstalled()"

#cfg(target="wasm-gc")
fn external_add_search_provider_ffi(obj: JsValue) -> Unit = "webapi_External" "AddSearchProvider"

#cfg(target="wasm-gc")
fn external_is_search_provider_installed_ffi(obj: JsValue) -> Unit = "webapi_External" "IsSearchProviderInstalled"