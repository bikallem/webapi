///|
#external
pub type NavigateEvent

///|
pub impl TJsValue for NavigateEvent with to_js(self : NavigateEvent) -> JsValue = "%identity"

///|
pub fn[T : TNavigateEvent] NavigateEvent::into(self : NavigateEvent) -> T = "%identity"

///|
pub impl TNavigateEvent for NavigateEvent

///|
pub impl TEvent for NavigateEvent

///|
extern "js" fn navigate_event_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> NavigateEvent = "(type_, event_init_dict) => new NavigateEvent(type_, event_init_dict)"

///|
pub fn NavigateEvent::new(
  type_ : String,
  event_init_dict : NavigateEventInit,
) -> NavigateEvent {
  navigate_event_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
pub trait TNavigateEvent: TEvent {
  intercept(self : Self, options? : NavigationInterceptOptions) -> Unit = _
  scroll(self : Self) -> Unit = _
}

///|
extern "js" fn navigate_event_intercept_ffi(
  obj : JsValue,
  options : JsValue,
) -> Unit = "(obj, options) => obj.intercept(obj, options)"

///|
impl TNavigateEvent with intercept(
  self : Self,
  options? : NavigationInterceptOptions = NavigationInterceptOptions::empty(),
) -> Unit {
  navigate_event_intercept_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn navigate_event_scroll_ffi(obj : JsValue) -> Unit = "(obj) => obj.scroll(obj)"

///|
impl TNavigateEvent with scroll(self : Self) -> Unit {
  navigate_event_scroll_ffi(TJsValue::to_js(self))
}
