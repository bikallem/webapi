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
pub fn[T : TNavigation] Navigation::into(self : Navigation) -> T = "%identity"

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
  set_onnavigate(self : Self, onnavigate : EventHandler) -> Unit = _
  onnavigatesuccess(self : Self) -> EventHandler = _
  set_onnavigatesuccess(self : Self, onnavigatesuccess : EventHandler) -> Unit = _
  onnavigateerror(self : Self) -> EventHandler = _
  set_onnavigateerror(self : Self, onnavigateerror : EventHandler) -> Unit = _
  oncurrententrychange(self : Self) -> EventHandler = _
  set_oncurrententrychange(self : Self, oncurrententrychange : EventHandler) -> Unit = _
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
impl TNavigation with set_onnavigate(self : Self, onnavigate : EventHandler) -> Unit {
  navigation_set_onnavigate_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onnavigate),
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
  onnavigatesuccess : EventHandler,
) -> Unit {
  navigation_set_onnavigatesuccess_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onnavigatesuccess),
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
  onnavigateerror : EventHandler,
) -> Unit {
  navigation_set_onnavigateerror_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(onnavigateerror),
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
  oncurrententrychange : EventHandler,
) -> Unit {
  navigation_set_oncurrententrychange_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(oncurrententrychange),
  )
}
