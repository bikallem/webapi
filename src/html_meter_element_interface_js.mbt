extern "js" fn html_meter_element_new_ffi() -> HTMLMeterElement = "() => new HTMLMeterElement()"

extern "js" fn html_meter_element_value_ffi(obj: JsValue) -> JsValue = "(obj) => obj.value"

extern "js" fn html_meter_element_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

extern "js" fn html_meter_element_min_ffi(obj: JsValue) -> JsValue = "(obj) => obj.min"

extern "js" fn html_meter_element_set_min_ffi(obj: JsValue, min: JsValue) -> Unit = "(obj, min) => { obj.min = min; }"

extern "js" fn html_meter_element_max_ffi(obj: JsValue) -> JsValue = "(obj) => obj.max"

extern "js" fn html_meter_element_set_max_ffi(obj: JsValue, max: JsValue) -> Unit = "(obj, max) => { obj.max = max; }"

extern "js" fn html_meter_element_low_ffi(obj: JsValue) -> JsValue = "(obj) => obj.low"

extern "js" fn html_meter_element_set_low_ffi(obj: JsValue, low: JsValue) -> Unit = "(obj, low) => { obj.low = low; }"

extern "js" fn html_meter_element_high_ffi(obj: JsValue) -> JsValue = "(obj) => obj.high"

extern "js" fn html_meter_element_set_high_ffi(obj: JsValue, high: JsValue) -> Unit = "(obj, high) => { obj.high = high; }"

extern "js" fn html_meter_element_optimum_ffi(obj: JsValue) -> JsValue = "(obj) => obj.optimum"

extern "js" fn html_meter_element_set_optimum_ffi(obj: JsValue, optimum: JsValue) -> Unit = "(obj, optimum) => { obj.optimum = optimum; }"

extern "js" fn html_meter_element_labels_ffi(obj: JsValue) -> JsValue = "(obj) => obj.labels"