///|
fn html_time_element_new_ffi() -> HTMLTimeElement = "webapi_HTMLTimeElement" "new"

///|
fn html_time_element_date_time_ffi(obj : JsValue) -> JsValue = "webapi_HTMLTimeElement" "get_dateTime"

///|
fn html_time_element_set_date_time_ffi(
  obj : JsValue,
  date_time : JsValue,
) -> Unit = "webapi_HTMLTimeElement" "set_dateTime"
