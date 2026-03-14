// Do not edit. This file is generated.
// MoonBit type: NavigationHistoryEntry
// Specifications: html.idl

///|
/// [NavigationHistoryEntry](https://developer.mozilla.org/en-US/docs/Web/API/NavigationHistoryEntry)
#external
pub type NavigationHistoryEntry

///|
pub impl TJsValue for NavigationHistoryEntry with to_js(
  self : NavigationHistoryEntry,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for NavigationHistoryEntry with from_js_any(value : JsAny) -> NavigationHistoryEntry = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TNavigationHistoryEntry] NavigationHistoryEntry::into(
  self : NavigationHistoryEntry,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TNavigationHistoryEntry] NavigationHistoryEntry::unsafe_into(
  self : NavigationHistoryEntry,
) -> T = "%identity"

///|
pub impl HasConstructor for NavigationHistoryEntry with constructor_name() {
  "NavigationHistoryEntry"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TNavigationHistoryEntry + HasConstructor] NavigationHistoryEntry::try_into(
  self : NavigationHistoryEntry,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TNavigationHistoryEntry for NavigationHistoryEntry

///|
pub impl TEventTarget for NavigationHistoryEntry

///|
/// [NavigationHistoryEntry](https://developer.mozilla.org/en-US/docs/Web/API/NavigationHistoryEntry) interface.
pub trait TNavigationHistoryEntry: TEventTarget {
  url(self : Self) -> String = _
  key(self : Self) -> String = _
  id(self : Self) -> String = _
  index(self : Self) -> Int64 = _
  same_document(self : Self) -> Bool = _
  get_state(self : Self) -> JsValue = _
  ondispose(self : Self) -> EventHandler = _
  set_ondispose(self : Self, ondispose : (Event) -> JsValue) -> Unit = _
}

///|
/// [NavigationHistoryEntry.url](https://developer.mozilla.org/en-US/docs/Web/API/NavigationHistoryEntry/url)
impl TNavigationHistoryEntry with url(self : Self) -> String {
  navigation_history_entry_url_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationHistoryEntry.key](https://developer.mozilla.org/en-US/docs/Web/API/NavigationHistoryEntry/key)
impl TNavigationHistoryEntry with key(self : Self) -> String {
  navigation_history_entry_key_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationHistoryEntry.id](https://developer.mozilla.org/en-US/docs/Web/API/NavigationHistoryEntry/id)
impl TNavigationHistoryEntry with id(self : Self) -> String {
  navigation_history_entry_id_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationHistoryEntry.index](https://developer.mozilla.org/en-US/docs/Web/API/NavigationHistoryEntry/index)
impl TNavigationHistoryEntry with index(self : Self) -> Int64 {
  navigation_history_entry_index_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationHistoryEntry.sameDocument](https://developer.mozilla.org/en-US/docs/Web/API/NavigationHistoryEntry/sameDocument)
impl TNavigationHistoryEntry with same_document(self : Self) -> Bool {
  navigation_history_entry_same_document_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationHistoryEntry.getState](https://developer.mozilla.org/en-US/docs/Web/API/NavigationHistoryEntry/getState)
impl TNavigationHistoryEntry with get_state(self : Self) -> JsValue {
  navigation_history_entry_get_state_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationHistoryEntry.ondispose](https://developer.mozilla.org/en-US/docs/Web/API/NavigationHistoryEntry/ondispose)
impl TNavigationHistoryEntry with ondispose(self : Self) -> EventHandler {
  navigation_history_entry_ondispose_ffi(TJsValue::to_js(self))
}

///|
/// [NavigationHistoryEntry.ondispose](https://developer.mozilla.org/en-US/docs/Web/API/NavigationHistoryEntry/ondispose)
impl TNavigationHistoryEntry with set_ondispose(
  self : Self,
  ondispose : (Event) -> JsValue,
) -> Unit {
  navigation_history_entry_set_ondispose_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(ondispose)),
  )
}

///|
#cfg(target="js")
extern "js" fn navigation_history_entry_url_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.url"

///|
#cfg(target="js")
fn navigation_history_entry_url_ffi(obj : JsValue) -> String {
  navigation_history_entry_url_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_history_entry_key_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.key"

///|
#cfg(target="js")
fn navigation_history_entry_key_ffi(obj : JsValue) -> String {
  navigation_history_entry_key_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_history_entry_id_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.id"

///|
#cfg(target="js")
fn navigation_history_entry_id_ffi(obj : JsValue) -> String {
  navigation_history_entry_id_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_history_entry_index_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.index"

///|
#cfg(target="js")
fn navigation_history_entry_index_ffi(obj : JsValue) -> Int64 {
  navigation_history_entry_index_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_history_entry_same_document_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.sameDocument"

///|
#cfg(target="js")
fn navigation_history_entry_same_document_ffi(obj : JsValue) -> Bool {
  navigation_history_entry_same_document_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_history_entry_get_state_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.getState()"

///|
#cfg(target="js")
fn navigation_history_entry_get_state_ffi(obj : JsValue) -> JsValue {
  navigation_history_entry_get_state_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_history_entry_ondispose_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.ondispose"

///|
#cfg(target="js")
fn navigation_history_entry_ondispose_ffi(obj : JsValue) -> EventHandler {
  navigation_history_entry_ondispose_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_history_entry_set_ondispose_ffi(
  obj : JsValue,
  ondispose : JsValue,
) -> Unit = "(obj, ondispose) => { obj.ondispose = ondispose; }"

///|
#cfg(target="wasm-gc")
fn navigation_history_entry_url_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationHistoryEntry" "get_url"

///|
#cfg(target="wasm-gc")
fn navigation_history_entry_url_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigation_history_entry_url_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigation_history_entry_key_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationHistoryEntry" "get_key"

///|
#cfg(target="wasm-gc")
fn navigation_history_entry_key_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigation_history_entry_key_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigation_history_entry_id_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationHistoryEntry" "get_id"

///|
#cfg(target="wasm-gc")
fn navigation_history_entry_id_ffi(obj : JsValue) -> String {
  jsvalue_to_string(navigation_history_entry_id_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn navigation_history_entry_index_ffi(obj : JsValue) -> Int64 = "webapi_NavigationHistoryEntry" "get_index"

///|
#cfg(target="wasm-gc")
fn navigation_history_entry_same_document_ffi(obj : JsValue) -> Bool = "webapi_NavigationHistoryEntry" "get_sameDocument"

///|
#cfg(target="wasm-gc")
fn navigation_history_entry_get_state_ffi(obj : JsValue) -> JsValue = "webapi_NavigationHistoryEntry" "getState"

///|
#cfg(target="wasm-gc")
fn navigation_history_entry_ondispose_ffi_wasm(obj : JsValue) -> JsValue = "webapi_NavigationHistoryEntry" "get_ondispose"

///|
#cfg(target="wasm-gc")
fn navigation_history_entry_ondispose_ffi(obj : JsValue) -> EventHandler {
  navigation_history_entry_ondispose_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn navigation_history_entry_set_ondispose_ffi(
  obj : JsValue,
  ondispose : JsValue,
) -> Unit = "webapi_NavigationHistoryEntry" "set_ondispose"
