///|
fn clipboard_item_options_ffi(
  presentation_style : JsValue,
) -> ClipboardItemOptions = "webapi_ClipboardItemOptions" "new"

///|
fn clipboard_item_options_empty_ffi() -> ClipboardItemOptions = "webapi_Dictionary" "empty"

///|
fn clipboard_item_options_get_presentation_style_ffi(obj : JsValue) -> JsValue = "webapi_ClipboardItemOptions" "get_presentationStyle"
