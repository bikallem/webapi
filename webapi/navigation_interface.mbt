// Do not edit. This file is generated.
// MoonBit type: Navigation
// Specifications: html.idl

///|
/// [Navigation](https://developer.mozilla.org/en-US/docs/Web/API/Navigation)
#external
pub type Navigation

///|
pub impl TJsValue for Navigation with to_js(self : Navigation) -> JsValue = "%identity"

///|
pub impl FromJsAny for Navigation with from_js_any(value : JsAny) -> Navigation = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TNavigation] Navigation::into(self : Navigation) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TNavigation] Navigation::unsafe_into(self : Navigation) -> T = "%identity"

///|
pub impl HasConstructor for Navigation with constructor_name() {
  "Navigation"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TNavigation + HasConstructor] Navigation::try_into(
  self : Navigation,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TNavigation for Navigation

///|
pub impl TEventTarget for Navigation

///|
/// [Navigation](https://developer.mozilla.org/en-US/docs/Web/API/Navigation) interface.
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
  set_onnavigate(self : Self, onnavigate : (Event) -> JsValue) -> Unit = _
  onnavigatesuccess(self : Self) -> EventHandler = _
  set_onnavigatesuccess(self : Self, onnavigatesuccess : (Event) -> JsValue) -> Unit = _
  onnavigateerror(self : Self) -> EventHandler = _
  set_onnavigateerror(self : Self, onnavigateerror : (Event) -> JsValue) -> Unit = _
  oncurrententrychange(self : Self) -> EventHandler = _
  set_oncurrententrychange(
    self : Self,
    oncurrententrychange : (Event) -> JsValue,
  ) -> Unit = _
}

///|
/// [Navigation.entries](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/entries)
impl TNavigation with entries(self : Self) -> Array[NavigationHistoryEntry] {
  navigation_entries_ffi(TJsValue::to_js(self))
}

///|
/// [Navigation.currentEntry](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/currentEntry)
impl TNavigation with current_entry(self : Self) -> NavigationHistoryEntry {
  navigation_current_entry_ffi(TJsValue::to_js(self))
}

///|
/// [Navigation.updateCurrentEntry](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/updateCurrentEntry)
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
/// [Navigation.transition](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/transition)
impl TNavigation with transition(self : Self) -> NavigationTransition {
  navigation_transition_ffi(TJsValue::to_js(self))
}

///|
/// [Navigation.activation](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/activation)
impl TNavigation with activation(self : Self) -> NavigationActivation {
  navigation_activation_ffi(TJsValue::to_js(self))
}

///|
/// [Navigation.canGoBack](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/canGoBack)
impl TNavigation with can_go_back(self : Self) -> Bool {
  navigation_can_go_back_ffi(TJsValue::to_js(self))
}

///|
/// [Navigation.canGoForward](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/canGoForward)
impl TNavigation with can_go_forward(self : Self) -> Bool {
  navigation_can_go_forward_ffi(TJsValue::to_js(self))
}

///|
/// [Navigation.navigate](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/navigate)
impl TNavigation with navigate(
  self : Self,
  url : String,
  options? : NavigationNavigateOptions,
) -> NavigationResult {
  navigation_navigate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(url),
    opt_to_js(options),
  )
}

///|
/// [Navigation.reload](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/reload)
impl TNavigation with reload(self : Self, options? : NavigationReloadOptions) -> NavigationResult {
  navigation_reload_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Navigation.traverseTo](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/traverseTo)
impl TNavigation with traverse_to(
  self : Self,
  key : String,
  options? : NavigationOptions,
) -> NavigationResult {
  navigation_traverse_to_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(key),
    opt_to_js(options),
  )
}

///|
/// [Navigation.back](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/back)
impl TNavigation with back(self : Self, options? : NavigationOptions) -> NavigationResult {
  navigation_back_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Navigation.forward](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/forward)
impl TNavigation with forward(self : Self, options? : NavigationOptions) -> NavigationResult {
  navigation_forward_ffi(TJsValue::to_js(self), opt_to_js(options))
}

///|
/// [Navigation.onnavigate](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/onnavigate)
impl TNavigation with onnavigate(self : Self) -> EventHandler {
  navigation_onnavigate_ffi(TJsValue::to_js(self))
}

///|
/// [Navigation.onnavigate](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/onnavigate)
impl TNavigation with set_onnavigate(
  self : Self,
  onnavigate : (Event) -> JsValue,
) -> Unit {
  navigation_set_onnavigate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onnavigate)),
  )
}

///|
/// [Navigation.onnavigatesuccess](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/onnavigatesuccess)
impl TNavigation with onnavigatesuccess(self : Self) -> EventHandler {
  navigation_onnavigatesuccess_ffi(TJsValue::to_js(self))
}

///|
/// [Navigation.onnavigatesuccess](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/onnavigatesuccess)
impl TNavigation with set_onnavigatesuccess(
  self : Self,
  onnavigatesuccess : (Event) -> JsValue,
) -> Unit {
  navigation_set_onnavigatesuccess_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onnavigatesuccess)),
  )
}

///|
/// [Navigation.onnavigateerror](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/onnavigateerror)
impl TNavigation with onnavigateerror(self : Self) -> EventHandler {
  navigation_onnavigateerror_ffi(TJsValue::to_js(self))
}

///|
/// [Navigation.onnavigateerror](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/onnavigateerror)
impl TNavigation with set_onnavigateerror(
  self : Self,
  onnavigateerror : (Event) -> JsValue,
) -> Unit {
  navigation_set_onnavigateerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(onnavigateerror)),
  )
}

///|
/// [Navigation.oncurrententrychange](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/oncurrententrychange)
impl TNavigation with oncurrententrychange(self : Self) -> EventHandler {
  navigation_oncurrententrychange_ffi(TJsValue::to_js(self))
}

///|
/// [Navigation.oncurrententrychange](https://developer.mozilla.org/en-US/docs/Web/API/Navigation/oncurrententrychange)
impl TNavigation with set_oncurrententrychange(
  self : Self,
  oncurrententrychange : (Event) -> JsValue,
) -> Unit {
  navigation_set_oncurrententrychange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(event_handler_non_null_ffi(oncurrententrychange)),
  )
}

///|
#cfg(target="js")
extern "js" fn navigation_entries_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.entries()"

///|
#cfg(target="js")
fn navigation_entries_ffi(obj : JsValue) -> Array[NavigationHistoryEntry] {
  navigation_entries_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_current_entry_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.currentEntry"

///|
#cfg(target="js")
fn navigation_current_entry_ffi(obj : JsValue) -> NavigationHistoryEntry {
  navigation_current_entry_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_update_current_entry_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "(obj, options) => obj.updateCurrentEntry(options)"

///|
#cfg(target="js")
extern "js" fn navigation_transition_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.transition"

///|
#cfg(target="js")
fn navigation_transition_ffi(obj : JsValue) -> NavigationTransition {
  navigation_transition_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_activation_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.activation"

///|
#cfg(target="js")
fn navigation_activation_ffi(obj : JsValue) -> NavigationActivation {
  navigation_activation_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_can_go_back_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.canGoBack"

///|
#cfg(target="js")
fn navigation_can_go_back_ffi(obj : JsValue) -> Bool {
  navigation_can_go_back_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_can_go_forward_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.canGoForward"

///|
#cfg(target="js")
fn navigation_can_go_forward_ffi(obj : JsValue) -> Bool {
  navigation_can_go_forward_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_navigate_ffi_js(
  obj : JsValue,
  url : JsValue,
  options : JsValue,
) -> JsValue = "(obj, url, options) => obj.navigate(url, options)"

///|
#cfg(target="js")
fn navigation_navigate_ffi(
  obj : JsValue,
  url : JsValue,
  options : JsValue,
) -> NavigationResult {
  navigation_navigate_ffi_js(obj, url, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_reload_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.reload(options)"

///|
#cfg(target="js")
fn navigation_reload_ffi(obj : JsValue, options : JsValue) -> NavigationResult {
  navigation_reload_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_traverse_to_ffi_js(
  obj : JsValue,
  key : JsValue,
  options : JsValue,
) -> JsValue = "(obj, key, options) => obj.traverseTo(key, options)"

///|
#cfg(target="js")
fn navigation_traverse_to_ffi(
  obj : JsValue,
  key : JsValue,
  options : JsValue,
) -> NavigationResult {
  navigation_traverse_to_ffi_js(obj, key, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_back_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.back(options)"

///|
#cfg(target="js")
fn navigation_back_ffi(obj : JsValue, options : JsValue) -> NavigationResult {
  navigation_back_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_forward_ffi_js(
  obj : JsValue,
  options : JsValue,
) -> JsValue = "(obj, options) => obj.forward(options)"

///|
#cfg(target="js")
fn navigation_forward_ffi(obj : JsValue, options : JsValue) -> NavigationResult {
  navigation_forward_ffi_js(obj, options).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_onnavigate_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onnavigate"

///|
#cfg(target="js")
fn navigation_onnavigate_ffi(obj : JsValue) -> EventHandler {
  navigation_onnavigate_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_set_onnavigate_ffi(
  obj : JsValue,
  onnavigate : JsValue,
) -> Unit = "(obj, onnavigate) => { obj.onnavigate = onnavigate; }"

///|
#cfg(target="js")
extern "js" fn navigation_onnavigatesuccess_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onnavigatesuccess"

///|
#cfg(target="js")
fn navigation_onnavigatesuccess_ffi(obj : JsValue) -> EventHandler {
  navigation_onnavigatesuccess_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_set_onnavigatesuccess_ffi(
  obj : JsValue,
  onnavigatesuccess : JsValue,
) -> Unit = "(obj, onnavigatesuccess) => { obj.onnavigatesuccess = onnavigatesuccess; }"

///|
#cfg(target="js")
extern "js" fn navigation_onnavigateerror_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.onnavigateerror"

///|
#cfg(target="js")
fn navigation_onnavigateerror_ffi(obj : JsValue) -> EventHandler {
  navigation_onnavigateerror_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_set_onnavigateerror_ffi(
  obj : JsValue,
  onnavigateerror : JsValue,
) -> Unit = "(obj, onnavigateerror) => { obj.onnavigateerror = onnavigateerror; }"

///|
#cfg(target="js")
extern "js" fn navigation_oncurrententrychange_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.oncurrententrychange"

///|
#cfg(target="js")
fn navigation_oncurrententrychange_ffi(obj : JsValue) -> EventHandler {
  navigation_oncurrententrychange_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn navigation_set_oncurrententrychange_ffi(
  obj : JsValue,
  oncurrententrychange : JsValue,
) -> Unit = "(obj, oncurrententrychange) => { obj.oncurrententrychange = oncurrententrychange; }"

///|
#cfg(target="wasm-gc")
fn navigation_entries_ffi_wasm(obj : JsValue) -> JsArray = "webapi_Navigation" "entries"

///|
#cfg(target="wasm-gc")
fn navigation_entries_ffi(obj : JsValue) -> Array[NavigationHistoryEntry] {
  navigation_entries_ffi_wasm(obj).to_array()
}

///|
#cfg(target="wasm-gc")
fn navigation_current_entry_ffi(obj : JsValue) -> NavigationHistoryEntry = "webapi_Navigation" "get_currentEntry"

///|
#cfg(target="wasm-gc")
fn navigation_update_current_entry_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "webapi_Navigation" "updateCurrentEntry"

///|
#cfg(target="wasm-gc")
fn navigation_transition_ffi(obj : JsValue) -> NavigationTransition = "webapi_Navigation" "get_transition"

///|
#cfg(target="wasm-gc")
fn navigation_activation_ffi(obj : JsValue) -> NavigationActivation = "webapi_Navigation" "get_activation"

///|
#cfg(target="wasm-gc")
fn navigation_can_go_back_ffi(obj : JsValue) -> Bool = "webapi_Navigation" "get_canGoBack"

///|
#cfg(target="wasm-gc")
fn navigation_can_go_forward_ffi(obj : JsValue) -> Bool = "webapi_Navigation" "get_canGoForward"

///|
#cfg(target="wasm-gc")
fn navigation_navigate_ffi(
  obj : JsValue,
  url : JsValue,
  options : JsValue,
) -> NavigationResult = "webapi_Navigation" "navigate"

///|
#cfg(target="wasm-gc")
fn navigation_reload_ffi(obj : JsValue, options : JsValue) -> NavigationResult = "webapi_Navigation" "reload"

///|
#cfg(target="wasm-gc")
fn navigation_traverse_to_ffi(
  obj : JsValue,
  key : JsValue,
  options : JsValue,
) -> NavigationResult = "webapi_Navigation" "traverseTo"

///|
#cfg(target="wasm-gc")
fn navigation_back_ffi(obj : JsValue, options : JsValue) -> NavigationResult = "webapi_Navigation" "back"

///|
#cfg(target="wasm-gc")
fn navigation_forward_ffi(obj : JsValue, options : JsValue) -> NavigationResult = "webapi_Navigation" "forward"

///|
#cfg(target="wasm-gc")
fn navigation_onnavigate_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigation" "get_onnavigate"

///|
#cfg(target="wasm-gc")
fn navigation_onnavigate_ffi(obj : JsValue) -> EventHandler {
  navigation_onnavigate_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn navigation_set_onnavigate_ffi(obj : JsValue, onnavigate : JsValue) -> Unit = "webapi_Navigation" "set_onnavigate"

///|
#cfg(target="wasm-gc")
fn navigation_onnavigatesuccess_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigation" "get_onnavigatesuccess"

///|
#cfg(target="wasm-gc")
fn navigation_onnavigatesuccess_ffi(obj : JsValue) -> EventHandler {
  navigation_onnavigatesuccess_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn navigation_set_onnavigatesuccess_ffi(
  obj : JsValue,
  onnavigatesuccess : JsValue,
) -> Unit = "webapi_Navigation" "set_onnavigatesuccess"

///|
#cfg(target="wasm-gc")
fn navigation_onnavigateerror_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigation" "get_onnavigateerror"

///|
#cfg(target="wasm-gc")
fn navigation_onnavigateerror_ffi(obj : JsValue) -> EventHandler {
  navigation_onnavigateerror_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn navigation_set_onnavigateerror_ffi(
  obj : JsValue,
  onnavigateerror : JsValue,
) -> Unit = "webapi_Navigation" "set_onnavigateerror"

///|
#cfg(target="wasm-gc")
fn navigation_oncurrententrychange_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Navigation" "get_oncurrententrychange"

///|
#cfg(target="wasm-gc")
fn navigation_oncurrententrychange_ffi(obj : JsValue) -> EventHandler {
  navigation_oncurrententrychange_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn navigation_set_oncurrententrychange_ffi(
  obj : JsValue,
  oncurrententrychange : JsValue,
) -> Unit = "webapi_Navigation" "set_oncurrententrychange"
