// Do not edit. This file is generated.
// MoonBit type: NavigationCurrentEntryChangeEvent
// Specifications: html.idl

/// [NavigationCurrentEntryChangeEvent](https://developer.mozilla.org/en-US/docs/Web/API/NavigationCurrentEntryChangeEvent)
#external
pub type NavigationCurrentEntryChangeEvent

pub impl TJsValue for NavigationCurrentEntryChangeEvent with to_js(self: NavigationCurrentEntryChangeEvent) -> JsValue = "%identity"

pub impl FromJsAny for NavigationCurrentEntryChangeEvent with from_js_any(value : JsAny) -> NavigationCurrentEntryChangeEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TNavigationCurrentEntryChangeEvent] NavigationCurrentEntryChangeEvent::into(self : NavigationCurrentEntryChangeEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TNavigationCurrentEntryChangeEvent] NavigationCurrentEntryChangeEvent::unsafe_into(self : NavigationCurrentEntryChangeEvent) -> T = "%identity"

pub impl HasConstructor for NavigationCurrentEntryChangeEvent with constructor_name() { "NavigationCurrentEntryChangeEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TNavigationCurrentEntryChangeEvent + HasConstructor] NavigationCurrentEntryChangeEvent::try_into(self : NavigationCurrentEntryChangeEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TNavigationCurrentEntryChangeEvent for NavigationCurrentEntryChangeEvent

pub impl TEvent for NavigationCurrentEntryChangeEvent

pub fn NavigationCurrentEntryChangeEvent::new(type_ : String, 
event_init_dict : NavigationCurrentEntryChangeEventInit) -> NavigationCurrentEntryChangeEvent {
  navigation_current_entry_change_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

/// [NavigationCurrentEntryChangeEvent](https://developer.mozilla.org/en-US/docs/Web/API/NavigationCurrentEntryChangeEvent) interface.
pub trait TNavigationCurrentEntryChangeEvent: TEvent {
  navigation_type(self : Self) -> NavigationType = _
  from(self : Self) -> NavigationHistoryEntry = _
}

/// [NavigationCurrentEntryChangeEvent.navigationType](https://developer.mozilla.org/en-US/docs/Web/API/NavigationCurrentEntryChangeEvent/navigationType)
impl TNavigationCurrentEntryChangeEvent with navigation_type(self : Self) -> NavigationType {
  navigation_current_entry_change_event_navigation_type_ffi(TJsValue::to_js(self))
}

/// [NavigationCurrentEntryChangeEvent.from](https://developer.mozilla.org/en-US/docs/Web/API/NavigationCurrentEntryChangeEvent/from)
impl TNavigationCurrentEntryChangeEvent with from(self : Self) -> NavigationHistoryEntry {
  navigation_current_entry_change_event_from_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn navigation_current_entry_change_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> NavigationCurrentEntryChangeEvent = "(type_, event_init_dict) => new NavigationCurrentEntryChangeEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn navigation_current_entry_change_event_navigation_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.navigationType"

///|
#cfg(target="js")
fn navigation_current_entry_change_event_navigation_type_ffi(obj: JsValue) -> NavigationType {
  NavigationType::from_unchecked(navigation_current_entry_change_event_navigation_type_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn navigation_current_entry_change_event_from_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.from"

///|
#cfg(target="js")
fn navigation_current_entry_change_event_from_ffi(obj: JsValue) -> NavigationHistoryEntry {
  navigation_current_entry_change_event_from_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn navigation_current_entry_change_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> NavigationCurrentEntryChangeEvent = "webapi_NavigationCurrentEntryChangeEvent" "new"

#cfg(target="wasm-gc")
fn navigation_current_entry_change_event_navigation_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_NavigationCurrentEntryChangeEvent" "get_navigationType"

///|
#cfg(target="wasm-gc")
fn navigation_current_entry_change_event_navigation_type_ffi(obj: JsValue) -> NavigationType {
  NavigationType::from_unchecked(jsvalue_to_string(navigation_current_entry_change_event_navigation_type_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn navigation_current_entry_change_event_from_ffi(obj: JsValue) -> NavigationHistoryEntry = "webapi_NavigationCurrentEntryChangeEvent" "get_from"