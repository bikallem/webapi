fn html_mod_element_new_ffi() -> HTMLModElement = "webapi_HTMLModElement" "new"

fn html_mod_element_cite_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLModElement" "get_cite"

///|
fn html_mod_element_cite_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_mod_element_cite_ffi_wasm(obj))
}

fn html_mod_element_set_cite_ffi(obj: JsValue, cite: JsValue) -> Unit = "webapi_HTMLModElement" "set_cite"

fn html_mod_element_date_time_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLModElement" "get_dateTime"

///|
fn html_mod_element_date_time_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_mod_element_date_time_ffi_wasm(obj))
}

fn html_mod_element_set_date_time_ffi(obj: JsValue, date_time: JsValue) -> Unit = "webapi_HTMLModElement" "set_dateTime"