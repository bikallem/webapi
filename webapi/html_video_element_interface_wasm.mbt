fn html_video_element_new_ffi() -> HTMLVideoElement = "webapi_HTMLVideoElement" "new"

fn html_video_element_width_ffi(obj: JsValue) -> UInt = "webapi_HTMLVideoElement" "get_width"

fn html_video_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "webapi_HTMLVideoElement" "set_width"

fn html_video_element_height_ffi(obj: JsValue) -> UInt = "webapi_HTMLVideoElement" "get_height"

fn html_video_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "webapi_HTMLVideoElement" "set_height"

fn html_video_element_video_width_ffi(obj: JsValue) -> UInt = "webapi_HTMLVideoElement" "get_videoWidth"

fn html_video_element_video_height_ffi(obj: JsValue) -> UInt = "webapi_HTMLVideoElement" "get_videoHeight"

fn html_video_element_poster_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLVideoElement" "get_poster"

///|
fn html_video_element_poster_ffi(obj: JsValue) -> String {
  jsvalue_to_string(html_video_element_poster_ffi_wasm(obj))
}

fn html_video_element_set_poster_ffi(obj: JsValue, poster: JsValue) -> Unit = "webapi_HTMLVideoElement" "set_poster"

fn html_video_element_plays_inline_ffi(obj: JsValue) -> Bool = "webapi_HTMLVideoElement" "get_playsInline"

fn html_video_element_set_plays_inline_ffi(obj: JsValue, plays_inline: JsValue) -> Unit = "webapi_HTMLVideoElement" "set_playsInline"