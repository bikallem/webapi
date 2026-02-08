// Do not edit. This file is generated.
// MoonBit type: UIEvent
// Specifications: uievents.idl

/// [UIEvent](https://developer.mozilla.org/en-US/docs/Web/API/UIEvent)
#external
pub type UIEvent

pub impl TJsValue for UIEvent with to_js(self: UIEvent) -> JsValue = "%identity"

pub fn[T: TUIEvent] UIEvent::into(self : UIEvent) -> T = "%identity"

pub impl TUIEvent for UIEvent

pub impl TEvent for UIEvent

pub fn UIEvent::new(type_ : String, 
event_init_dict? : UIEventInit = UIEventInit::empty()) -> UIEvent {
  ui_event_new_ffi(TJsValue::to_js(type_), TJsValue::to_js(event_init_dict))
}

/// [UIEvent](https://developer.mozilla.org/en-US/docs/Web/API/UIEvent) interface.
pub trait TUIEvent: TEvent {
  view(self : Self) -> Window = _
  detail(self : Self) -> Int = _
  init_ui_event(self : Self, type_arg : String, bubbles_arg? : Bool, cancelable_arg? : Bool, view_arg? : &TWindow, detail_arg? : Int) -> Unit = _
  which(self : Self) -> UInt = _
}

/// [UIEvent.view](https://developer.mozilla.org/en-US/docs/Web/API/UIEvent/view)
impl TUIEvent with view(self : Self) -> Window {
  ui_event_view_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [UIEvent.detail](https://developer.mozilla.org/en-US/docs/Web/API/UIEvent/detail)
impl TUIEvent with detail(self : Self) -> Int {
  ui_event_detail_ffi(TJsValue::to_js(self)).unsafe_cast()
}

/// [UIEvent.initUIEvent](https://developer.mozilla.org/en-US/docs/Web/API/UIEvent/initUIEvent)
impl TUIEvent with init_ui_event(self : Self, 
type_arg : String, 
bubbles_arg? : Bool = false, 
cancelable_arg? : Bool = false, 
view_arg? : &TWindow = JsValue::null(), 
detail_arg? : Int = (0: Int)) -> Unit {
  ui_event_init_ui_event_ffi(TJsValue::to_js(self), TJsValue::to_js(type_arg), TJsValue::to_js(bubbles_arg), TJsValue::to_js(cancelable_arg), TJsValue::to_js(view_arg), TJsValue::to_js(detail_arg))
}

/// [UIEvent.which](https://developer.mozilla.org/en-US/docs/Web/API/UIEvent/which)
impl TUIEvent with which(self : Self) -> UInt {
  ui_event_which_ffi(TJsValue::to_js(self)).unsafe_cast()
}