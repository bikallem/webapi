// Do not edit. This file is generated.
// MoonBit type: HTMLMeterElement
// Specifications: html.idl

/// [HTMLMeterElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement)
#external
pub type HTMLMeterElement

pub impl TJsValue for HTMLMeterElement with to_js(self: HTMLMeterElement) -> JsValue = "%identity"

pub fn[T: THTMLMeterElement] HTMLMeterElement::into(self : HTMLMeterElement) -> T = "%identity"

pub impl THTMLMeterElement for HTMLMeterElement

pub impl THTMLElement for HTMLMeterElement

pub impl TElement for HTMLMeterElement

pub impl TNode for HTMLMeterElement

pub impl TEventTarget for HTMLMeterElement

pub fn HTMLMeterElement::new() -> HTMLMeterElement {
  html_meter_element_new_ffi()
}

/// [HTMLMeterElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement) interface.
pub trait THTMLMeterElement: THTMLElement {
  value(self : Self) -> Double = _
  set_value(self : Self, value : Double) -> Unit = _
  min(self : Self) -> Double = _
  set_min(self : Self, min : Double) -> Unit = _
  max(self : Self) -> Double = _
  set_max(self : Self, max : Double) -> Unit = _
  low(self : Self) -> Double = _
  set_low(self : Self, low : Double) -> Unit = _
  high(self : Self) -> Double = _
  set_high(self : Self, high : Double) -> Unit = _
  optimum(self : Self) -> Double = _
  set_optimum(self : Self, optimum : Double) -> Unit = _
  labels(self : Self) -> NodeList = _
}

/// [HTMLMeterElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/value)
impl THTMLMeterElement with value(self : Self) -> Double {
  html_meter_element_value_ffi(TJsValue::to_js(self))
}

/// [HTMLMeterElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/value)
impl THTMLMeterElement with set_value(self : Self, 
value : Double) -> Unit {
  html_meter_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

/// [HTMLMeterElement.min](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/min)
impl THTMLMeterElement with min(self : Self) -> Double {
  html_meter_element_min_ffi(TJsValue::to_js(self))
}

/// [HTMLMeterElement.min](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/min)
impl THTMLMeterElement with set_min(self : Self, 
min : Double) -> Unit {
  html_meter_element_set_min_ffi(TJsValue::to_js(self), TJsValue::to_js(min))
}

/// [HTMLMeterElement.max](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/max)
impl THTMLMeterElement with max(self : Self) -> Double {
  html_meter_element_max_ffi(TJsValue::to_js(self))
}

/// [HTMLMeterElement.max](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/max)
impl THTMLMeterElement with set_max(self : Self, 
max : Double) -> Unit {
  html_meter_element_set_max_ffi(TJsValue::to_js(self), TJsValue::to_js(max))
}

/// [HTMLMeterElement.low](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/low)
impl THTMLMeterElement with low(self : Self) -> Double {
  html_meter_element_low_ffi(TJsValue::to_js(self))
}

/// [HTMLMeterElement.low](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/low)
impl THTMLMeterElement with set_low(self : Self, 
low : Double) -> Unit {
  html_meter_element_set_low_ffi(TJsValue::to_js(self), TJsValue::to_js(low))
}

/// [HTMLMeterElement.high](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/high)
impl THTMLMeterElement with high(self : Self) -> Double {
  html_meter_element_high_ffi(TJsValue::to_js(self))
}

/// [HTMLMeterElement.high](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/high)
impl THTMLMeterElement with set_high(self : Self, 
high : Double) -> Unit {
  html_meter_element_set_high_ffi(TJsValue::to_js(self), TJsValue::to_js(high))
}

/// [HTMLMeterElement.optimum](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/optimum)
impl THTMLMeterElement with optimum(self : Self) -> Double {
  html_meter_element_optimum_ffi(TJsValue::to_js(self))
}

/// [HTMLMeterElement.optimum](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/optimum)
impl THTMLMeterElement with set_optimum(self : Self, 
optimum : Double) -> Unit {
  html_meter_element_set_optimum_ffi(TJsValue::to_js(self), TJsValue::to_js(optimum))
}

/// [HTMLMeterElement.labels](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/labels)
impl THTMLMeterElement with labels(self : Self) -> NodeList {
  html_meter_element_labels_ffi(TJsValue::to_js(self))
}