// Auto-generated MoonBit bindings for NavigationCurrentEntryChangeEventInit dictionary
// Do not edit manually

#external
pub type NavigationCurrentEntryChangeEventInit

pub impl TJsValue for NavigationCurrentEntryChangeEventInit with to_js(self: NavigationCurrentEntryChangeEventInit) -> JsValue = "%identity"


fn navigation_current_entry_change_event_init_ffi(bubbles : JsValue, cancelable : JsValue, composed : JsValue, navigation_type : JsValue, from : JsValue) -> NavigationCurrentEntryChangeEventInit = "webapi_NavigationCurrentEntryChangeEventInit" "new"


pub fn NavigationCurrentEntryChangeEventInit::new(
  bubbles? : Bool? : Bool = false,
  cancelable? : Bool? : Bool = false,
  composed? : Bool? : Bool = false,
  navigation_type? : NavigationType? : NavigationType = NavigationType::null(),
  from : NavigationHistoryEntry) -> NavigationCurrentEntryChangeEventInit {
    navigation_current_entry_change_event_init_ffi(
      TJsValue::to_js(bubbles)
     ,TJsValue::to_js(cancelable)
     ,TJsValue::to_js(composed)
     ,TJsValue::to_js(navigation_type)
     ,TJsValue::to_js(from)
    )
}


pub fn NavigationCurrentEntryChangeEventInit::empty() -> NavigationCurrentEntryChangeEventInit = "webapi_Dictionary" "empty"