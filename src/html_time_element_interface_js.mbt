extern "js" fn html_time_element_new_ffi() -> HTMLTimeElement = "() => new HTMLTimeElement()"

extern "js" fn html_time_element_date_time_ffi(obj: JsValue) -> JsValue = "(obj) => obj.dateTime"

extern "js" fn html_time_element_set_date_time_ffi(obj: JsValue, date_time: JsValue) -> Unit = "(obj, dateTime) => { obj.dateTime = dateTime; }"