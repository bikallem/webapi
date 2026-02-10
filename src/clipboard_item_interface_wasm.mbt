fn clipboard_item_new_ffi(items: JsValue, options: JsValue) -> ClipboardItem = "webapi_ClipboardItem" "new"

fn clipboard_item_presentation_style_ffi(obj: JsValue) -> PresentationStyle = "webapi_ClipboardItem" "get_presentationStyle"

fn clipboard_item_types_ffi(obj: JsValue) -> JsValue = "webapi_ClipboardItem" "get_types"

fn clipboard_item_get_type_ffi_wasm(obj: JsValue, type_: JsValue) -> JsValue = "webapi_ClipboardItem" "getType"

///|
fn clipboard_item_get_type_ffi(obj: JsValue, type_: JsValue) -> @js_async.Promise[Blob] {
  clipboard_item_get_type_ffi_wasm(obj, type_).unsafe_cast()
}

fn clipboard_item_supports_ffi(type_: JsValue) -> Bool = "webapi_ClipboardItem" "supports"