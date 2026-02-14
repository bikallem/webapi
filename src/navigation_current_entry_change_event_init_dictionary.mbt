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
pub impl FromJsAny for NavigationCurrentEntryChangeEventInit with from_js_any(
  value : JsAny,
) -> NavigationCurrentEntryChangeEventInit = "%identity"

///|
pub fn NavigationCurrentEntryChangeEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  navigation_type? : NavigationType,
  from : &TNavigationHistoryEntry,
) -> NavigationCurrentEntryChangeEventInit {
  navigation_current_entry_change_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    opt_to_js(navigation_type),
    TJsValue::to_js(from),
  )
}

///|
pub fn NavigationCurrentEntryChangeEventInit::empty() -> NavigationCurrentEntryChangeEventInit {
  navigation_current_entry_change_event_init_empty_ffi()
}

///|
pub fn NavigationCurrentEntryChangeEventInit::bubbles(
  self : NavigationCurrentEntryChangeEventInit,
) -> Bool? {
  let result = navigation_current_entry_change_event_init_get_bubbles_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn NavigationCurrentEntryChangeEventInit::cancelable(
  self : NavigationCurrentEntryChangeEventInit,
) -> Bool? {
  let result = navigation_current_entry_change_event_init_get_cancelable_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn NavigationCurrentEntryChangeEventInit::composed(
  self : NavigationCurrentEntryChangeEventInit,
) -> Bool? {
  let result = navigation_current_entry_change_event_init_get_composed_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn NavigationCurrentEntryChangeEventInit::navigation_type(
  self : NavigationCurrentEntryChangeEventInit,
) -> NavigationType? {
  let result = navigation_current_entry_change_event_init_get_navigation_type_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn NavigationCurrentEntryChangeEventInit::from(
  self : NavigationCurrentEntryChangeEventInit,
) -> NavigationHistoryEntry {
  navigation_current_entry_change_event_init_get_from_ffi(TJsValue::to_js(self))
}
