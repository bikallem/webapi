///|
extern "js" fn clipboard_unsanitized_formats_ffi(
  unsanitized : JsValue,
) -> ClipboardUnsanitizedFormats =
  #|(unsanitized) => {
  #|  const obj = {};
  #|  if (unsanitized !== undefined) obj.unsanitized = unsanitized;
  #|  return obj;
  #|}

///|
extern "js" fn clipboard_unsanitized_formats_empty_ffi() -> ClipboardUnsanitizedFormats = "() => {}"

///|
extern "js" fn clipboard_unsanitized_formats_get_unsanitized_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.unsanitized"
