///|
extern "js" fn screen_avail_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.availWidth"

///|
fn screen_avail_width_ffi(obj : JsValue) -> Int {
  screen_avail_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn screen_avail_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.availHeight"

///|
fn screen_avail_height_ffi(obj : JsValue) -> Int {
  screen_avail_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn screen_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
fn screen_width_ffi(obj : JsValue) -> Int {
  screen_width_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn screen_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
fn screen_height_ffi(obj : JsValue) -> Int {
  screen_height_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn screen_color_depth_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.colorDepth"

///|
fn screen_color_depth_ffi(obj : JsValue) -> UInt {
  screen_color_depth_ffi_js(obj).unsafe_cast()
}

///|
extern "js" fn screen_pixel_depth_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.pixelDepth"

///|
fn screen_pixel_depth_ffi(obj : JsValue) -> UInt {
  screen_pixel_depth_ffi_js(obj).unsafe_cast()
}
