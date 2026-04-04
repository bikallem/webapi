// Do not edit. This file is generated.
// MoonBit type: NavigationDestination
// Specifications: html.idl

///|
/// [NavigationDestination](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination)
#external
pub type NavigationDestination

///|
pub impl TJsValue for NavigationDestination with to_js(
  self : NavigationDestination,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for NavigationDestination with from_js_any(value : JsAny) -> NavigationDestination = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TNavigationDestination] NavigationDestination::into(
  self : NavigationDestination,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TNavigationDestination] NavigationDestination::unsafe_into(
  self : NavigationDestination,
) -> T = "%identity"

///|
pub impl HasConstructor for NavigationDestination with constructor_name() {
  "NavigationDestination"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TNavigationDestination + HasConstructor] NavigationDestination::try_into(
  self : NavigationDestination,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TNavigationDestination for NavigationDestination

///|
/// [NavigationDestination](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination) interface.
pub trait TNavigationDestination: TJsValue {
  url(self : Self) -> String = _
  key(self : Self) -> String = _
  id(self : Self) -> String = _
  index(self : Self) -> Int64 = _
  same_document(self : Self) -> Bool = _
  get_state(self : Self) -> JsValue = _
}

///|
/// [NavigationDestination.url](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination/url)
impl TNavigationDestination with url(self : Self) -> String {
  navigation_destination_url_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationDestination.key](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination/key)
impl TNavigationDestination with key(self : Self) -> String {
  navigation_destination_key_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationDestination.id](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination/id)
impl TNavigationDestination with id(self : Self) -> String {
  navigation_destination_id_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationDestination.index](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination/index)
impl TNavigationDestination with index(self : Self) -> Int64 {
  navigation_destination_index_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationDestination.sameDocument](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination/sameDocument)
impl TNavigationDestination with same_document(self : Self) -> Bool {
  navigation_destination_same_document_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationDestination.getState](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination/getState)
impl TNavigationDestination with get_state(self : Self) -> JsValue {
  navigation_destination_get_state_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn navigation_destination_url_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.url"

///|
#cfg(target="js")
fn navigation_destination_url_ffi(obj : JsValue) -> String {
  navigation_destination_url_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_destination_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.key"

///|
#cfg(target="js")
fn navigation_destination_key_ffi(obj : JsValue) -> String {
  navigation_destination_key_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_destination_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
#cfg(target="js")
fn navigation_destination_id_ffi(obj : JsValue) -> String {
  navigation_destination_id_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_destination_index_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.index"

///|
#cfg(target="js")
fn navigation_destination_index_ffi(obj : JsValue) -> Int64 {
  navigation_destination_index_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_destination_same_document_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.sameDocument"

///|
#cfg(target="js")
fn navigation_destination_same_document_ffi(obj : JsValue) -> Bool {
  navigation_destination_same_document_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_destination_get_state_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getState()"

///|
#cfg(target="js")
fn navigation_destination_get_state_ffi(obj : JsValue) -> JsValue {
  navigation_destination_get_state_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn navigation_destination_url_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationDestination" "get_url"

///|
#cfg(target="wasm-gc")
fn navigation_destination_url_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigation_destination_url_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigation_destination_key_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationDestination" "get_key"

///|
#cfg(target="wasm-gc")
fn navigation_destination_key_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigation_destination_key_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigation_destination_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationDestination" "get_id"

///|
#cfg(target="wasm-gc")
fn navigation_destination_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigation_destination_id_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigation_destination_index_ffi(obj : JsValue) -> Int64 = "webapi_NavigationDestination" "get_index"

///|
#cfg(target="wasm-gc")
fn navigation_destination_same_document_ffi(obj : JsValue) -> Bool = "webapi_NavigationDestination" "get_sameDocument"

///|
#cfg(target="wasm-gc")
fn navigation_destination_get_state_ffi(obj : JsValue) -> JsValue = "webapi_NavigationDestination" "getState"
