fn svg_point_list_length_ffi(obj: JsValue) -> JsValue = "webapi_SVGPointList" "get_length"

fn svg_point_list_number_of_items_ffi(obj: JsValue) -> JsValue = "webapi_SVGPointList" "get_numberOfItems"

fn svg_point_list_clear_ffi(obj: JsValue) -> Unit = "webapi_SVGPointList" "clear"

fn svg_point_list_initialize_ffi(obj: JsValue, new_item: JsValue) -> JsValue = "webapi_SVGPointList" "initialize"

fn svg_point_list_insert_item_before_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> JsValue = "webapi_SVGPointList" "insertItemBefore"

fn svg_point_list_replace_item_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> JsValue = "webapi_SVGPointList" "replaceItem"

fn svg_point_list_remove_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_SVGPointList" "removeItem"

fn svg_point_list_append_item_ffi(obj: JsValue, new_item: JsValue) -> JsValue = "webapi_SVGPointList" "appendItem"