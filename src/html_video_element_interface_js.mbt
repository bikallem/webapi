extern "js" fn html_video_element_new_ffi() -> HTMLVideoElement = "() => new HTMLVideoElement()"

extern "js" fn html_video_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
fn html_video_element_width_ffi(obj: JsValue) -> UInt {
  html_video_element_width_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_video_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

extern "js" fn html_video_element_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
fn html_video_element_height_ffi(obj: JsValue) -> UInt {
  html_video_element_height_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_video_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "(obj, height) => { obj.height = height; }"

extern "js" fn html_video_element_video_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.videoWidth"

///|
fn html_video_element_video_width_ffi(obj: JsValue) -> UInt {
  html_video_element_video_width_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_video_element_video_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.videoHeight"

///|
fn html_video_element_video_height_ffi(obj: JsValue) -> UInt {
  html_video_element_video_height_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_video_element_poster_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.poster"

///|
fn html_video_element_poster_ffi(obj: JsValue) -> String {
  html_video_element_poster_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_video_element_set_poster_ffi(obj: JsValue, poster: JsValue) -> Unit = "(obj, poster) => { obj.poster = poster; }"

extern "js" fn html_video_element_plays_inline_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.playsInline"

///|
fn html_video_element_plays_inline_ffi(obj: JsValue) -> Bool {
  html_video_element_plays_inline_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_video_element_set_plays_inline_ffi(obj: JsValue, plays_inline: JsValue) -> Unit = "(obj, playsInline) => { obj.playsInline = playsInline; }"