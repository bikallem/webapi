///|
#external
pub type History

///|
pub impl TJsValue for History with to_js(self : History) -> JsValue = "%identity"

///|
pub fn[T : THistory] History::into(self : History) -> T = "%identity"

///|
pub impl THistory for History

///|
pub trait THistory: TJsValue {
  go(self : Self, delta? : Int) -> Unit = _
  back(self : Self) -> Unit = _
  forward(self : Self) -> Unit = _
  push_state(self : Self, data : JsValue, unused : String, url? : String) -> Unit = _
  replace_state(self : Self, data : JsValue, unused : String, url? : String) -> Unit = _
}

///|
extern "js" fn history_go_ffi(obj : JsValue, delta : JsValue) -> Unit = "(obj, delta) => obj.go(obj, delta)"

///|
impl THistory with go(self : Self, delta? : Int = 0) -> Unit {
  history_go_ffi(TJsValue::to_js(self), TJsValue::to_js(delta))
}

///|
extern "js" fn history_back_ffi(obj : JsValue) -> Unit = "(obj) => obj.back(obj)"

///|
impl THistory with back(self : Self) -> Unit {
  history_back_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn history_forward_ffi(obj : JsValue) -> Unit = "(obj) => obj.forward(obj)"

///|
impl THistory with forward(self : Self) -> Unit {
  history_forward_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn history_push_state_ffi(
  obj : JsValue,
  data : JsValue,
  unused : JsValue,
  url : JsValue,
) -> Unit = "(obj, data, unused, url) => obj.pushState(obj, data, unused, url)"

///|
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
) -> Unit = "(obj, data, unused, url) => obj.replaceState(obj, data, unused, url)"

///|
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
