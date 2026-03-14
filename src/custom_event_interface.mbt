// Do not edit. This file is generated.
// MoonBit type: CustomEvent
// Specifications: dom.idl

/// [CustomEvent](https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent)
#external
pub type CustomEvent

pub impl TJsValue for CustomEvent with to_js(self: CustomEvent) -> JsValue = "%identity"

pub impl FromJsAny for CustomEvent with from_js_any(value : JsAny) -> CustomEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TCustomEvent] CustomEvent::into(self : CustomEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TCustomEvent] CustomEvent::unsafe_into(self : CustomEvent) -> T = "%identity"

pub impl HasConstructor for CustomEvent with constructor_name() { "CustomEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCustomEvent + HasConstructor] CustomEvent::try_into(self : CustomEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TCustomEvent for CustomEvent

pub impl TEvent for CustomEvent

pub fn CustomEvent::new(type_ : String, 
event_init_dict? : CustomEventInit) -> CustomEvent {
  custom_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

/// [CustomEvent](https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent) interface.
pub trait TCustomEvent: TEvent {
  detail(self : Self) -> JsValue = _
  init_custom_event(self : Self, type_ : String, bubbles? : Bool, cancelable? : Bool, detail? : JsValue) -> Unit = _
}

/// [CustomEvent.detail](https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent/detail)
impl TCustomEvent with detail(self : Self) -> JsValue {
  custom_event_detail_ffi(TJsValue::to_js(self))
}

/// [CustomEvent.initCustomEvent](https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent/initCustomEvent)
impl TCustomEvent with init_custom_event(self : Self, 
type_ : String, 
bubbles? : Bool, 
cancelable? : Bool, 
detail? : JsValue) -> Unit {
  custom_event_init_custom_event_ffi(TJsValue::to_js(self), TJsValue::to_js(type_), opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(detail))
}

#cfg(target="js")
extern "js" fn custom_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> CustomEvent = "(type_, event_init_dict) => new CustomEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn custom_event_detail_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.detail"

///|
#cfg(target="js")
fn custom_event_detail_ffi(obj: JsValue) -> JsValue {
  custom_event_detail_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn custom_event_init_custom_event_ffi(obj: JsValue, type_: JsValue, bubbles: JsValue, cancelable: JsValue, detail: JsValue) -> Unit = "(obj, type_, bubbles, cancelable, detail) => obj.initCustomEvent(type_, bubbles, cancelable, detail)"

#cfg(target="wasm-gc")
fn custom_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> CustomEvent = "webapi_CustomEvent" "new"

#cfg(target="wasm-gc")
fn custom_event_detail_ffi(obj: JsValue) -> JsValue = "webapi_CustomEvent" "get_detail"

#cfg(target="wasm-gc")
fn custom_event_init_custom_event_ffi(obj: JsValue, type_: JsValue, bubbles: JsValue, cancelable: JsValue, detail: JsValue) -> Unit = "webapi_CustomEvent" "initCustomEvent"