///|
extern "js" fn clipboard_item_new_ffi(
  items : JsValue,
  options : JsValue,
) -> ClipboardItem = "(items, options) => new ClipboardItem(items, options)"

///|
extern "js" fn clipboard_item_presentation_style_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.presentationStyle"

///|
fn clipboard_item_presentation_style_ffi(obj : JsValue) -> PresentationStyle {
  PresentationStyle::from_unchecked(
    clipboard_item_presentation_style_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn clipboard_item_types_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.types"

///|
fn clipboard_item_types_ffi(obj : JsValue) -> Array[String] {
  clipboard_item_types_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn clipboard_item_get_type_ffi_js(
  obj : JsValue,
  type_ : JsValue,
) -> JsValue = "(obj, type_) => obj.getType(type_)"

///|
fn clipboard_item_get_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> JsPromise[Blob] {
  clipboard_item_get_type_ffi_js(obj, type_).unsafe_cast()
}

///|
extern "js" fn clipboard_item_supports_ffi_js(type_ : JsValue) -> JsValue = "(type_) => ClipboardItem.supports(type_)"

///|
fn clipboard_item_supports_ffi(type_ : JsValue) -> Bool {
  clipboard_item_supports_ffi_js(type_).unsafe_cast()
}
