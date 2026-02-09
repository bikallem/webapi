///|
extern "js" fn time_ranges_length_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.length"

///|
fn time_ranges_length_ffi(obj : JsValue) -> UInt {
  time_ranges_length_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn time_ranges_start_ffi_js(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.start(index)"

///|
fn time_ranges_start_ffi(obj : JsValue, index : JsValue) -> Double {
  time_ranges_start_ffi_js(obj, index).unsafe_cast()
}

///|
extern "js" fn time_ranges_end_ffi_js(
  obj : JsValue,
  index : JsValue,
) -> JsValue = "(obj, index) => obj.end(index)"

///|
fn time_ranges_end_ffi(obj : JsValue, index : JsValue) -> Double {
  time_ranges_end_ffi_js(obj, index).unsafe_cast()
}
