// Do not edit. This file is generated.
// MoonBit type: ClipboardEventInit
// Specifications: clipboard-apis.idl, dom.idl

///|
/// [ClipboardEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardEventInit)
#external
pub type ClipboardEventInit

///|
pub impl TJsValue for ClipboardEventInit with to_js(self : ClipboardEventInit) -> JsValue = "%identity"

///|
pub impl FromJsAny for ClipboardEventInit with from_js_any(value : JsAny) -> ClipboardEventInit = "%identity"

///|
pub fn ClipboardEventInit::new(
  bubbles? : Bool = false,
  cancelable? : Bool = false,
  composed? : Bool = false,
  clipboard_data? : &TDataTransfer,
) -> ClipboardEventInit {
  clipboard_event_init_ffi(
    TJsValue::to_js(bubbles),
    TJsValue::to_js(cancelable),
    TJsValue::to_js(composed),
    opt_to_js(clipboard_data),
  )
}

///|
pub fn ClipboardEventInit::empty() -> ClipboardEventInit {
  clipboard_event_init_empty_ffi()
}

///|
pub fn ClipboardEventInit::bubbles(self : ClipboardEventInit) -> Bool? {
  let result = clipboard_event_init_get_bubbles_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ClipboardEventInit::cancelable(self : ClipboardEventInit) -> Bool? {
  let result = clipboard_event_init_get_cancelable_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ClipboardEventInit::composed(self : ClipboardEventInit) -> Bool? {
  let result = clipboard_event_init_get_composed_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn ClipboardEventInit::clipboard_data(
  self : ClipboardEventInit,
) -> DataTransfer? {
  let result = clipboard_event_init_get_clipboard_data_ffi(
    TJsValue::to_js(self),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}
