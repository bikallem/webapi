///|
#external
pub type HTMLMeterElement

///|
pub impl TJsValue for HTMLMeterElement with to_js(self : HTMLMeterElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLMeterElement] HTMLMeterElement::into(
  self : HTMLMeterElement,
) -> T = "%identity"

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
extern "js" fn html_meter_element_new_ffi() -> HTMLMeterElement = "() => new HTMLMeterElement()"

///|
pub fn HTMLMeterElement::new() -> HTMLMeterElement {
  html_meter_element_new_ffi()
}

///|
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
extern "js" fn html_meter_element_value_ffi(obj : JsValue) -> Double = "(obj) => obj.value"

///|
impl THTMLMeterElement with value(self : Self) -> Double {
  html_meter_element_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_meter_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
impl THTMLMeterElement with set_value(self : Self, value : Double) -> Unit {
  html_meter_element_set_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn html_meter_element_min_ffi(obj : JsValue) -> Double = "(obj) => obj.min"

///|
impl THTMLMeterElement with min(self : Self) -> Double {
  html_meter_element_min_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_meter_element_set_min_ffi(
  obj : JsValue,
  min : JsValue,
) -> Unit = "(obj, min) => { obj.min = min; }"

///|
impl THTMLMeterElement with set_min(self : Self, min : Double) -> Unit {
  html_meter_element_set_min_ffi(TJsValue::to_js(self), TJsValue::to_js(min))
}

///|
extern "js" fn html_meter_element_max_ffi(obj : JsValue) -> Double = "(obj) => obj.max"

///|
impl THTMLMeterElement with max(self : Self) -> Double {
  html_meter_element_max_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_meter_element_set_max_ffi(
  obj : JsValue,
  max : JsValue,
) -> Unit = "(obj, max) => { obj.max = max; }"

///|
impl THTMLMeterElement with set_max(self : Self, max : Double) -> Unit {
  html_meter_element_set_max_ffi(TJsValue::to_js(self), TJsValue::to_js(max))
}

///|
extern "js" fn html_meter_element_low_ffi(obj : JsValue) -> Double = "(obj) => obj.low"

///|
impl THTMLMeterElement with low(self : Self) -> Double {
  html_meter_element_low_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_meter_element_set_low_ffi(
  obj : JsValue,
  low : JsValue,
) -> Unit = "(obj, low) => { obj.low = low; }"

///|
impl THTMLMeterElement with set_low(self : Self, low : Double) -> Unit {
  html_meter_element_set_low_ffi(TJsValue::to_js(self), TJsValue::to_js(low))
}

///|
extern "js" fn html_meter_element_high_ffi(obj : JsValue) -> Double = "(obj) => obj.high"

///|
impl THTMLMeterElement with high(self : Self) -> Double {
  html_meter_element_high_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_meter_element_set_high_ffi(
  obj : JsValue,
  high : JsValue,
) -> Unit = "(obj, high) => { obj.high = high; }"

///|
impl THTMLMeterElement with set_high(self : Self, high : Double) -> Unit {
  html_meter_element_set_high_ffi(TJsValue::to_js(self), TJsValue::to_js(high))
}

///|
extern "js" fn html_meter_element_optimum_ffi(obj : JsValue) -> Double = "(obj) => obj.optimum"

///|
impl THTMLMeterElement with optimum(self : Self) -> Double {
  html_meter_element_optimum_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_meter_element_set_optimum_ffi(
  obj : JsValue,
  optimum : JsValue,
) -> Unit = "(obj, optimum) => { obj.optimum = optimum; }"

///|
impl THTMLMeterElement with set_optimum(self : Self, optimum : Double) -> Unit {
  html_meter_element_set_optimum_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(optimum),
  )
}

///|
extern "js" fn html_meter_element_labels_ffi(obj : JsValue) -> NodeList = "(obj) => obj.labels"

///|
impl THTMLMeterElement with labels(self : Self) -> NodeList {
  html_meter_element_labels_ffi(TJsValue::to_js(self))
}
