extern "js" fn html_progress_element_new_ffi() -> HTMLProgressElement = "() => new HTMLProgressElement()"

extern "js" fn html_progress_element_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.value"

extern "js" fn html_progress_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

extern "js" fn html_progress_element_max_ffi(obj: JsValue) -> JsValue = "(obj) => obj.max"

extern "js" fn html_progress_element_set_max_ffi(obj: JsValue, max: JsValue) -> Unit = "(obj, max) => { obj.max = max; }"

extern "js" fn html_progress_element_position_ffi(obj: JsValue) -> JsValue = "(obj) => obj.position"

extern "js" fn html_progress_element_labels_ffi(obj: JsValue) -> JsValue = "(obj) => obj.labels"