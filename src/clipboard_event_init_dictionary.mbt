// Do not edit. This file is generated.
// MoonBit type: ClipboardEventInit
// Specifications: clipboard-apis.idl, dom.idl

/// [ClipboardEventInit](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardEventInit)
#external
pub type ClipboardEventInit

pub impl TJsValue for ClipboardEventInit with to_js(self: ClipboardEventInit) -> JsValue = "%identity"

pub impl FromJsAny for ClipboardEventInit with from_js_any(value : JsAny) -> ClipboardEventInit = "%identity"

pub fn ClipboardEventInit::new(bubbles? : Bool, 
cancelable? : Bool, 
composed? : Bool, 
clipboard_data? : &TDataTransfer) -> ClipboardEventInit {
  clipboard_event_init_ffi(opt_to_js(bubbles), opt_to_js(cancelable), opt_to_js(composed), opt_to_js(clipboard_data))
}

pub fn ClipboardEventInit::empty() -> ClipboardEventInit { clipboard_event_init_empty_ffi() }

pub fn ClipboardEventInit::bubbles(self : ClipboardEventInit) -> Bool? {
  clipboard_event_init_get_bubbles_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ClipboardEventInit::cancelable(self : ClipboardEventInit) -> Bool? {
  clipboard_event_init_get_cancelable_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ClipboardEventInit::composed(self : ClipboardEventInit) -> Bool? {
  clipboard_event_init_get_composed_ffi(TJsValue::to_js(self)).to_option_prim()
}

pub fn ClipboardEventInit::clipboard_data(self : ClipboardEventInit) -> DataTransfer? {
  clipboard_event_init_get_clipboard_data_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn clipboard_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, clipboard_data: JsValue) -> ClipboardEventInit = 
#|(bubbles, cancelable, composed, clipboardData) => {
#|  const obj = {};
#|  if (bubbles !== undefined) obj.bubbles = bubbles;
#|  if (cancelable !== undefined) obj.cancelable = cancelable;
#|  if (composed !== undefined) obj.composed = composed;
#|  if (clipboardData !== undefined) obj.clipboardData = clipboardData;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn clipboard_event_init_empty_ffi() -> ClipboardEventInit = "() => {}"

#cfg(target="js")
extern "js" fn clipboard_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "(obj) => obj.bubbles"

#cfg(target="js")
extern "js" fn clipboard_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "(obj) => obj.cancelable"

#cfg(target="js")
extern "js" fn clipboard_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "(obj) => obj.composed"

#cfg(target="js")
extern "js" fn clipboard_event_init_get_clipboard_data_ffi(obj: JsValue) -> JsValue = "(obj) => obj.clipboardData"

#cfg(target="wasm-gc")
fn clipboard_event_init_ffi(bubbles: JsValue, cancelable: JsValue, composed: JsValue, clipboard_data: JsValue) -> ClipboardEventInit = "webapi_ClipboardEventInit" "new"

#cfg(target="wasm-gc")
fn clipboard_event_init_empty_ffi() -> ClipboardEventInit = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn clipboard_event_init_get_bubbles_ffi(obj: JsValue) -> JsValue = "webapi_ClipboardEventInit" "get_bubbles"

#cfg(target="wasm-gc")
fn clipboard_event_init_get_cancelable_ffi(obj: JsValue) -> JsValue = "webapi_ClipboardEventInit" "get_cancelable"

#cfg(target="wasm-gc")
fn clipboard_event_init_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_ClipboardEventInit" "get_composed"

#cfg(target="wasm-gc")
fn clipboard_event_init_get_clipboard_data_ffi(obj: JsValue) -> JsValue = "webapi_ClipboardEventInit" "get_clipboardData"