fn svg_number_list_length_ffi(obj: JsValue) -> UInt = "webapi_SVGNumberList" "get_length"

fn svg_number_list_number_of_items_ffi(obj: JsValue) -> UInt = "webapi_SVGNumberList" "get_numberOfItems"

fn svg_number_list_clear_ffi(obj: JsValue) -> Unit = "webapi_SVGNumberList" "clear"

fn svg_number_list_initialize_ffi(obj: JsValue, new_item: JsValue) -> SVGNumber = "webapi_SVGNumberList" "initialize"

fn svg_number_list_get_item_ffi(obj: JsValue, index: JsValue) -> SVGNumber = "webapi_SVGNumberList" "getItem"

fn svg_number_list_insert_item_before_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> SVGNumber = "webapi_SVGNumberList" "insertItemBefore"

fn svg_number_list_replace_item_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> SVGNumber = "webapi_SVGNumberList" "replaceItem"

fn svg_number_list_remove_item_ffi(obj: JsValue, index: JsValue) -> SVGNumber = "webapi_SVGNumberList" "removeItem"

fn svg_number_list_append_item_ffi(obj: JsValue, new_item: JsValue) -> SVGNumber = "webapi_SVGNumberList" "appendItem"

fn svg_number_list_set_ffi(obj: JsValue, index: JsValue, new_item: JsValue) -> Unit = "webapi_SVGNumberList" "set"