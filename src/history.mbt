// Auto-generated MoonBit bindings for History

// Do not edit manually

///|
#external
pub type History

///|
pub trait THistory: TJsValue {
  length(self : Self) -> UInt = _
  scroll_restoration(self : Self) -> ScrollRestoration = _
  set_scroll_restoration(self : Self, value : ScrollRestoration) -> Unit = _
  state(self : Self) -> JsValue = _
  go(self : Self, delta? : Int) -> Unit = _
  back(self : Self) -> Unit = _
  forward(self : Self) -> Unit = _
  push_state(self : Self, data : JsValue, unused : String, url? : String) -> Unit = _
  replace_state(self : Self, data : JsValue, unused : String, url? : String) -> Unit = _
}

///|
pub impl THistory for History

///|
pub impl TJsValue for History with to_js(self : History) -> JsValue = "%identity"

///|
fn history_go_ffi(obj : JsValue, delta : JsValue) -> Unit = "webapi_History" "go"

///|
impl THistory with go(self : Self, delta? : Int) -> Unit {
  let delta_js = opt_to_js(delta)
  history_go_ffi(TJsValue::to_js(self), delta_js)
}

///|
fn history_back_ffi(obj : JsValue) -> Unit = "webapi_History" "back"

///|
impl THistory with back(self : Self) -> Unit {
  history_back_ffi(TJsValue::to_js(self))
}

///|
fn history_forward_ffi(obj : JsValue) -> Unit = "webapi_History" "forward"

///|
impl THistory with forward(self : Self) -> Unit {
  history_forward_ffi(TJsValue::to_js(self))
}

///|
fn history_push_state_ffi(
  obj : JsValue,
  data : JsValue,
  unused : JsValue,
  url : JsValue,
) -> Unit = "webapi_History" "pushState"

///|
impl THistory with push_state(
  self : Self,
  data : JsValue,
  unused : String,
  url? : String,
) -> Unit {
  let url_js = opt_to_js(url)
  history_push_state_ffi(
    TJsValue::to_js(self),
    data,
    TJsValue::to_js(unused),
    url_js,
  )
}

///|
fn history_replace_state_ffi(
  obj : JsValue,
  data : JsValue,
  unused : JsValue,
  url : JsValue,
) -> Unit = "webapi_History" "replaceState"

///|
impl THistory with replace_state(
  self : Self,
  data : JsValue,
  unused : String,
  url? : String,
) -> Unit {
  let url_js = opt_to_js(url)
  history_replace_state_ffi(
    TJsValue::to_js(self),
    data,
    TJsValue::to_js(unused),
    url_js,
  )
}

///|
fn history_length_ffi(obj : JsValue) -> JsValue = "webapi_History" "length"

///|
impl THistory with length(self : Self) -> UInt {
  history_length_ffi(self.to_js()).unsafe_cast()
}

///|
fn history_scroll_restoration_ffi(obj : JsValue) -> JsValue = "webapi_History" "scrollRestoration"

///|
impl THistory with scroll_restoration(self : Self) -> ScrollRestoration {
  ScrollRestoration::from_js(history_scroll_restoration_ffi(self.to_js())).unwrap()
}

///|
fn history_set_scroll_restoration_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_History" "set_scrollRestoration"

///|
impl THistory with set_scroll_restoration(
  self : Self,
  value : ScrollRestoration,
) -> Unit {
  history_set_scroll_restoration_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn history_state_ffi(obj : JsValue) -> JsValue = "webapi_History" "state"

///|
impl THistory with state(self : Self) -> JsValue {
  history_state_ffi(self.to_js())
}
