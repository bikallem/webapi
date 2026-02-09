///|
extern "js" fn html_map_element_new_ffi() -> HTMLMapElement = "() => new HTMLMapElement()"

///|
extern "js" fn html_map_element_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
fn html_map_element_name_ffi(obj : JsValue) -> String {
  html_map_element_name_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn html_map_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
extern "js" fn html_map_element_areas_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.areas"

///|
fn html_map_element_areas_ffi(obj : JsValue) -> HTMLCollection {
  html_map_element_areas_ffi_js(obj).unsafe_cast()
}
