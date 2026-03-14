// Do not edit. This file is generated.
// MoonBit type: UIEvent
// Specifications: uievents.idl

/// [UIEvent](https://developer.mozilla.org/en-US/docs/Web/API/UIEvent)
#external
pub type UIEvent

pub impl TJsValue for UIEvent with to_js(self: UIEvent) -> JsValue = "%identity"

pub impl FromJsAny for UIEvent with from_js_any(value : JsAny) -> UIEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TUIEvent] UIEvent::into(self : UIEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TUIEvent] UIEvent::unsafe_into(self : UIEvent) -> T = "%identity"

pub impl HasConstructor for UIEvent with constructor_name() { "UIEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TUIEvent + HasConstructor] UIEvent::try_into(self : UIEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TUIEvent for UIEvent

pub impl TEvent for UIEvent

pub fn UIEvent::new(type_ : String, 
event_init_dict? : UIEventInit) -> UIEvent {
  ui_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
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
  ui_event_view_ffi(TJsValue::to_js(self))
}

/// [UIEvent.detail](https://developer.mozilla.org/en-US/docs/Web/API/UIEvent/detail)
impl TUIEvent with detail(self : Self) -> Int {
  ui_event_detail_ffi(TJsValue::to_js(self))
}

/// [UIEvent.initUIEvent](https://developer.mozilla.org/en-US/docs/Web/API/UIEvent/initUIEvent)
impl TUIEvent with init_ui_event(self : Self, 
type_arg : String, 
bubbles_arg? : Bool, 
cancelable_arg? : Bool, 
view_arg? : &TWindow, 
detail_arg? : Int) -> Unit {
  ui_event_init_ui_event_ffi(TJsValue::to_js(self), TJsValue::to_js(type_arg), opt_to_js(bubbles_arg), opt_to_js(cancelable_arg), opt_to_js(view_arg), opt_to_js(detail_arg))
}

/// [UIEvent.which](https://developer.mozilla.org/en-US/docs/Web/API/UIEvent/which)
impl TUIEvent with which(self : Self) -> UInt {
  ui_event_which_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn ui_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> UIEvent = "(type_, event_init_dict) => new UIEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn ui_event_view_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.view"

///|
#cfg(target="js")
fn ui_event_view_ffi(obj: JsValue) -> Window {
  ui_event_view_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn ui_event_detail_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.detail"

///|
#cfg(target="js")
fn ui_event_detail_ffi(obj: JsValue) -> Int {
  ui_event_detail_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn ui_event_init_ui_event_ffi(obj: JsValue, type_arg: JsValue, bubbles_arg: JsValue, cancelable_arg: JsValue, view_arg: JsValue, detail_arg: JsValue) -> Unit = "(obj, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg) => obj.initUIEvent(type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg)"

#cfg(target="js")
extern "js" fn ui_event_which_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.which"

///|
#cfg(target="js")
fn ui_event_which_ffi(obj: JsValue) -> UInt {
  ui_event_which_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn ui_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> UIEvent = "webapi_UIEvent" "new"

#cfg(target="wasm-gc")
fn ui_event_view_ffi(obj: JsValue) -> Window = "webapi_UIEvent" "get_view"

#cfg(target="wasm-gc")
fn ui_event_detail_ffi(obj: JsValue) -> Int = "webapi_UIEvent" "get_detail"

#cfg(target="wasm-gc")
fn ui_event_init_ui_event_ffi(obj: JsValue, type_arg: JsValue, bubbles_arg: JsValue, cancelable_arg: JsValue, view_arg: JsValue, detail_arg: JsValue) -> Unit = "webapi_UIEvent" "initUIEvent"

#cfg(target="wasm-gc")
fn ui_event_which_ffi(obj: JsValue) -> UInt = "webapi_UIEvent" "get_which"