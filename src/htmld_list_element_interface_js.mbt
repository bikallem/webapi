///|
extern "js" fn htmld_list_element_new_ffi() -> HTMLDListElement = "() => new HTMLDListElement()"

///|
extern "js" fn htmld_list_element_compact_ffi(obj : JsValue) -> JsValue = "(obj) => obj.compact"

///|
extern "js" fn htmld_list_element_set_compact_ffi(
  obj : JsValue,
  compact : JsValue,
) -> Unit = "(obj, compact) => { obj.compact = compact; }"
