///|
fn html_marquee_element_new_ffi() -> HTMLMarqueeElement = "webapi_HTMLMarqueeElement" "new"

///|
fn html_marquee_element_behavior_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLMarqueeElement" "get_behavior"

///|
fn html_marquee_element_behavior_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_marquee_element_behavior_ffi_wasm(obj))
}

///|
fn html_marquee_element_set_behavior_ffi(
  obj : JsValue,
  behavior : JsValue,
) -> Unit = "webapi_HTMLMarqueeElement" "set_behavior"

///|
fn html_marquee_element_bg_color_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLMarqueeElement" "get_bgColor"

///|
fn html_marquee_element_bg_color_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_marquee_element_bg_color_ffi_wasm(obj))
}

///|
fn html_marquee_element_set_bg_color_ffi(
  obj : JsValue,
  bg_color : JsValue,
) -> Unit = "webapi_HTMLMarqueeElement" "set_bgColor"

///|
fn html_marquee_element_direction_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLMarqueeElement" "get_direction"

///|
fn html_marquee_element_direction_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_marquee_element_direction_ffi_wasm(obj))
}

///|
fn html_marquee_element_set_direction_ffi(
  obj : JsValue,
  direction : JsValue,
) -> Unit = "webapi_HTMLMarqueeElement" "set_direction"

///|
fn html_marquee_element_height_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLMarqueeElement" "get_height"

///|
fn html_marquee_element_height_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_marquee_element_height_ffi_wasm(obj))
}

///|
fn html_marquee_element_set_height_ffi(obj : JsValue, height : JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_height"

///|
fn html_marquee_element_hspace_ffi(obj : JsValue) -> UInt = "webapi_HTMLMarqueeElement" "get_hspace"

///|
fn html_marquee_element_set_hspace_ffi(obj : JsValue, hspace : JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_hspace"

///|
fn html_marquee_element_loop_ffi(obj : JsValue) -> Int = "webapi_HTMLMarqueeElement" "get_loop"

///|
fn html_marquee_element_set_loop_ffi(obj : JsValue, loop_ : JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_loop"

///|
fn html_marquee_element_scroll_amount_ffi(obj : JsValue) -> UInt = "webapi_HTMLMarqueeElement" "get_scrollAmount"

///|
fn html_marquee_element_set_scroll_amount_ffi(
  obj : JsValue,
  scroll_amount : JsValue,
) -> Unit = "webapi_HTMLMarqueeElement" "set_scrollAmount"

///|
fn html_marquee_element_scroll_delay_ffi(obj : JsValue) -> UInt = "webapi_HTMLMarqueeElement" "get_scrollDelay"

///|
fn html_marquee_element_set_scroll_delay_ffi(
  obj : JsValue,
  scroll_delay : JsValue,
) -> Unit = "webapi_HTMLMarqueeElement" "set_scrollDelay"

///|
fn html_marquee_element_true_speed_ffi(obj : JsValue) -> Bool = "webapi_HTMLMarqueeElement" "get_trueSpeed"

///|
fn html_marquee_element_set_true_speed_ffi(
  obj : JsValue,
  true_speed : JsValue,
) -> Unit = "webapi_HTMLMarqueeElement" "set_trueSpeed"

///|
fn html_marquee_element_vspace_ffi(obj : JsValue) -> UInt = "webapi_HTMLMarqueeElement" "get_vspace"

///|
fn html_marquee_element_set_vspace_ffi(obj : JsValue, vspace : JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_vspace"

///|
fn html_marquee_element_width_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLMarqueeElement" "get_width"

///|
fn html_marquee_element_width_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_marquee_element_width_ffi_wasm(obj))
}

///|
fn html_marquee_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLMarqueeElement" "set_width"

///|
fn html_marquee_element_start_ffi(obj : JsValue) -> Unit = "webapi_HTMLMarqueeElement" "start"

///|
fn html_marquee_element_stop_ffi(obj : JsValue) -> Unit = "webapi_HTMLMarqueeElement" "stop"
