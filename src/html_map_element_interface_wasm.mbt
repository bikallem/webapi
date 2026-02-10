fn html_map_element_new_ffi() -> HTMLMapElement = "webapi_HTMLMapElement" "new"

fn html_map_element_name_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLMapElement" "get_name"

///|
fn html_map_element_name_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_map_element_name_ffi_wasm(obj))
}

fn html_map_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "webapi_HTMLMapElement" "set_name"

fn html_map_element_areas_ffi(obj: JsValue) -> HTMLCollection = "webapi_HTMLMapElement" "get_areas"