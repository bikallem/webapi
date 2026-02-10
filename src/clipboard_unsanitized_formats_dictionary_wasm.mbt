///|
fn clipboard_unsanitized_formats_ffi(
  unsanitized : JsValue,
) -> ClipboardUnsanitizedFormats = "webapi_ClipboardUnsanitizedFormats" "new"

///|
fn clipboard_unsanitized_formats_empty_ffi() -> ClipboardUnsanitizedFormats = "webapi_Dictionary" "empty"
