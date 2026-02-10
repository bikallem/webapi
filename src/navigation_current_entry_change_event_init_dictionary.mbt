// Do not edit. This file is generated.
// MoonBit type: NavigationCurrentEntryChangeEventInit
// Specifications: dom.idl, html.idl

///|
/// [NavigationCurrentEntryChangeEventInit](https://developer.mozilla.org/en-US/docs/Web/API/NavigationCurrentEntryChangeEventInit)
#external
pub type NavigationCurrentEntryChangeEventInit

///|
pub impl TJsValue for NavigationCurrentEntryChangeEventInit with to_js(
  self : NavigationCurrentEntryChangeEventInit,
) -> JsValue = "%identity"

///|
pub fn NavigationCurrentEntryChangeEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  navigation_type? : NavigationType = JsValue::null(),
  from : &TNavigationHistoryEntry,
) -> NavigationCurrentEntryChangeEventInit {
  navigation_current_entry_change_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    TJsValue::to_js(navigation_type),
    TJsValue::to_js(from),
  )
}

///|
pub fn NavigationCurrentEntryChangeEventInit::empty() -> NavigationCurrentEntryChangeEventInit {
  navigation_current_entry_change_event_init_empty_ffi()
}
