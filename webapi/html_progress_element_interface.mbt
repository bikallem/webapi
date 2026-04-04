// Do not edit. This file is generated.
// MoonBit type: HTMLProgressElement
// Specifications: html.idl

///|
/// [HTMLProgressElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement)
#external
pub type HTMLProgressElement

///|
pub impl TJsValue for HTMLProgressElement with to_js(self : HTMLProgressElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLProgressElement with from_js_any(value : JsAny) -> HTMLProgressElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLProgressElement] HTMLProgressElement::into(
  self : HTMLProgressElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLProgressElement] HTMLProgressElement::unsafe_into(
  self : HTMLProgressElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLProgressElement with constructor_name() {
  "HTMLProgressElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLProgressElement + HasConstructor] HTMLProgressElement::try_into(
  self : HTMLProgressElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLProgressElement for HTMLProgressElement

///|
pub impl THTMLElement for HTMLProgressElement

///|
pub impl TElement for HTMLProgressElement

///|
pub impl TNode for HTMLProgressElement

///|
pub impl TEventTarget for HTMLProgressElement

///|
pub fn HTMLProgressElement::new() -> HTMLProgressElement {
  html_progress_element_new_ffi()
}

///|
/// [HTMLProgressElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement) interface.
pub trait THTMLProgressElement: THTMLElement {
  value(self : Self) -> Double = _
  set_value(self : Self, value : Double) -> Unit = _
  max(self : Self) -> Double = _
  set_max(self : Self, max : Double) -> Unit = _
  position(self : Self) -> Double = _
  labels(self : Self) -> NodeList = _
}

///|
/// [HTMLProgressElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement/value)
impl THTMLProgressElement with value(self : Self) -> Double {
  html_progress_element_value_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLProgressElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement/value)
impl THTMLProgressElement with set_value(self : Self, value : Double) -> Unit {
  html_progress_element_set_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
/// [HTMLProgressElement.max](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement/max)
impl THTMLProgressElement with max(self : Self) -> Double {
  html_progress_element_max_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLProgressElement.max](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement/max)
impl THTMLProgressElement with set_max(self : Self, max : Double) -> Unit {
  html_progress_element_set_max_ffi(TJsValue::to_js(self), TJsValue::to_js(max))
}

///|
/// [HTMLProgressElement.position](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement/position)
impl THTMLProgressElement with position(self : Self) -> Double {
  html_progress_element_position_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLProgressElement.labels](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement/labels)
impl THTMLProgressElement with labels(self : Self) -> NodeList {
  html_progress_element_labels_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn html_progress_element_new_ffi() -> HTMLProgressElement = "() => new HTMLProgressElement()"

///|
#cfg(target="js")
extern "js" fn html_progress_element_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn html_progress_element_value_ffi(obj : JsValue) -> Double {
  html_progress_element_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_progress_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
#cfg(target="js")
extern "js" fn html_progress_element_max_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.max"

///|
#cfg(target="js")
fn html_progress_element_max_ffi(obj : JsValue) -> Double {
  html_progress_element_max_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_progress_element_set_max_ffi(
  obj : JsValue,
  max : JsValue,
) -> Unit = "(obj, max) => { obj.max = max; }"

///|
#cfg(target="js")
extern "js" fn html_progress_element_position_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.position"

///|
#cfg(target="js")
fn html_progress_element_position_ffi(obj : JsValue) -> Double {
  html_progress_element_position_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_progress_element_labels_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.labels"

///|
#cfg(target="js")
fn html_progress_element_labels_ffi(obj : JsValue) -> NodeList {
  html_progress_element_labels_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_progress_element_new_ffi() -> HTMLProgressElement = "webapi_HTMLProgressElement" "new"

///|
#cfg(target="wasm-gc")
fn html_progress_element_value_ffi(obj : JsValue) -> Double = "webapi_HTMLProgressElement" "get_value"

///|
#cfg(target="wasm-gc")
fn html_progress_element_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLProgressElement" "set_value"

///|
#cfg(target="wasm-gc")
fn html_progress_element_max_ffi(obj : JsValue) -> Double = "webapi_HTMLProgressElement" "get_max"

///|
#cfg(target="wasm-gc")
fn html_progress_element_set_max_ffi(obj : JsValue, max : JsValue) -> Unit = "webapi_HTMLProgressElement" "set_max"

///|
#cfg(target="wasm-gc")
fn html_progress_element_position_ffi(obj : JsValue) -> Double = "webapi_HTMLProgressElement" "get_position"

///|
#cfg(target="wasm-gc")
fn html_progress_element_labels_ffi(obj : JsValue) -> NodeList = "webapi_HTMLProgressElement" "get_labels"
