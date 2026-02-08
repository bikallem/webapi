extern "js" fn svg_number_list_length_ffi(obj: JsValue) -> JsValue = "(obj) => obj.length"

extern "js" fn svg_number_list_number_of_items_ffi(obj: JsValue) -> JsValue = "(obj) => obj.numberOfItems"

extern "js" fn svg_number_list_clear_ffi(obj: JsValue) -> Unit = "(obj) => obj.clear()"

extern "js" fn svg_number_list_initialize_ffi(obj: JsValue, new_item: JsValue) -> JsValue = "(obj, new_item) => obj.initialize(new_item)"

extern "js" fn svg_number_list_insert_item_before_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> JsValue = "(obj, new_item, index) => obj.insertItemBefore(new_item, index)"

extern "js" fn svg_number_list_replace_item_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> JsValue = "(obj, new_item, index) => obj.replaceItem(new_item, index)"

extern "js" fn svg_number_list_remove_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.removeItem(index)"

extern "js" fn svg_number_list_append_item_ffi(obj: JsValue, new_item: JsValue) -> JsValue = "(obj, new_item) => obj.appendItem(new_item)"