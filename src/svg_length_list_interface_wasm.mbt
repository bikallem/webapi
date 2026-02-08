fn svg_length_list_length_ffi(obj: JsValue) -> JsValue = "webapi_SVGLengthList" "get_length"

fn svg_length_list_number_of_items_ffi(obj: JsValue) -> JsValue = "webapi_SVGLengthList" "get_numberOfItems"

fn svg_length_list_clear_ffi(obj: JsValue) -> Unit = "webapi_SVGLengthList" "clear"

fn svg_length_list_initialize_ffi(obj: JsValue, new_item: JsValue) -> JsValue = "webapi_SVGLengthList" "initialize"

fn svg_length_list_insert_item_before_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> JsValue = "webapi_SVGLengthList" "insertItemBefore"

fn svg_length_list_replace_item_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> JsValue = "webapi_SVGLengthList" "replaceItem"

fn svg_length_list_remove_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_SVGLengthList" "removeItem"

fn svg_length_list_append_item_ffi(obj: JsValue, new_item: JsValue) -> JsValue = "webapi_SVGLengthList" "appendItem"