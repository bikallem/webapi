fn static_range_init_ffi(start_container: JsValue, start_offset: JsValue, end_container: JsValue, end_offset: JsValue) -> StaticRangeInit = "webapi_StaticRangeInit" "new"

fn static_range_init_empty_ffi() -> StaticRangeInit = "webapi_Dictionary" "empty"

fn static_range_init_get_start_container_ffi(obj: JsValue) -> Node = "webapi_StaticRangeInit" "get_startContainer"

fn static_range_init_get_start_offset_ffi(obj: JsValue) -> UInt = "webapi_StaticRangeInit" "get_startOffset"

fn static_range_init_get_end_container_ffi(obj: JsValue) -> Node = "webapi_StaticRangeInit" "get_endContainer"

fn static_range_init_get_end_offset_ffi(obj: JsValue) -> UInt = "webapi_StaticRangeInit" "get_endOffset"