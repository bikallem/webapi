// Do not edit. This file is generated.
// MoonBit type: NavigationCurrentEntryChangeEvent
// Specifications: html.idl

/// [NavigationCurrentEntryChangeEvent](https://developer.mozilla.org/en-US/docs/Web/API/NavigationCurrentEntryChangeEvent)
#external
pub type NavigationCurrentEntryChangeEvent

pub impl TJsValue for NavigationCurrentEntryChangeEvent with to_js(self: NavigationCurrentEntryChangeEvent) -> JsValue = "%identity"

pub impl FromJsAny for NavigationCurrentEntryChangeEvent with from_js_any(value : JsAny) -> NavigationCurrentEntryChangeEvent = "%identity"

pub fn[T: TNavigationCurrentEntryChangeEvent] NavigationCurrentEntryChangeEvent::into(self : NavigationCurrentEntryChangeEvent) -> T = "%identity"

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