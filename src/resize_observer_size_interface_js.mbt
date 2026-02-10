///|
extern "js" fn resize_observer_size_inline_size_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.inlineSize"

///|
fn resize_observer_size_inline_size_ffi(obj : JsValue) -> Double {
  resize_observer_size_inline_size_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn resize_observer_size_block_size_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.blockSize"

///|
fn resize_observer_size_block_size_ffi(obj : JsValue) -> Double {
  resize_observer_size_block_size_ffi_js(obj).unsafe_cast()
}
