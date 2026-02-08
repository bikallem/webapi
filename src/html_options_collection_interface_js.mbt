extern "js" fn html_options_collection_length_ffi(obj: JsValue) -> JsValue = "(obj) => obj.length"

extern "js" fn html_options_collection_set_length_ffi(obj: JsValue, length: JsValue) -> Unit = "(obj, length) => { obj.length = length; }"

extern "js" fn html_options_collection_add_ffi(obj: JsValue, element: JsValue, before: JsValue) -> Unit = "(obj, element, before) => obj.add(element, before)"

extern "js" fn html_options_collection_remove_ffi(obj: JsValue, index: JsValue) -> Unit = "(obj, index) => obj.remove(index)"

extern "js" fn html_options_collection_selected_index_ffi(obj: JsValue) -> JsValue = "(obj) => obj.selectedIndex"

extern "js" fn html_options_collection_set_selected_index_ffi(obj: JsValue, selected_index: JsValue) -> Unit = "(obj, selectedIndex) => { obj.selectedIndex = selectedIndex; }"