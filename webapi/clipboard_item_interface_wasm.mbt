fn clipboard_item_new_ffi(items: JsValue, options: JsValue) -> ClipboardItem = "webapi_ClipboardItem" "new"

fn clipboard_item_presentation_style_ffi_wasm(obj: JsValue) -> JsValue = "webapi_ClipboardItem" "get_presentationStyle"

///|
fn clipboard_item_presentation_style_ffi(obj: JsValue) -> PresentationStyle {
  PresentationStyle::from_unchecked(jsvalue_to_string(clipboard_item_presentation_style_ffi_wasm(obj)))
}

fn clipboard_item_types_ffi_wasm(obj: JsValue) -> JsArray = "webapi_ClipboardItem" "get_types"

///|
fn clipboard_item_types_ffi(obj: JsValue) -> Array[String] {
  clipboard_item_types_ffi_wasm(obj).to_string_array()
}

fn clipboard_item_get_type_ffi_wasm(obj: JsValue, type_: JsValue) -> JsValue = "webapi_ClipboardItem" "getType"

///|
fn clipboard_item_get_type_ffi(obj: JsValue, type_: JsValue) -> JsPromise[Blob] {
  clipboard_item_get_type_ffi_wasm(obj, type_).unsafe_cast()
}

fn clipboard_item_supports_ffi(type_: JsValue) -> Bool = "webapi_ClipboardItem" "supports"