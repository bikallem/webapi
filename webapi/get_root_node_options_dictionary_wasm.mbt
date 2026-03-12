fn get_root_node_options_ffi(composed: JsValue) -> GetRootNodeOptions = "webapi_GetRootNodeOptions" "new"

fn get_root_node_options_empty_ffi() -> GetRootNodeOptions = "webapi_Dictionary" "empty"

fn get_root_node_options_get_composed_ffi(obj: JsValue) -> JsValue = "webapi_GetRootNodeOptions" "get_composed"