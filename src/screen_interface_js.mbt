///|
extern "js" fn screen_avail_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.availWidth"

///|
extern "js" fn screen_avail_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.availHeight"

///|
extern "js" fn screen_width_ffi(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
extern "js" fn screen_height_ffi(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
extern "js" fn screen_color_depth_ffi(obj : JsValue) -> JsValue = "(obj) => obj.colorDepth"

///|
extern "js" fn screen_pixel_depth_ffi(obj : JsValue) -> JsValue = "(obj) => obj.pixelDepth"
