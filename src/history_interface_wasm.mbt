///|
fn history_length_ffi(obj : JsValue) -> UInt = "webapi_History" "get_length"

///|
fn history_scroll_restoration_ffi(obj : JsValue) -> ScrollRestoration = "webapi_History" "get_scrollRestoration"

///|
fn history_set_scroll_restoration_ffi(
  obj : JsValue,
  scroll_restoration : JsValue,
) -> Unit = "webapi_History" "set_scrollRestoration"

///|
fn history_state_ffi(obj : JsValue) -> JsValue = "webapi_History" "get_state"

///|
fn history_go_ffi(obj : JsValue, delta : JsValue) -> Unit = "webapi_History" "go"

///|
fn history_back_ffi(obj : JsValue) -> Unit = "webapi_History" "back"

///|
fn history_forward_ffi(obj : JsValue) -> Unit = "webapi_History" "forward"

///|
fn history_push_state_ffi(
  obj : JsValue,
  data : JsValue,
  unused : JsValue,
  url : JsValue,
) -> Unit = "webapi_History" "pushState"

///|
fn history_replace_state_ffi(
  obj : JsValue,
  data : JsValue,
  unused : JsValue,
  url : JsValue,
) -> Unit = "webapi_History" "replaceState"
