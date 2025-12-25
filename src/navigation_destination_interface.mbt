// Do not edit. This file is generated.
// MoonBit type: NavigationDestination
// Specifications: html.idl

///|
#external
pub type NavigationDestination

///|
pub impl TJsValue for NavigationDestination with to_js(
  self : NavigationDestination,
) -> JsValue = "%identity"

///|
pub fn[T : TNavigationDestination] NavigationDestination::into(
  self : NavigationDestination,
) -> T = "%identity"

///|
pub impl TNavigationDestination for NavigationDestination

///|
pub trait TNavigationDestination: TJsValue {
  url(self : Self) -> String = _
  key(self : Self) -> String = _
  id(self : Self) -> String = _
  index(self : Self) -> Int64 = _
  same_document(self : Self) -> Bool = _
  get_state(self : Self) -> JsValue = _
}

///|
extern "js" fn navigation_destination_url_ffi(obj : JsValue) -> String = "(obj) => obj.url"

///|
impl TNavigationDestination with url(self : Self) -> String {
  navigation_destination_url_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_destination_key_ffi(obj : JsValue) -> String = "(obj) => obj.key"

///|
impl TNavigationDestination with key(self : Self) -> String {
  navigation_destination_key_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_destination_id_ffi(obj : JsValue) -> String = "(obj) => obj.id"

///|
impl TNavigationDestination with id(self : Self) -> String {
  navigation_destination_id_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_destination_index_ffi(obj : JsValue) -> Int64 = "(obj) => obj.index"

///|
impl TNavigationDestination with index(self : Self) -> Int64 {
  navigation_destination_index_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_destination_same_document_ffi(obj : JsValue) -> Bool = "(obj) => obj.sameDocument"

///|
impl TNavigationDestination with same_document(self : Self) -> Bool {
  navigation_destination_same_document_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_destination_get_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.getState(obj)"

///|
impl TNavigationDestination with get_state(self : Self) -> JsValue {
  navigation_destination_get_state_ffi(TJsValue::to_js(self))
}
