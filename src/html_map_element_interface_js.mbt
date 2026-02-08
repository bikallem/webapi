extern "js" fn html_map_element_new_ffi() -> HTMLMapElement = "() => new HTMLMapElement()"

extern "js" fn html_map_element_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.name"

extern "js" fn html_map_element_set_name_ffi(obj: JsValue, name: JsValue) -> Unit = "(obj, name) => { obj.name = name; }"

extern "js" fn html_map_element_areas_ffi(obj: JsValue) -> JsValue = "(obj) => obj.areas"