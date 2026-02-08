///|
extern "js" fn time_ranges_length_ffi(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
extern "js" fn time_ranges_start_ffi(obj : JsValue, index : JsValue) -> JsValue = "(obj, index) => obj.start(index)"

///|
extern "js" fn time_ranges_end_ffi(obj : JsValue, index : JsValue) -> JsValue = "(obj, index) => obj.end(index)"
