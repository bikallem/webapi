///|
extern "js" fn character_data_data_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.data"

///|
fn character_data_data_ffi(obj : JsValue) -> String {
  character_data_data_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn character_data_set_data_ffi(
  obj : JsValue,
  data : JsValue,
) -> Unit = "(obj, data) => { obj.data = data; }"

///|
extern "js" fn character_data_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn character_data_length_ffi(obj : JsValue) -> UInt {
  character_data_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn character_data_substring_data_ffi_js(
  obj : JsValue,
  offset : JsValue,
  count : JsValue,
) -> JsValue = "(obj, offset, count) => obj.substringData(offset, count)"

///|
fn character_data_substring_data_ffi(
  obj : JsValue,
  offset : JsValue,
  count : JsValue,
) -> String {
  character_data_substring_data_ffi_js(obj, offset, count).unsafe_cast()
}

///|
extern "js" fn character_data_append_data_ffi(
  obj : JsValue,
  data : JsValue,
) -> Unit = "(obj, data) => obj.appendData(data)"

///|
extern "js" fn character_data_insert_data_ffi(
  obj : JsValue,
  offset : JsValue,
  data : JsValue,
) -> Unit = "(obj, offset, data) => obj.insertData(offset, data)"

///|
extern "js" fn character_data_delete_data_ffi(
  obj : JsValue,
  offset : JsValue,
  count : JsValue,
) -> Unit = "(obj, offset, count) => obj.deleteData(offset, count)"

///|
extern "js" fn character_data_replace_data_ffi(
  obj : JsValue,
  offset : JsValue,
  count : JsValue,
  data : JsValue,
) -> Unit = "(obj, offset, count, data) => obj.replaceData(offset, count, data)"

///|
extern "js" fn character_data_previous_element_sibling_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.previousElementSibling"

///|
fn character_data_previous_element_sibling_ffi(obj : JsValue) -> Element {
  character_data_previous_element_sibling_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn character_data_next_element_sibling_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.nextElementSibling"

///|
fn character_data_next_element_sibling_ffi(obj : JsValue) -> Element {
  character_data_next_element_sibling_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn character_data_before_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.before(nodes)"

///|
extern "js" fn character_data_after_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.after(nodes)"

///|
extern "js" fn character_data_replace_with_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.replaceWith(nodes)"

///|
extern "js" fn character_data_remove_ffi(obj : JsValue) -> Unit = "(obj) => obj.remove()"
