///|
extern "js" fn htmlu_list_element_new_ffi() -> HTMLUListElement = "() => new HTMLUListElement()"

///|
extern "js" fn htmlu_list_element_compact_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.compact"

///|
fn htmlu_list_element_compact_ffi(obj : JsValue) -> Bool {
  htmlu_list_element_compact_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn htmlu_list_element_set_compact_ffi(
  obj : JsValue,
  compact : JsValue,
) -> Unit = "(obj, compact) => { obj.compact = compact; }"

///|
extern "js" fn htmlu_list_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
fn htmlu_list_element_type_ffi(obj : JsValue) -> String {
  htmlu_list_element_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn htmlu_list_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"
