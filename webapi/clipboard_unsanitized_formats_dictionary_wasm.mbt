///|
fn clipboard_unsanitized_formats_ffi(
  unsanitized : JsValue,
) -> ClipboardUnsanitizedFormats = "webapi_ClipboardUnsanitizedFormats" "new"

///|
fn clipboard_unsanitized_formats_empty_ffi() -> ClipboardUnsanitizedFormats = "webapi_Dictionary" "empty"

///|
fn clipboard_unsanitized_formats_get_unsanitized_ffi(obj : JsValue) -> JsValue = "webapi_ClipboardUnsanitizedFormats" "get_unsanitized"
