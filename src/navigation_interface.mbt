///|
#external
pub type Navigation

///|
pub impl TJsValue for Navigation with to_js(self : Navigation) -> JsValue = "%identity"

///|
pub fn[T : TNavigation] Navigation::into(self : Navigation) -> T = "%identity"

///|
pub impl TNavigation for Navigation

///|
pub impl TEventTarget for Navigation

///|
pub trait TNavigation: TEventTarget {
  entries(self : Self) -> Array[NavigationHistoryEntry] = _
  update_current_entry(
    self : Self,
    options : NavigationUpdateCurrentEntryOptions,
  ) -> Unit = _
  navigate(self : Self, url : String, options? : NavigationNavigateOptions) -> NavigationResult = _
  reload(self : Self, options? : NavigationReloadOptions) -> NavigationResult = _
  traverse_to(self : Self, key : String, options? : NavigationOptions) -> NavigationResult = _
  back(self : Self, options? : NavigationOptions) -> NavigationResult = _
  forward(self : Self, options? : NavigationOptions) -> NavigationResult = _
}

///|
extern "js" fn navigation_entries_ffi(
  obj : JsValue,
) -> Array[NavigationHistoryEntry] = "(obj) => obj.entries(obj)"

///|
impl TNavigation with entries(self : Self) -> Array[NavigationHistoryEntry] {
  navigation_entries_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_update_current_entry_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "(obj, options) => obj.updateCurrentEntry(obj, options)"

///|
impl TNavigation with update_current_entry(
  self : Self,
  options : NavigationUpdateCurrentEntryOptions,
) -> Unit {
  navigation_update_current_entry_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn navigation_navigate_ffi(
  obj : JsValue,
  url : JsValue,
  options : JsValue,
) -> NavigationResult = "(obj, url, options) => obj.navigate(obj, url, options)"

///|
impl TNavigation with navigate(
  self : Self,
  url : String,
  options? : NavigationNavigateOptions = NavigationNavigateOptions::empty(),
) -> NavigationResult {
  navigation_navigate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(url),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn navigation_reload_ffi(
  obj : JsValue,
  options : JsValue,
) -> NavigationResult = "(obj, options) => obj.reload(obj, options)"

///|
impl TNavigation with reload(
  self : Self,
  options? : NavigationReloadOptions = NavigationReloadOptions::empty(),
) -> NavigationResult {
  navigation_reload_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn navigation_traverse_to_ffi(
  obj : JsValue,
  key : JsValue,
  options : JsValue,
) -> NavigationResult = "(obj, key, options) => obj.traverseTo(obj, key, options)"

///|
impl TNavigation with traverse_to(
  self : Self,
  key : String,
  options? : NavigationOptions = NavigationOptions::empty(),
) -> NavigationResult {
  navigation_traverse_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(key),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn navigation_back_ffi(
  obj : JsValue,
  options : JsValue,
) -> NavigationResult = "(obj, options) => obj.back(obj, options)"

///|
impl TNavigation with back(
  self : Self,
  options? : NavigationOptions = NavigationOptions::empty(),
) -> NavigationResult {
  navigation_back_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn navigation_forward_ffi(
  obj : JsValue,
  options : JsValue,
) -> NavigationResult = "(obj, options) => obj.forward(obj, options)"

///|
impl TNavigation with forward(
  self : Self,
  options? : NavigationOptions = NavigationOptions::empty(),
) -> NavigationResult {
  navigation_forward_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}
