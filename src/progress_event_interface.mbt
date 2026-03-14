// Do not edit. This file is generated.
// MoonBit type: ProgressEvent
// Specifications: xhr.idl

/// [ProgressEvent](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent)
#external
pub type ProgressEvent

pub impl TJsValue for ProgressEvent with to_js(self: ProgressEvent) -> JsValue = "%identity"

pub impl FromJsAny for ProgressEvent with from_js_any(value : JsAny) -> ProgressEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TProgressEvent] ProgressEvent::into(self : ProgressEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TProgressEvent] ProgressEvent::unsafe_into(self : ProgressEvent) -> T = "%identity"

pub impl HasConstructor for ProgressEvent with constructor_name() { "ProgressEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TProgressEvent + HasConstructor] ProgressEvent::try_into(self : ProgressEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TProgressEvent for ProgressEvent

pub impl TEvent for ProgressEvent

pub fn ProgressEvent::new(type_ : String, 
event_init_dict? : ProgressEventInit) -> ProgressEvent {
  progress_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

/// [ProgressEvent](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent) interface.
pub trait TProgressEvent: TEvent {
  length_computable(self : Self) -> Bool = _
  loaded(self : Self) -> Double = _
  total(self : Self) -> Double = _
}

/// [ProgressEvent.lengthComputable](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent/lengthComputable)
impl TProgressEvent with length_computable(self : Self) -> Bool {
  progress_event_length_computable_ffi(TJsValue::to_js(self))
}

/// [ProgressEvent.loaded](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent/loaded)
impl TProgressEvent with loaded(self : Self) -> Double {
  progress_event_loaded_ffi(TJsValue::to_js(self))
}

/// [ProgressEvent.total](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent/total)
impl TProgressEvent with total(self : Self) -> Double {
  progress_event_total_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn progress_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ProgressEvent = "(type_, event_init_dict) => new ProgressEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn progress_event_length_computable_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.lengthComputable"

///|
#cfg(target="js")
fn progress_event_length_computable_ffi(obj: JsValue) -> Bool {
  progress_event_length_computable_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn progress_event_loaded_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.loaded"

///|
#cfg(target="js")
fn progress_event_loaded_ffi(obj: JsValue) -> Double {
  progress_event_loaded_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn progress_event_total_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.total"

///|
#cfg(target="js")
fn progress_event_total_ffi(obj: JsValue) -> Double {
  progress_event_total_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn progress_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ProgressEvent = "webapi_ProgressEvent" "new"

#cfg(target="wasm-gc")
fn progress_event_length_computable_ffi(obj: JsValue) -> Bool = "webapi_ProgressEvent" "get_lengthComputable"

#cfg(target="wasm-gc")
fn progress_event_loaded_ffi(obj: JsValue) -> Double = "webapi_ProgressEvent" "get_loaded"

#cfg(target="wasm-gc")
fn progress_event_total_ffi(obj: JsValue) -> Double = "webapi_ProgressEvent" "get_total"