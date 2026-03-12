///|
extern "js" fn htmlo_list_element_new_ffi() -> HTMLOListElement = "() => new HTMLOListElement()"

///|
extern "js" fn htmlo_list_element_reversed_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.reversed"

///|
fn htmlo_list_element_reversed_ffi(obj : JsValue) -> Bool {
  htmlo_list_element_reversed_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn htmlo_list_element_set_reversed_ffi(
  obj : JsValue,
  reversed : JsValue,
) -> Unit = "(obj, reversed) => { obj.reversed = reversed; }"

///|
extern "js" fn htmlo_list_element_start_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.start"

///|
fn htmlo_list_element_start_ffi(obj : JsValue) -> Int {
  htmlo_list_element_start_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn htmlo_list_element_set_start_ffi(
  obj : JsValue,
  start : JsValue,
) -> Unit = "(obj, start) => { obj.start = start; }"

///|
extern "js" fn htmlo_list_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
fn htmlo_list_element_type_ffi(obj : JsValue) -> String {
  htmlo_list_element_type_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn htmlo_list_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
extern "js" fn htmlo_list_element_compact_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.compact"

///|
fn htmlo_list_element_compact_ffi(obj : JsValue) -> Bool {
  htmlo_list_element_compact_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn htmlo_list_element_set_compact_ffi(
  obj : JsValue,
  compact : JsValue,
) -> Unit = "(obj, compact) => { obj.compact = compact; }"
