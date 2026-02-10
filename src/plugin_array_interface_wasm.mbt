fn plugin_array_refresh_ffi(obj: JsValue) -> Unit = "webapi_PluginArray" "refresh"

fn plugin_array_length_ffi(obj: JsValue) -> UInt = "webapi_PluginArray" "get_length"

fn plugin_array_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_PluginArray" "item"

fn plugin_array_named_item_ffi(obj: JsValue, name: JsValue) -> JsValue = "webapi_PluginArray" "namedItem"