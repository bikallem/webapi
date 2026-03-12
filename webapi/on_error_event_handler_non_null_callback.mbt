// Do not edit. This file is generated.
// MoonBit type: OnErrorEventHandlerNonNull
// Specifications: html.idl

/// [OnErrorEventHandlerNonNull](https://developer.mozilla.org/en-US/docs/Web/API/OnErrorEventHandlerNonNull)
#external
pub type OnErrorEventHandlerNonNull

pub impl TJsValue for OnErrorEventHandlerNonNull with to_js(self: OnErrorEventHandlerNonNull) -> JsValue = "%identity"

pub impl FromJsAny for OnErrorEventHandlerNonNull with from_js_any(value : JsAny) -> OnErrorEventHandlerNonNull = "%identity"

pub fn OnErrorEventHandlerNonNull::new(callback : (OnErrorEventHandlerNonNullEvent, String, UInt, UInt, JsValue) -> JsValue) -> OnErrorEventHandlerNonNull { on_error_event_handler_non_null_ffi(callback) }