///|
#external
pub type NavigationCurrentEntryChangeEvent

///|
pub impl TJsValue for NavigationCurrentEntryChangeEvent with to_js(
  self : NavigationCurrentEntryChangeEvent,
) -> JsValue = "%identity"

///|
pub fn[T : TNavigationCurrentEntryChangeEvent] NavigationCurrentEntryChangeEvent::into(
  self : NavigationCurrentEntryChangeEvent,
) -> T = "%identity"

///|
pub impl TNavigationCurrentEntryChangeEvent for NavigationCurrentEntryChangeEvent

///|
pub impl TEvent for NavigationCurrentEntryChangeEvent

///|
extern "js" fn navigation_current_entry_change_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> NavigationCurrentEntryChangeEvent = "(type_, event_init_dict) => new NavigationCurrentEntryChangeEvent(type_, event_init_dict)"

///|
pub fn NavigationCurrentEntryChangeEvent::new(
  type_ : String,
  event_init_dict : NavigationCurrentEntryChangeEventInit,
) -> NavigationCurrentEntryChangeEvent {
  navigation_current_entry_change_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
pub trait TNavigationCurrentEntryChangeEvent: TEvent {}
