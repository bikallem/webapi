// Do not edit. This file is generated.
// MoonBit type: ClipboardEvent
// Specifications: clipboard-apis.idl

///|
/// [ClipboardEvent](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardEvent)
#external
pub type ClipboardEvent

///|
pub impl TJsValue for ClipboardEvent with to_js(self : ClipboardEvent) -> JsValue = "%identity"

///|
pub impl FromJsAny for ClipboardEvent with from_js_any(value : JsAny) -> ClipboardEvent = "%identity"

///|
pub fn[T : TClipboardEvent] ClipboardEvent::into(self : ClipboardEvent) -> T = "%identity"

///|
pub impl TClipboardEvent for ClipboardEvent

///|
pub impl TEvent for ClipboardEvent

///|
pub fn ClipboardEvent::new(
  type_ : String,
  event_init_dict? : ClipboardEventInit,
) -> ClipboardEvent {
  clipboard_event_new_ffi(TJsValue::to_js(type_), opt_to_js(event_init_dict))
}

///|
/// [ClipboardEvent](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardEvent) interface.
pub trait TClipboardEvent: TEvent {
  clipboard_data(self : Self) -> DataTransfer = _
}

///|
/// [ClipboardEvent.clipboardData](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardEvent/clipboardData)
impl TClipboardEvent with clipboard_data(self : Self) -> DataTransfer {
  clipboard_event_clipboard_data_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn clipboard_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ClipboardEvent = "(type_, event_init_dict) => new ClipboardEvent(type_, event_init_dict)"

///|
#cfg(target="js")
extern "js" fn clipboard_event_clipboard_data_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.clipboardData"

///|
#cfg(target="js")
fn clipboard_event_clipboard_data_ffi(obj : JsValue) -> DataTransfer {
  clipboard_event_clipboard_data_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn clipboard_event_new_ffi(
  type_ : JsValue,
  event_init_dict : JsValue,
) -> ClipboardEvent = "webapi_ClipboardEvent" "new"

///|
#cfg(target="wasm-gc")
fn clipboard_event_clipboard_data_ffi(obj : JsValue) -> DataTransfer = "webapi_ClipboardEvent" "get_clipboardData"
