extern "js" fn html_progress_element_new_ffi() -> HTMLProgressElement = "() => new HTMLProgressElement()"

extern "js" fn html_progress_element_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
fn html_progress_element_value_ffi(obj: JsValue) -> Double {
  html_progress_element_value_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_progress_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

extern "js" fn html_progress_element_max_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.max"

///|
fn html_progress_element_max_ffi(obj: JsValue) -> Double {
  html_progress_element_max_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_progress_element_set_max_ffi(obj: JsValue, max: JsValue) -> Unit = "(obj, max) => { obj.max = max; }"

extern "js" fn html_progress_element_position_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.position"

///|
fn html_progress_element_position_ffi(obj: JsValue) -> Double {
  html_progress_element_position_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_progress_element_labels_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.labels"

///|
fn html_progress_element_labels_ffi(obj: JsValue) -> NodeList {
  html_progress_element_labels_ffi_js(obj).unsafe_cast()
}