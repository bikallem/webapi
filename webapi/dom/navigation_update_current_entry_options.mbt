// Auto-generated MoonBit bindings for NavigationUpdateCurrentEntryOptions dictionary

// Do not edit manually

//
// WebIDL Dictionary:
// dictionary NavigationUpdateCurrentEntryOptions {
//   required any state;
// };

///|
#external
pub type NavigationUpdateCurrentEntryOptions

///|
pub impl TJsValue for NavigationUpdateCurrentEntryOptions with to_js(
  self : NavigationUpdateCurrentEntryOptions,
) -> JsValue = "%identity"

///|
fn navigation_update_current_entry_options_ffi(
  state : JsValue,
) -> NavigationUpdateCurrentEntryOptions = "webapi_NavigationUpdateCurrentEntryOptions" "new"

///|
pub fn NavigationUpdateCurrentEntryOptions::new(
  state : JsValue,
) -> NavigationUpdateCurrentEntryOptions {
  navigation_update_current_entry_options_ffi(state)
}

///|
pub fn NavigationUpdateCurrentEntryOptions::empty() -> NavigationUpdateCurrentEntryOptions = "webapi_Dictionary" "empty"
