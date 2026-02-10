///|
extern "js" fn clipboard_item_options_ffi(
  presentation_style : JsValue,
) -> ClipboardItemOptions =
  #|(presentationStyle) => {
  #|  const obj = {};
  #|  if (presentationStyle !== undefined) obj.presentationStyle = presentationStyle;
  #|  return obj;
  #|}

///|
extern "js" fn clipboard_item_options_empty_ffi() -> ClipboardItemOptions = "() => {}"
