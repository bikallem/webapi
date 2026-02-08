///|
extern "js" fn abstract_range_start_container_ffi(obj : JsValue) -> JsValue = "(obj) => obj.startContainer"

///|
extern "js" fn abstract_range_start_offset_ffi(obj : JsValue) -> JsValue = "(obj) => obj.startOffset"

///|
extern "js" fn abstract_range_end_container_ffi(obj : JsValue) -> JsValue = "(obj) => obj.endContainer"

///|
extern "js" fn abstract_range_end_offset_ffi(obj : JsValue) -> JsValue = "(obj) => obj.endOffset"

///|
extern "js" fn abstract_range_collapsed_ffi(obj : JsValue) -> JsValue = "(obj) => obj.collapsed"
