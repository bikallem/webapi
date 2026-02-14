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
  event_init_dict? : ClipboardEventInit = ClipboardEventInit::empty(),
) -> ClipboardEvent {
  clipboard_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
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
