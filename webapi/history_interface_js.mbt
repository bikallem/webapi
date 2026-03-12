extern "js" fn history_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
fn history_length_ffi(obj: JsValue) -> UInt {
  history_length_ffi_js(obj).unsafe_cast()
}

extern "js" fn history_scroll_restoration_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.scrollRestoration"

///|
fn history_scroll_restoration_ffi(obj: JsValue) -> ScrollRestoration {
  ScrollRestoration::from_unchecked(history_scroll_restoration_ffi_js(obj).unsafe_cast())
}

extern "js" fn history_set_scroll_restoration_ffi(obj: JsValue, scroll_restoration: JsValue) -> Unit = "(obj, scrollRestoration) => { obj.scrollRestoration = scrollRestoration; }"

extern "js" fn history_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.state"

///|
fn history_state_ffi(obj: JsValue) -> JsValue {
  history_state_ffi_js(obj).unsafe_cast()
}

extern "js" fn history_go_ffi(obj: JsValue, delta: JsValue) -> Unit = "(obj, delta) => obj.go(delta)"

extern "js" fn history_back_ffi(obj: JsValue) -> Unit = "(obj) => obj.back()"

extern "js" fn history_forward_ffi(obj: JsValue) -> Unit = "(obj) => obj.forward()"

extern "js" fn history_push_state_ffi(obj: JsValue, data: JsValue, unused: JsValue, url: JsValue) -> Unit = "(obj, data, unused, url) => obj.pushState(data, unused, url)"

extern "js" fn history_replace_state_ffi(obj: JsValue, data: JsValue, unused: JsValue, url: JsValue) -> Unit = "(obj, data, unused, url) => obj.replaceState(data, unused, url)"