// Do not edit. This file is generated.
// MoonBit type: ClipboardChangeEvent
// Specifications: clipboard-apis.idl

///|
/// [ClipboardChangeEvent](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardChangeEvent)
#external
pub type ClipboardChangeEvent

///|
pub impl TJsValue for ClipboardChangeEvent with to_js(
  self : ClipboardChangeEvent,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for ClipboardChangeEvent with from_js_any(value : JsAny) -> ClipboardChangeEvent = "%identity"

///|
pub fn[T : TClipboardChangeEvent] ClipboardChangeEvent::into(
  self : ClipboardChangeEvent,
) -> T = "%identity"

///|
pub impl TClipboardChangeEvent for ClipboardChangeEvent

///|
pub impl TEvent for ClipboardChangeEvent

///|
pub fn ClipboardChangeEvent::new(
  type_ : String,
  event_init_dict? : ClipboardChangeEventInit = ClipboardChangeEventInit::empty(),
) -> ClipboardChangeEvent {
  clipboard_change_event_new_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(event_init_dict),
  )
}

///|
/// [ClipboardChangeEvent](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardChangeEvent) interface.
pub trait TClipboardChangeEvent: TEvent {
  types(self : Self) -> JsValue = _
  change_id(self : Self) -> Int64 = _
}

///|
/// [ClipboardChangeEvent.types](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardChangeEvent/types)
impl TClipboardChangeEvent with types(self : Self) -> JsValue {
  clipboard_change_event_types_ffi(TJsValue::to_js(self))
}

///|
/// [ClipboardChangeEvent.changeId](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardChangeEvent/changeId)
impl TClipboardChangeEvent with change_id(self : Self) -> Int64 {
  clipboard_change_event_change_id_ffi(TJsValue::to_js(self))
}
