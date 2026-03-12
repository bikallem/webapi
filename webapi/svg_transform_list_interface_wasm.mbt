fn svg_transform_list_length_ffi(obj: JsValue) -> UInt = "webapi_SVGTransformList" "get_length"

fn svg_transform_list_number_of_items_ffi(obj: JsValue) -> UInt = "webapi_SVGTransformList" "get_numberOfItems"

fn svg_transform_list_clear_ffi(obj: JsValue) -> Unit = "webapi_SVGTransformList" "clear"

fn svg_transform_list_initialize_ffi(obj: JsValue, new_item: JsValue) -> SVGTransform = "webapi_SVGTransformList" "initialize"

fn svg_transform_list_get_item_ffi(obj: JsValue, index: JsValue) -> SVGTransform = "webapi_SVGTransformList" "getItem"

fn svg_transform_list_insert_item_before_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> SVGTransform = "webapi_SVGTransformList" "insertItemBefore"

fn svg_transform_list_replace_item_ffi(obj: JsValue, new_item: JsValue, index: JsValue) -> SVGTransform = "webapi_SVGTransformList" "replaceItem"

fn svg_transform_list_remove_item_ffi(obj: JsValue, index: JsValue) -> SVGTransform = "webapi_SVGTransformList" "removeItem"

fn svg_transform_list_append_item_ffi(obj: JsValue, new_item: JsValue) -> SVGTransform = "webapi_SVGTransformList" "appendItem"

fn svg_transform_list_set_ffi(obj: JsValue, index: JsValue, new_item: JsValue) -> Unit = "webapi_SVGTransformList" "set"

fn svg_transform_list_create_svg_transform_from_matrix_ffi(obj: JsValue, matrix: JsValue) -> SVGTransform = "webapi_SVGTransformList" "createSVGTransformFromMatrix"

fn svg_transform_list_consolidate_ffi(obj: JsValue) -> JsValue = "webapi_SVGTransformList" "consolidate"