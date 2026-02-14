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
pub fn[T : TNavigationHistoryEntry] NavigationHistoryEntry::into(
  self : NavigationHistoryEntry,
) -> T = "%identity"

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
  set_ondispose(self : Self, ondispose : EventHandler) -> Unit = _
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
  ondispose : EventHandler,
) -> Unit {
  navigation_history_entry_set_ondispose_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(ondispose),
  )
}
