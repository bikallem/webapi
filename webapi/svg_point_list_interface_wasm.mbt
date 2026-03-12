fn svg_point_list_length_ffi(obj: JsValue) -> UInt = "webapi_SVGPointList" "get_length"

fn svg_point_list_number_of_items_ffi(obj: JsValue) -> UInt = "webapi_SVGPointList" "get_numberOfItems"

fn svg_point_list_clear_ffi(obj: JsValue) -> Unit = "webapi_SVGPointList" "clear"

fn svg_point_list_initialize_ffi(obj: JsValue, new_item: JsValue) -> DOMPoint = "webapi_SVGPointList" "initialize"

fn svg_point_list_get_item_ffi(obj: JsValue, index: JsValue) -> DOMPoint = "webapi_SVGPointList" "getItem"

fn svg_point_list_insert_item_before_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> DOMPoint = "webapi_SVGPointList" "insertItemBefore"

fn svg_point_list_replace_item_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> DOMPoint = "webapi_SVGPointList" "replaceItem"

fn svg_point_list_remove_item_ffi(obj: JsValue, index: JsValue) -> DOMPoint = "webapi_SVGPointList" "removeItem"

fn svg_point_list_append_item_ffi(obj: JsValue, new_item: JsValue) -> DOMPoint = "webapi_SVGPointList" "appendItem"

fn svg_point_list_set_ffi(obj: JsValue, index: JsValue, new_item: JsValue) -> Unit = "webapi_SVGPointList" "set"