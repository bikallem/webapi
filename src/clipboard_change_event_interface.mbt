// Do not edit. This file is generated.
// MoonBit type: ClipboardChangeEvent
// Specifications: clipboard-apis.idl

/// [ClipboardChangeEvent](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardChangeEvent)
#external
pub type ClipboardChangeEvent

pub impl TJsValue for ClipboardChangeEvent with to_js(self: ClipboardChangeEvent) -> JsValue = "%identity"

pub impl FromJsAny for ClipboardChangeEvent with from_js_any(value : JsAny) -> ClipboardChangeEvent = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TClipboardChangeEvent] ClipboardChangeEvent::into(self : ClipboardChangeEvent) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TClipboardChangeEvent] ClipboardChangeEvent::unsafe_into(self : ClipboardChangeEvent) -> T = "%identity"

pub impl HasConstructor for ClipboardChangeEvent with constructor_name() { "ClipboardChangeEvent" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TClipboardChangeEvent + HasConstructor] ClipboardChangeEvent::try_into(self : ClipboardChangeEvent) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TClipboardChangeEvent for ClipboardChangeEvent

pub impl TEvent for ClipboardChangeEvent

pub fn ClipboardChangeEvent::new(type_ : String, 
event_init_dict? : ClipboardChangeEventInit) -> ClipboardChangeEvent {
  clipboard_change_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

/// [ClipboardChangeEvent](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardChangeEvent) interface.
pub trait TClipboardChangeEvent: TEvent {
  types(self : Self) -> Array[String] = _
  change_id(self : Self) -> Int64 = _
}

/// [ClipboardChangeEvent.types](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardChangeEvent/types)
impl TClipboardChangeEvent with types(self : Self) -> Array[String] {
  clipboard_change_event_types_ffi(TJsValue::to_js(self))
}

/// [ClipboardChangeEvent.changeId](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardChangeEvent/changeId)
impl TClipboardChangeEvent with change_id(self : Self) -> Int64 {
  clipboard_change_event_change_id_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn clipboard_change_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ClipboardChangeEvent = "(type_, event_init_dict) => new ClipboardChangeEvent(type_, event_init_dict)"

#cfg(target="js")
extern "js" fn clipboard_change_event_types_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.types"

///|
#cfg(target="js")
fn clipboard_change_event_types_ffi(obj: JsValue) -> Array[String] {
  clipboard_change_event_types_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn clipboard_change_event_change_id_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.changeId"

///|
#cfg(target="js")
fn clipboard_change_event_change_id_ffi(obj: JsValue) -> Int64 {
  clipboard_change_event_change_id_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn clipboard_change_event_new_ffi(type_: JsValue, event_init_dict: JsValue) -> ClipboardChangeEvent = "webapi_ClipboardChangeEvent" "new"

#cfg(target="wasm-gc")
fn clipboard_change_event_types_ffi_wasm(obj: JsValue) -> JsArray = "webapi_ClipboardChangeEvent" "get_types"

///|
#cfg(target="wasm-gc")
fn clipboard_change_event_types_ffi(obj: JsValue) -> Array[String] {
  clipboard_change_event_types_ffi_wasm(obj).to_string_array()
}

#cfg(target="wasm-gc")
fn clipboard_change_event_change_id_ffi(obj: JsValue) -> Int64 = "webapi_ClipboardChangeEvent" "get_changeId"