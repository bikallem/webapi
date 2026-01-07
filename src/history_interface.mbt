// Do not edit. This file is generated.
// MoonBit type: History
// Specifications: html.idl

///|
/// [History](https://developer.mozilla.org/en-US/docs/Web/API/History)
#external
pub type History

///|
pub impl TJsValue for History with to_js(self : History) -> JsValue = "%identity"

///|
pub fn[T : THistory] History::into(self : History) -> T = "%identity"

///|
pub impl THistory for History

///|
/// [History](https://developer.mozilla.org/en-US/docs/Web/API/History) interface.
pub trait THistory: TJsValue {
  length(self : Self) -> UInt = _
  scroll_restoration(self : Self) -> ScrollRestoration = _
  set_scroll_restoration(self : Self, scroll_restoration : ScrollRestoration) -> Unit = _
  state(self : Self) -> JsValue = _
  go(self : Self, delta? : Int) -> Unit = _
  back(self : Self) -> Unit = _
  forward(self : Self) -> Unit = _
  push_state(self : Self, data : JsValue, unused : String, url? : String) -> Unit = _
  replace_state(self : Self, data : JsValue, unused : String, url? : String) -> Unit = _
}

///|
extern "js" fn history_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
/// [History.length](https://developer.mozilla.org/en-US/docs/Web/API/History/length)
impl THistory with length(self : Self) -> UInt {
  history_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn history_scroll_restoration_ffi(
  obj : JsValue,
) -> ScrollRestoration = "(obj) => obj.scrollRestoration"

///|
/// [History.scrollRestoration](https://developer.mozilla.org/en-US/docs/Web/API/History/scrollRestoration)
impl THistory with scroll_restoration(self : Self) -> ScrollRestoration {
  history_scroll_restoration_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn history_set_scroll_restoration_ffi(
  obj : JsValue,
  scroll_restoration : JsValue,
) -> Unit = "(obj, scrollRestoration) => { obj.scrollRestoration = scrollRestoration; }"

///|
/// [History.scrollRestoration](https://developer.mozilla.org/en-US/docs/Web/API/History/scrollRestoration)
impl THistory with set_scroll_restoration(
  self : Self,
  scroll_restoration : ScrollRestoration,
) -> Unit {
  history_set_scroll_restoration_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(scroll_restoration),
  )
}

///|
extern "js" fn history_state_ffi(obj : JsValue) -> JsValue = "(obj) => obj.state"

///|
/// [History.state](https://developer.mozilla.org/en-US/docs/Web/API/History/state)
impl THistory with state(self : Self) -> JsValue {
  history_state_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn history_go_ffi(obj : JsValue, delta : JsValue) -> Unit = "(obj, delta) => obj.go(delta)"

///|
/// [History.go](https://developer.mozilla.org/en-US/docs/Web/API/History/go)
impl THistory with go(self : Self, delta? : Int = (0 : Int)) -> Unit {
  history_go_ffi(TJsValue::to_js(self), TJsValue::to_js(delta))
}

///|
extern "js" fn history_back_ffi(obj : JsValue) -> Unit = "(obj) => obj.back()"

///|
/// [History.back](https://developer.mozilla.org/en-US/docs/Web/API/History/back)
impl THistory with back(self : Self) -> Unit {
  history_back_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn history_forward_ffi(obj : JsValue) -> Unit = "(obj) => obj.forward()"

///|
/// [History.forward](https://developer.mozilla.org/en-US/docs/Web/API/History/forward)
impl THistory with forward(self : Self) -> Unit {
  history_forward_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn history_push_state_ffi(
  obj : JsValue,
  data : JsValue,
  unused : JsValue,
  url : JsValue,
) -> Unit = "(obj, data, unused, url) => obj.pushState(data, unused, url)"

///|
/// [History.pushState](https://developer.mozilla.org/en-US/docs/Web/API/History/pushState)
impl THistory with push_state(
  self : Self,
  data : JsValue,
  unused : String,
  url? : String = JsValue::null(),
) -> Unit {
  history_push_state_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(data),
    TJsValue::to_js(unused),
    TJsValue::to_js(url),
  )
}

///|
extern "js" fn history_replace_state_ffi(
  obj : JsValue,
  data : JsValue,
  unused : JsValue,
  url : JsValue,
) -> Unit = "(obj, data, unused, url) => obj.replaceState(data, unused, url)"

///|
/// [History.replaceState](https://developer.mozilla.org/en-US/docs/Web/API/History/replaceState)
impl THistory with replace_state(
  self : Self,
  data : JsValue,
  unused : String,
  url? : String = JsValue::null(),
) -> Unit {
  history_replace_state_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(data),
    TJsValue::to_js(unused),
    TJsValue::to_js(url),
  )
}
