///|
extern "js" fn html_directory_element_new_ffi() -> HTMLDirectoryElement = "() => new HTMLDirectoryElement()"

///|
extern "js" fn html_directory_element_compact_ffi(obj : JsValue) -> JsValue = "(obj) => obj.compact"

///|
extern "js" fn html_directory_element_set_compact_ffi(
  obj : JsValue,
  compact : JsValue,
) -> Unit = "(obj, compact) => { obj.compact = compact; }"
