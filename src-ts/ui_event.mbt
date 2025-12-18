// Auto-generated MoonBit bindings for UIEvent

// Do not edit manually

///|
#external
pub type UIEvent

///|
pub trait TUIEvent: TJsValue + TEvent {
  view(self : Self) -> Window? = _
  detail(self : Self) -> Int = _
  which(self : Self) -> UInt = _
  init_ui_event(self : Self, type_arg : String, bubbles_arg? : Bool, cancelable_arg? : Bool, view_arg? : &TWindow, detail_arg? : Int) -> Unit = _
}

///|
pub fn[T : TUIEvent] UIEvent::into(self : UIEvent) -> T = "%identity"

///|
pub impl TEvent for UIEvent

///|
pub impl TUIEvent for UIEvent

///|
pub impl TJsValue for UIEvent with to_js(self : UIEvent) -> JsValue = "%identity"

///|
pub fn UIEvent::null() -> UIEvent {
  JsValue::null()
}

///|
fn ui_event_new_ffi(type_ : JsValue, event_init_dict : JsValue) -> UIEvent = "webapi_UIEvent" "new"

///|
pub fn UIEvent::new(type_ : String, event_init_dict? : UIEventInit = UIEventInit::empty()) -> UIEvent {
  ui_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

///|
fn ui_event_init_ui_event_ffi(obj : JsValue, type_arg : JsValue, bubbles_arg : JsValue, cancelable_arg : JsValue, view_arg : JsValue, detail_arg : JsValue) -> Unit = "webapi_UIEvent" "initUIEvent"

///|
impl TUIEvent with init_ui_event(self : Self, type_arg : String, bubbles_arg? : Bool = false, cancelable_arg? : Bool = false, view_arg? : &TWindow = JsValue::null(), detail_arg? : Int = 0) -> Unit {
  ui_event_init_ui_event_ffi(TJsValue::to_js(self), TJsValue::to_js(type_arg), TJsValue::to_js(bubbles_arg), TJsValue::to_js(cancelable_arg), TJsValue::to_js(view_arg), TJsValue::to_js(detail_arg))
}

///|
fn ui_event_view_ffi(obj : JsValue) -> JsValue = "webapi_UIEvent" "view"

///|
impl TUIEvent with view(self : Self) -> Window? {
  ui_event_view_ffi(self.to_js()).as_option()
}

///|
fn ui_event_detail_ffi(obj : JsValue) -> Int = "webapi_UIEvent" "detail"

///|
impl TUIEvent with detail(self : Self) -> Int {
  ui_event_detail_ffi(self.to_js())
}

///|
fn ui_event_which_ffi(obj : JsValue) -> UInt = "webapi_UIEvent" "which"

///|
impl TUIEvent with which(self : Self) -> UInt {
  ui_event_which_ffi(self.to_js())
}