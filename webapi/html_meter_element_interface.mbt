// Do not edit. This file is generated.
// MoonBit type: HTMLMeterElement
// Specifications: html.idl

///|
/// [HTMLMeterElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement)
#external
pub type HTMLMeterElement

///|
pub impl TJsValue for HTMLMeterElement with to_js(self : HTMLMeterElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLMeterElement with from_js_any(value : JsAny) -> HTMLMeterElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLMeterElement] HTMLMeterElement::into(
  self : HTMLMeterElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLMeterElement] HTMLMeterElement::unsafe_into(
  self : HTMLMeterElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLMeterElement with constructor_name() {
  "HTMLMeterElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLMeterElement + HasConstructor] HTMLMeterElement::try_into(
  self : HTMLMeterElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLMeterElement for HTMLMeterElement

///|
pub impl THTMLElement for HTMLMeterElement

///|
pub impl TElement for HTMLMeterElement

///|
pub impl TNode for HTMLMeterElement

///|
pub impl TEventTarget for HTMLMeterElement

///|
pub fn HTMLMeterElement::new() -> HTMLMeterElement {
  html_meter_element_new_ffi()
}

///|
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

///|
/// [HTMLMeterElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/value)
impl THTMLMeterElement with value(self : Self) -> Double {
  html_meter_element_value_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMeterElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/value)
impl THTMLMeterElement with set_value(self : Self, value : Double) -> Unit {
  html_meter_element_set_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
/// [HTMLMeterElement.min](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/min)
impl THTMLMeterElement with min(self : Self) -> Double {
  html_meter_element_min_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMeterElement.min](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/min)
impl THTMLMeterElement with set_min(self : Self, min : Double) -> Unit {
  html_meter_element_set_min_ffi(TJsValue::to_js(self), TJsValue::to_js(min))
}

///|
/// [HTMLMeterElement.max](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/max)
impl THTMLMeterElement with max(self : Self) -> Double {
  html_meter_element_max_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMeterElement.max](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/max)
impl THTMLMeterElement with set_max(self : Self, max : Double) -> Unit {
  html_meter_element_set_max_ffi(TJsValue::to_js(self), TJsValue::to_js(max))
}

///|
/// [HTMLMeterElement.low](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/low)
impl THTMLMeterElement with low(self : Self) -> Double {
  html_meter_element_low_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMeterElement.low](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/low)
impl THTMLMeterElement with set_low(self : Self, low : Double) -> Unit {
  html_meter_element_set_low_ffi(TJsValue::to_js(self), TJsValue::to_js(low))
}

///|
/// [HTMLMeterElement.high](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/high)
impl THTMLMeterElement with high(self : Self) -> Double {
  html_meter_element_high_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMeterElement.high](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/high)
impl THTMLMeterElement with set_high(self : Self, high : Double) -> Unit {
  html_meter_element_set_high_ffi(TJsValue::to_js(self), TJsValue::to_js(high))
}

///|
/// [HTMLMeterElement.optimum](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/optimum)
impl THTMLMeterElement with optimum(self : Self) -> Double {
  html_meter_element_optimum_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLMeterElement.optimum](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/optimum)
impl THTMLMeterElement with set_optimum(self : Self, optimum : Double) -> Unit {
  html_meter_element_set_optimum_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(optimum),
  )
}

///|
/// [HTMLMeterElement.labels](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMeterElement/labels)
impl THTMLMeterElement with labels(self : Self) -> NodeList {
  html_meter_element_labels_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn html_meter_element_new_ffi() -> HTMLMeterElement = "() => new HTMLMeterElement()"

///|
#cfg(target="js")
extern "js" fn html_meter_element_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn html_meter_element_value_ffi(obj : JsValue) -> Double {
  html_meter_element_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_meter_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
#cfg(target="js")
extern "js" fn html_meter_element_min_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.min"

///|
#cfg(target="js")
fn html_meter_element_min_ffi(obj : JsValue) -> Double {
  html_meter_element_min_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_meter_element_set_min_ffi(
  obj : JsValue,
  min : JsValue,
) -> Unit = "(obj, min) => { obj.min = min; }"

///|
#cfg(target="js")
extern "js" fn html_meter_element_max_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.max"

///|
#cfg(target="js")
fn html_meter_element_max_ffi(obj : JsValue) -> Double {
  html_meter_element_max_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_meter_element_set_max_ffi(
  obj : JsValue,
  max : JsValue,
) -> Unit = "(obj, max) => { obj.max = max; }"

///|
#cfg(target="js")
extern "js" fn html_meter_element_low_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.low"

///|
#cfg(target="js")
fn html_meter_element_low_ffi(obj : JsValue) -> Double {
  html_meter_element_low_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_meter_element_set_low_ffi(
  obj : JsValue,
  low : JsValue,
) -> Unit = "(obj, low) => { obj.low = low; }"

///|
#cfg(target="js")
extern "js" fn html_meter_element_high_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.high"

///|
#cfg(target="js")
fn html_meter_element_high_ffi(obj : JsValue) -> Double {
  html_meter_element_high_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_meter_element_set_high_ffi(
  obj : JsValue,
  high : JsValue,
) -> Unit = "(obj, high) => { obj.high = high; }"

///|
#cfg(target="js")
extern "js" fn html_meter_element_optimum_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.optimum"

///|
#cfg(target="js")
fn html_meter_element_optimum_ffi(obj : JsValue) -> Double {
  html_meter_element_optimum_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_meter_element_set_optimum_ffi(
  obj : JsValue,
  optimum : JsValue,
) -> Unit = "(obj, optimum) => { obj.optimum = optimum; }"

///|
#cfg(target="js")
extern "js" fn html_meter_element_labels_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.labels"

///|
#cfg(target="js")
fn html_meter_element_labels_ffi(obj : JsValue) -> NodeList {
  html_meter_element_labels_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_meter_element_new_ffi() -> HTMLMeterElement = "webapi_HTMLMeterElement" "new"

///|
#cfg(target="wasm-gc")
fn html_meter_element_value_ffi(obj : JsValue) -> Double = "webapi_HTMLMeterElement" "get_value"

///|
#cfg(target="wasm-gc")
fn html_meter_element_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLMeterElement" "set_value"

///|
#cfg(target="wasm-gc")
fn html_meter_element_min_ffi(obj : JsValue) -> Double = "webapi_HTMLMeterElement" "get_min"

///|
#cfg(target="wasm-gc")
fn html_meter_element_set_min_ffi(obj : JsValue, min : JsValue) -> Unit = "webapi_HTMLMeterElement" "set_min"

///|
#cfg(target="wasm-gc")
fn html_meter_element_max_ffi(obj : JsValue) -> Double = "webapi_HTMLMeterElement" "get_max"

///|
#cfg(target="wasm-gc")
fn html_meter_element_set_max_ffi(obj : JsValue, max : JsValue) -> Unit = "webapi_HTMLMeterElement" "set_max"

///|
#cfg(target="wasm-gc")
fn html_meter_element_low_ffi(obj : JsValue) -> Double = "webapi_HTMLMeterElement" "get_low"

///|
#cfg(target="wasm-gc")
fn html_meter_element_set_low_ffi(obj : JsValue, low : JsValue) -> Unit = "webapi_HTMLMeterElement" "set_low"

///|
#cfg(target="wasm-gc")
fn html_meter_element_high_ffi(obj : JsValue) -> Double = "webapi_HTMLMeterElement" "get_high"

///|
#cfg(target="wasm-gc")
fn html_meter_element_set_high_ffi(obj : JsValue, high : JsValue) -> Unit = "webapi_HTMLMeterElement" "set_high"

///|
#cfg(target="wasm-gc")
fn html_meter_element_optimum_ffi(obj : JsValue) -> Double = "webapi_HTMLMeterElement" "get_optimum"

///|
#cfg(target="wasm-gc")
fn html_meter_element_set_optimum_ffi(obj : JsValue, optimum : JsValue) -> Unit = "webapi_HTMLMeterElement" "set_optimum"

///|
#cfg(target="wasm-gc")
fn html_meter_element_labels_ffi(obj : JsValue) -> NodeList = "webapi_HTMLMeterElement" "get_labels"
