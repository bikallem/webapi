///|
fn clipboard_item_options_ffi(
  presentation_style : JsValue,
) -> ClipboardItemOptions = "webapi_ClipboardItemOptions" "new"

///|
fn clipboard_item_options_empty_ffi() -> ClipboardItemOptions = "webapi_Dictionary" "empty"
