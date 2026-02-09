///|
extern "js" fn html_mod_element_new_ffi() -> HTMLModElement = "() => new HTMLModElement()"

///|
extern "js" fn html_mod_element_cite_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cite"

///|
fn html_mod_element_cite_ffi(obj : JsValue) -> String {
  html_mod_element_cite_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_mod_element_set_cite_ffi(
  obj : JsValue,
  cite : JsValue,
) -> Unit = "(obj, cite) => { obj.cite = cite; }"

///|
extern "js" fn html_mod_element_date_time_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.dateTime"

///|
fn html_mod_element_date_time_ffi(obj : JsValue) -> String {
  html_mod_element_date_time_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_mod_element_set_date_time_ffi(
  obj : JsValue,
  date_time : JsValue,
) -> Unit = "(obj, dateTime) => { obj.dateTime = dateTime; }"
