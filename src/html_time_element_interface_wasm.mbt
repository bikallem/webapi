///|
fn html_time_element_new_ffi() -> HTMLTimeElement = "webapi_HTMLTimeElement" "new"

///|
fn html_time_element_date_time_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLTimeElement" "get_dateTime"

///|
fn html_time_element_date_time_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_time_element_date_time_ffi_wasm(obj))
}

///|
fn html_time_element_set_date_time_ffi(
  obj : JsValue,
  date_time : JsValue,
) -> Unit = "webapi_HTMLTimeElement" "set_dateTime"
