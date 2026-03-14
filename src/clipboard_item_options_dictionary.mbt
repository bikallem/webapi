// Do not edit. This file is generated.
// MoonBit type: ClipboardItemOptions
// Specifications: clipboard-apis.idl

/// [ClipboardItemOptions](https://developer.mozilla.org/en-US/docs/Web/API/ClipboardItemOptions)
#external
pub type ClipboardItemOptions

pub impl TJsValue for ClipboardItemOptions with to_js(self: ClipboardItemOptions) -> JsValue = "%identity"

pub impl FromJsAny for ClipboardItemOptions with from_js_any(value : JsAny) -> ClipboardItemOptions = "%identity"

pub fn ClipboardItemOptions::new(presentation_style? : PresentationStyle) -> ClipboardItemOptions {
  clipboard_item_options_ffi(opt_to_js(presentation_style))
}

pub fn ClipboardItemOptions::empty() -> ClipboardItemOptions { clipboard_item_options_empty_ffi() }

pub fn ClipboardItemOptions::presentation_style(self : ClipboardItemOptions) -> PresentationStyle? {
  clipboard_item_options_get_presentation_style_ffi(TJsValue::to_js(self)).to_option()
}

#cfg(target="js")
extern "js" fn clipboard_item_options_ffi(presentation_style: JsValue) -> ClipboardItemOptions = 
#|(presentationStyle) => {
#|  const obj = {};
#|  if (presentationStyle !== undefined) obj.presentationStyle = presentationStyle;
#|  return obj;
#|}

#cfg(target="js")
extern "js" fn clipboard_item_options_empty_ffi() -> ClipboardItemOptions = "() => {}"

#cfg(target="js")
extern "js" fn clipboard_item_options_get_presentation_style_ffi(obj: JsValue) -> JsValue = "(obj) => obj.presentationStyle"

#cfg(target="wasm-gc")
fn clipboard_item_options_ffi(presentation_style: JsValue) -> ClipboardItemOptions = "webapi_ClipboardItemOptions" "new"

#cfg(target="wasm-gc")
fn clipboard_item_options_empty_ffi() -> ClipboardItemOptions = "webapi_Dictionary" "empty"

#cfg(target="wasm-gc")
fn clipboard_item_options_get_presentation_style_ffi(obj: JsValue) -> JsValue = "webapi_ClipboardItemOptions" "get_presentationStyle"