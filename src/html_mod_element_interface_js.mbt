///|
extern "js" fn html_mod_element_new_ffi() -> HTMLModElement = "() => new HTMLModElement()"

///|
extern "js" fn html_mod_element_cite_ffi(obj : JsValue) -> JsValue = "(obj) => obj.cite"

///|
extern "js" fn html_mod_element_set_cite_ffi(
  obj : JsValue,
  cite : JsValue,
) -> Unit = "(obj, cite) => { obj.cite = cite; }"

///|
extern "js" fn html_mod_element_date_time_ffi(obj : JsValue) -> JsValue = "(obj) => obj.dateTime"

///|
extern "js" fn html_mod_element_set_date_time_ffi(
  obj : JsValue,
  date_time : JsValue,
) -> Unit = "(obj, dateTime) => { obj.dateTime = dateTime; }"
