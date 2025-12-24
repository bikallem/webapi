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
  current_entry(self : Self) -> NavigationHistoryEntry = _
  update_current_entry(
    self : Self,
    options : NavigationUpdateCurrentEntryOptions,
  ) -> Unit = _
  transition(self : Self) -> NavigationTransition = _
  activation(self : Self) -> NavigationActivation = _
  can_go_back(self : Self) -> Bool = _
  can_go_forward(self : Self) -> Bool = _
  navigate(self : Self, url : String, options? : NavigationNavigateOptions) -> NavigationResult = _
  reload(self : Self, options? : NavigationReloadOptions) -> NavigationResult = _
  traverse_to(self : Self, key : String, options? : NavigationOptions) -> NavigationResult = _
  back(self : Self, options? : NavigationOptions) -> NavigationResult = _
  forward(self : Self, options? : NavigationOptions) -> NavigationResult = _
  onnavigate(self : Self) -> EventHandler = _
  set_onnavigate(self : Self, onnavigate : EventHandler) -> Unit = _
  onnavigatesuccess(self : Self) -> EventHandler = _
  set_onnavigatesuccess(self : Self, onnavigatesuccess : EventHandler) -> Unit = _
  onnavigateerror(self : Self) -> EventHandler = _
  set_onnavigateerror(self : Self, onnavigateerror : EventHandler) -> Unit = _
  oncurrententrychange(self : Self) -> EventHandler = _
  set_oncurrententrychange(self : Self, oncurrententrychange : EventHandler) -> Unit = _
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
extern "js" fn navigation_current_entry_ffi(
  obj : JsValue,
) -> NavigationHistoryEntry = "(obj) => obj.currentEntry"

///|
impl TNavigation with current_entry(self : Self) -> NavigationHistoryEntry {
  navigation_current_entry_ffi(TJsValue::to_js(self))
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
extern "js" fn navigation_transition_ffi(obj : JsValue) -> NavigationTransition = "(obj) => obj.transition"

///|
impl TNavigation with transition(self : Self) -> NavigationTransition {
  navigation_transition_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_activation_ffi(obj : JsValue) -> NavigationActivation = "(obj) => obj.activation"

///|
impl TNavigation with activation(self : Self) -> NavigationActivation {
  navigation_activation_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_can_go_back_ffi(obj : JsValue) -> Bool = "(obj) => obj.canGoBack"

///|
impl TNavigation with can_go_back(self : Self) -> Bool {
  navigation_can_go_back_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_can_go_forward_ffi(obj : JsValue) -> Bool = "(obj) => obj.canGoForward"

///|
impl TNavigation with can_go_forward(self : Self) -> Bool {
  navigation_can_go_forward_ffi(TJsValue::to_js(self))
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

///|
extern "js" fn navigation_onnavigate_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onnavigate"

///|
impl TNavigation with onnavigate(self : Self) -> EventHandler {
  navigation_onnavigate_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_set_onnavigate_ffi(
  obj : JsValue,
  onnavigate : JsValue,
) -> Unit = "(obj, onnavigate) => { obj.onnavigate = onnavigate; }"

///|
impl TNavigation with set_onnavigate(self : Self, onnavigate : EventHandler) -> Unit {
  navigation_set_onnavigate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onnavigate),
  )
}

///|
extern "js" fn navigation_onnavigatesuccess_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onnavigatesuccess"

///|
impl TNavigation with onnavigatesuccess(self : Self) -> EventHandler {
  navigation_onnavigatesuccess_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_set_onnavigatesuccess_ffi(
  obj : JsValue,
  onnavigatesuccess : JsValue,
) -> Unit = "(obj, onnavigatesuccess) => { obj.onnavigatesuccess = onnavigatesuccess; }"

///|
impl TNavigation with set_onnavigatesuccess(
  self : Self,
  onnavigatesuccess : EventHandler,
) -> Unit {
  navigation_set_onnavigatesuccess_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onnavigatesuccess),
  )
}

///|
extern "js" fn navigation_onnavigateerror_ffi(obj : JsValue) -> EventHandler = "(obj) => obj.onnavigateerror"

///|
impl TNavigation with onnavigateerror(self : Self) -> EventHandler {
  navigation_onnavigateerror_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_set_onnavigateerror_ffi(
  obj : JsValue,
  onnavigateerror : JsValue,
) -> Unit = "(obj, onnavigateerror) => { obj.onnavigateerror = onnavigateerror; }"

///|
impl TNavigation with set_onnavigateerror(
  self : Self,
  onnavigateerror : EventHandler,
) -> Unit {
  navigation_set_onnavigateerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onnavigateerror),
  )
}

///|
extern "js" fn navigation_oncurrententrychange_ffi(
  obj : JsValue,
) -> EventHandler = "(obj) => obj.oncurrententrychange"

///|
impl TNavigation with oncurrententrychange(self : Self) -> EventHandler {
  navigation_oncurrententrychange_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn navigation_set_oncurrententrychange_ffi(
  obj : JsValue,
  oncurrententrychange : JsValue,
) -> Unit = "(obj, oncurrententrychange) => { obj.oncurrententrychange = oncurrententrychange; }"

///|
impl TNavigation with set_oncurrententrychange(
  self : Self,
  oncurrententrychange : EventHandler,
) -> Unit {
  navigation_set_oncurrententrychange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncurrententrychange),
  )
}
