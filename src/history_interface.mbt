// Do not edit. This file is generated.
// MoonBit type: History
// Specifications: html.idl

/// [History](https://developer.mozilla.org/en-US/docs/Web/API/History)
#external
pub type History

pub impl TJsValue for History with to_js(self: History) -> JsValue = "%identity"

pub impl FromJsAny for History with from_js_any(value : JsAny) -> History = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THistory] History::into(self : History) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THistory] History::unsafe_into(self : History) -> T = "%identity"

pub impl HasConstructor for History with constructor_name() { "History" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THistory + HasConstructor] History::try_into(self : History) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THistory for History

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

/// [History.length](https://developer.mozilla.org/en-US/docs/Web/API/History/length)
impl THistory with length(self : Self) -> UInt {
  history_length_ffi(TJsValue::to_js(self))
}

/// [History.scrollRestoration](https://developer.mozilla.org/en-US/docs/Web/API/History/scrollRestoration)
impl THistory with scroll_restoration(self : Self) -> ScrollRestoration {
  history_scroll_restoration_ffi(TJsValue::to_js(self))
}

/// [History.scrollRestoration](https://developer.mozilla.org/en-US/docs/Web/API/History/scrollRestoration)
impl THistory with set_scroll_restoration(self : Self, 
scroll_restoration : ScrollRestoration) -> Unit {
  history_set_scroll_restoration_ffi(TJsValue::to_js(self), TJsValue::to_js(scroll_restoration))
}

/// [History.state](https://developer.mozilla.org/en-US/docs/Web/API/History/state)
impl THistory with state(self : Self) -> JsValue {
  history_state_ffi(TJsValue::to_js(self))
}

/// [History.go](https://developer.mozilla.org/en-US/docs/Web/API/History/go)
impl THistory with go(self : Self, 
delta? : Int) -> Unit {
  history_go_ffi(TJsValue::to_js(self), opt_to_js(delta))
}

/// [History.back](https://developer.mozilla.org/en-US/docs/Web/API/History/back)
impl THistory with back(self : Self) -> Unit {
  history_back_ffi(TJsValue::to_js(self))
}

/// [History.forward](https://developer.mozilla.org/en-US/docs/Web/API/History/forward)
impl THistory with forward(self : Self) -> Unit {
  history_forward_ffi(TJsValue::to_js(self))
}

/// [History.pushState](https://developer.mozilla.org/en-US/docs/Web/API/History/pushState)
impl THistory with push_state(self : Self, 
data : JsValue, 
unused : String, 
url? : String) -> Unit {
  history_push_state_ffi(TJsValue::to_js(self), TJsValue::to_js(data), TJsValue::to_js(unused), opt_to_js(url))
}

/// [History.replaceState](https://developer.mozilla.org/en-US/docs/Web/API/History/replaceState)
impl THistory with replace_state(self : Self, 
data : JsValue, 
unused : String, 
url? : String) -> Unit {
  history_replace_state_ffi(TJsValue::to_js(self), TJsValue::to_js(data), TJsValue::to_js(unused), opt_to_js(url))
}

#cfg(target="js")
extern "js" fn history_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn history_length_ffi(obj: JsValue) -> UInt {
  history_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn history_scroll_restoration_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.scrollRestoration"

///|
#cfg(target="js")
fn history_scroll_restoration_ffi(obj: JsValue) -> ScrollRestoration {
  ScrollRestoration::from_unchecked(history_scroll_restoration_ffi_js(obj).unsafe_cast())
}

#cfg(target="js")
extern "js" fn history_set_scroll_restoration_ffi(obj: JsValue, scroll_restoration: JsValue) -> Unit = "(obj, scrollRestoration) => { obj.scrollRestoration = scrollRestoration; }"

#cfg(target="js")
extern "js" fn history_state_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.state"

///|
#cfg(target="js")
fn history_state_ffi(obj: JsValue) -> JsValue {
  history_state_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn history_go_ffi(obj: JsValue, delta: JsValue) -> Unit = "(obj, delta) => obj.go(delta)"

#cfg(target="js")
extern "js" fn history_back_ffi(obj: JsValue) -> Unit = "(obj) => obj.back()"

#cfg(target="js")
extern "js" fn history_forward_ffi(obj: JsValue) -> Unit = "(obj) => obj.forward()"

#cfg(target="js")
extern "js" fn history_push_state_ffi(obj: JsValue, data: JsValue, unused: JsValue, url: JsValue) -> Unit = "(obj, data, unused, url) => obj.pushState(data, unused, url)"

#cfg(target="js")
extern "js" fn history_replace_state_ffi(obj: JsValue, data: JsValue, unused: JsValue, url: JsValue) -> Unit = "(obj, data, unused, url) => obj.replaceState(data, unused, url)"

#cfg(target="wasm-gc")
fn history_length_ffi(obj: JsValue) -> UInt = "webapi_History" "get_length"

#cfg(target="wasm-gc")
fn history_scroll_restoration_ffi_wasm(obj: JsValue) -> JsValue = "webapi_History" "get_scrollRestoration"

///|
#cfg(target="wasm-gc")
fn history_scroll_restoration_ffi(obj: JsValue) -> ScrollRestoration {
  ScrollRestoration::from_unchecked(jsvalue_to_string(history_scroll_restoration_ffi_wasm(obj)))
}

#cfg(target="wasm-gc")
fn history_set_scroll_restoration_ffi(obj: JsValue, scroll_restoration: JsValue) -> Unit = "webapi_History" "set_scrollRestoration"

#cfg(target="wasm-gc")
fn history_state_ffi(obj: JsValue) -> JsValue = "webapi_History" "get_state"

#cfg(target="wasm-gc")
fn history_go_ffi(obj: JsValue, delta: JsValue) -> Unit = "webapi_History" "go"

#cfg(target="wasm-gc")
fn history_back_ffi(obj: JsValue) -> Unit = "webapi_History" "back"

#cfg(target="wasm-gc")
fn history_forward_ffi(obj: JsValue) -> Unit = "webapi_History" "forward"

#cfg(target="wasm-gc")
fn history_push_state_ffi(obj: JsValue, data: JsValue, unused: JsValue, url: JsValue) -> Unit = "webapi_History" "pushState"

#cfg(target="wasm-gc")
fn history_replace_state_ffi(obj: JsValue, data: JsValue, unused: JsValue, url: JsValue) -> Unit = "webapi_History" "replaceState"