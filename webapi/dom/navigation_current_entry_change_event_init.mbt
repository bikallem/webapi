// Auto-generated MoonBit bindings for NavigationCurrentEntryChangeEventInit dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary NavigationCurrentEntryChangeEventInit : EventInit {
//   NavigationType? navigationType = null;
//   required NavigationHistoryEntry from;
// };

///|
#external
pub type NavigationCurrentEntryChangeEventInit

///|
pub impl TJsValue for NavigationCurrentEntryChangeEventInit with to_js(self : NavigationCurrentEntryChangeEventInit) -> JsValue = "%identity"

///|
fn navigation_current_entry_change_event_init_ffi(navigation_type : JsValue, from : JsValue) -> NavigationCurrentEntryChangeEventInit = "webapi_NavigationCurrentEntryChangeEventInit" "new"

///|
pub fn NavigationCurrentEntryChangeEventInit::new(
  navigation_type? : JsValue,
  from : JsValue
) -> NavigationCurrentEntryChangeEventInit {
  let navigation_type_js = opt_to_js(navigation_type)
  navigation_current_entry_change_event_init_ffi(navigation_type_js, from)
}

///|
pub fn NavigationCurrentEntryChangeEventInit::empty() -> NavigationCurrentEntryChangeEventInit = "webapi_Dictionary" "empty"