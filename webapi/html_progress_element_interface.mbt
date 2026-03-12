// Do not edit. This file is generated.
// MoonBit type: HTMLProgressElement
// Specifications: html.idl

/// [HTMLProgressElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement)
#external
pub type HTMLProgressElement

pub impl TJsValue for HTMLProgressElement with to_js(self: HTMLProgressElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLProgressElement with from_js_any(value : JsAny) -> HTMLProgressElement = "%identity"

pub fn[T: THTMLProgressElement] HTMLProgressElement::into(self : HTMLProgressElement) -> T = "%identity"

pub impl THTMLProgressElement for HTMLProgressElement

pub impl THTMLElement for HTMLProgressElement

pub impl TElement for HTMLProgressElement

pub impl TNode for HTMLProgressElement

pub impl TEventTarget for HTMLProgressElement

pub fn HTMLProgressElement::new() -> HTMLProgressElement {
  html_progress_element_new_ffi()
}

/// [HTMLProgressElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement) interface.
pub trait THTMLProgressElement: THTMLElement {
  value(self : Self) -> Double = _
  set_value(self : Self, value : Double) -> Unit = _
  max(self : Self) -> Double = _
  set_max(self : Self, max : Double) -> Unit = _
  position(self : Self) -> Double = _
  labels(self : Self) -> NodeList = _
}

/// [HTMLProgressElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement/value)
impl THTMLProgressElement with value(self : Self) -> Double {
  html_progress_element_value_ffi(TJsValue::to_js(self))
}

/// [HTMLProgressElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement/value)
impl THTMLProgressElement with set_value(self : Self, 
value : Double) -> Unit {
  html_progress_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

/// [HTMLProgressElement.max](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement/max)
impl THTMLProgressElement with max(self : Self) -> Double {
  html_progress_element_max_ffi(TJsValue::to_js(self))
}

/// [HTMLProgressElement.max](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement/max)
impl THTMLProgressElement with set_max(self : Self, 
max : Double) -> Unit {
  html_progress_element_set_max_ffi(TJsValue::to_js(self), TJsValue::to_js(max))
}

/// [HTMLProgressElement.position](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement/position)
impl THTMLProgressElement with position(self : Self) -> Double {
  html_progress_element_position_ffi(TJsValue::to_js(self))
}

/// [HTMLProgressElement.labels](https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement/labels)
impl THTMLProgressElement with labels(self : Self) -> NodeList {
  html_progress_element_labels_ffi(TJsValue::to_js(self))
}