// Do not edit. This file is generated.
// MoonBit type: NavigationDestination
// Specifications: html.idl

/// [NavigationDestination](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination)
#external
pub type NavigationDestination

pub impl TJsValue for NavigationDestination with to_js(self: NavigationDestination) -> JsValue = "%identity"

pub fn[T: TNavigationDestination] NavigationDestination::into(self : NavigationDestination) -> T = "%identity"

pub impl TNavigationDestination for NavigationDestination

/// [NavigationDestination](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination) interface.
pub trait TNavigationDestination: TJsValue {
  url(self : Self) -> String = _
  key(self : Self) -> String = _
  id(self : Self) -> String = _
  index(self : Self) -> Int64 = _
  same_document(self : Self) -> Bool = _
  get_state(self : Self) -> JsValue = _
}

/// [NavigationDestination.url](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination/url)
impl TNavigationDestination with url(self : Self) -> String {
  navigation_destination_url_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [NavigationDestination.key](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination/key)
impl TNavigationDestination with key(self : Self) -> String {
  navigation_destination_key_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [NavigationDestination.id](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination/id)
impl TNavigationDestination with id(self : Self) -> String {
  navigation_destination_id_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [NavigationDestination.index](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination/index)
impl TNavigationDestination with index(self : Self) -> Int64 {
  navigation_destination_index_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [NavigationDestination.sameDocument](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination/sameDocument)
impl TNavigationDestination with same_document(self : Self) -> Bool {
  navigation_destination_same_document_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [NavigationDestination.getState](https://developer.mozilla.org/en-US/docs/Web/API/NavigationDestination/getState)
impl TNavigationDestination with get_state(self : Self) -> JsValue {
  navigation_destination_get_state_ffi(TJsValue::to_js(self)).unsafe_cast()
}