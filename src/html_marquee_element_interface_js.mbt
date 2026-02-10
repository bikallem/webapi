extern "js" fn html_marquee_element_new_ffi() -> HTMLMarqueeElement = "() => new HTMLMarqueeElement()"

extern "js" fn html_marquee_element_behavior_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.behavior"

///|
fn html_marquee_element_behavior_ffi(obj: JsValue) -> String {
  html_marquee_element_behavior_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_marquee_element_set_behavior_ffi(obj: JsValue, behavior: JsValue) -> Unit = "(obj, behavior) => { obj.behavior = behavior; }"

extern "js" fn html_marquee_element_bg_color_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.bgColor"

///|
fn html_marquee_element_bg_color_ffi(obj: JsValue) -> String {
  html_marquee_element_bg_color_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_marquee_element_set_bg_color_ffi(obj: JsValue, bg_color: JsValue) -> Unit = "(obj, bgColor) => { obj.bgColor = bgColor; }"

extern "js" fn html_marquee_element_direction_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.direction"

///|
fn html_marquee_element_direction_ffi(obj: JsValue) -> String {
  html_marquee_element_direction_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_marquee_element_set_direction_ffi(obj: JsValue, direction: JsValue) -> Unit = "(obj, direction) => { obj.direction = direction; }"

extern "js" fn html_marquee_element_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
fn html_marquee_element_height_ffi(obj: JsValue) -> String {
  html_marquee_element_height_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_marquee_element_set_height_ffi(obj: JsValue, height: JsValue) -> Unit = "(obj, height) => { obj.height = height; }"

extern "js" fn html_marquee_element_hspace_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.hspace"

///|
fn html_marquee_element_hspace_ffi(obj: JsValue) -> UInt {
  html_marquee_element_hspace_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_marquee_element_set_hspace_ffi(obj: JsValue, hspace: JsValue) -> Unit = "(obj, hspace) => { obj.hspace = hspace; }"

extern "js" fn html_marquee_element_loop_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.loop"

///|
fn html_marquee_element_loop_ffi(obj: JsValue) -> Int {
  html_marquee_element_loop_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_marquee_element_set_loop_ffi(obj: JsValue, loop_: JsValue) -> Unit = "(obj, loop) => { obj.loop = loop; }"

extern "js" fn html_marquee_element_scroll_amount_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.scrollAmount"

///|
fn html_marquee_element_scroll_amount_ffi(obj: JsValue) -> UInt {
  html_marquee_element_scroll_amount_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_marquee_element_set_scroll_amount_ffi(obj: JsValue, scroll_amount: JsValue) -> Unit = "(obj, scrollAmount) => { obj.scrollAmount = scrollAmount; }"

extern "js" fn html_marquee_element_scroll_delay_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.scrollDelay"

///|
fn html_marquee_element_scroll_delay_ffi(obj: JsValue) -> UInt {
  html_marquee_element_scroll_delay_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_marquee_element_set_scroll_delay_ffi(obj: JsValue, scroll_delay: JsValue) -> Unit = "(obj, scrollDelay) => { obj.scrollDelay = scrollDelay; }"

extern "js" fn html_marquee_element_true_speed_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.trueSpeed"

///|
fn html_marquee_element_true_speed_ffi(obj: JsValue) -> Bool {
  html_marquee_element_true_speed_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_marquee_element_set_true_speed_ffi(obj: JsValue, true_speed: JsValue) -> Unit = "(obj, trueSpeed) => { obj.trueSpeed = trueSpeed; }"

extern "js" fn html_marquee_element_vspace_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.vspace"

///|
fn html_marquee_element_vspace_ffi(obj: JsValue) -> UInt {
  html_marquee_element_vspace_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_marquee_element_set_vspace_ffi(obj: JsValue, vspace: JsValue) -> Unit = "(obj, vspace) => { obj.vspace = vspace; }"

extern "js" fn html_marquee_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
fn html_marquee_element_width_ffi(obj: JsValue) -> String {
  html_marquee_element_width_ffi_js(obj).unsafe_cast()
}

extern "js" fn html_marquee_element_set_width_ffi(obj: JsValue, width: JsValue) -> Unit = "(obj, width) => { obj.width = width; }"

extern "js" fn html_marquee_element_start_ffi(obj: JsValue) -> Unit = "(obj) => obj.start()"

extern "js" fn html_marquee_element_stop_ffi(obj: JsValue) -> Unit = "(obj) => obj.stop()"