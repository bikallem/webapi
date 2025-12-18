// Auto-generated MoonBit bindings for NavigationUpdateCurrentEntryOptions dictionary
// Do not edit manually

#external
pub type NavigationUpdateCurrentEntryOptions

pub impl TJsValue for NavigationUpdateCurrentEntryOptions with to_js(self: NavigationUpdateCurrentEntryOptions) -> JsValue = "%identity"


fn navigation_update_current_entry_options_ffi(state : JsValue) -> NavigationUpdateCurrentEntryOptions = "webapi_NavigationUpdateCurrentEntryOptions" "new"


pub fn NavigationUpdateCurrentEntryOptions::new(
  state : JsValue) -> NavigationUpdateCurrentEntryOptions {
    navigation_update_current_entry_options_ffi(
      TJsValue::to_js(state)
    )
}


pub fn NavigationUpdateCurrentEntryOptions::empty() -> NavigationUpdateCurrentEntryOptions = "webapi_Dictionary" "empty"