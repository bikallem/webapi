// Auto-generated MoonBit bindings for HTMLMeterElement interface
// Do not edit manually

#external
pub type HTMLMeterElement

pub impl TJsValue for HTMLMeterElement with to_js(self: HTMLMeterElement) -> JsValue = "%identity"


pub fn[T: THTMLMeterElement] HTMLMeterElement::into(self : HTMLMeterElement) -> T = "%identity"
pub impl THTMLMeterElement for HTMLMeterElement

pub fn HTMLMeterElement::new() -> HTMLMeterElement = "webapi_HTMLMeterElement" "new"

pub trait THTMLMeterElement: TJsValue + TTHTMLElement {
  value(self: Self) -> Double = _
  set_value(self: Self, value : Double) -> Unit = _
  min(self: Self) -> Double = _
  set_min(self: Self, value : Double) -> Unit = _
  max(self: Self) -> Double = _
  set_max(self: Self, value : Double) -> Unit = _
  low(self: Self) -> Double = _
  set_low(self: Self, value : Double) -> Unit = _
  high(self: Self) -> Double = _
  set_high(self: Self, value : Double) -> Unit = _
  optimum(self: Self) -> Double = _
  set_optimum(self: Self, value : Double) -> Unit = _
  labels(self: Self) -> &TNodeList = _
}

///|
fn html_meter_element_value_ffi(obj : JsValue) -> Double = "webapi_HTMLMeterElement" "value"

///|
impl THTMLMeterElement with value(self : Self) -> Double {
  html_meter_element_value_ffi(self.to_js())
}

///|
fn html_meter_element_set_value_ffi(obj : JsValue, value : Double) -> Unit = "webapi_HTMLMeterElement" "set_value"

///|
impl THTMLMeterElement with set_value(self : Self, value : Double) -> Unit {
  html_meter_element_set_value_ffi(self.to_js(), value)
}

///|
fn html_meter_element_min_ffi(obj : JsValue) -> Double = "webapi_HTMLMeterElement" "min"

///|
impl THTMLMeterElement with min(self : Self) -> Double {
  html_meter_element_min_ffi(self.to_js())
}

///|
fn html_meter_element_set_min_ffi(obj : JsValue, value : Double) -> Unit = "webapi_HTMLMeterElement" "set_min"

///|
impl THTMLMeterElement with set_min(self : Self, value : Double) -> Unit {
  html_meter_element_set_min_ffi(self.to_js(), value)
}

///|
fn html_meter_element_max_ffi(obj : JsValue) -> Double = "webapi_HTMLMeterElement" "max"

///|
impl THTMLMeterElement with max(self : Self) -> Double {
  html_meter_element_max_ffi(self.to_js())
}

///|
fn html_meter_element_set_max_ffi(obj : JsValue, value : Double) -> Unit = "webapi_HTMLMeterElement" "set_max"

///|
impl THTMLMeterElement with set_max(self : Self, value : Double) -> Unit {
  html_meter_element_set_max_ffi(self.to_js(), value)
}

///|
fn html_meter_element_low_ffi(obj : JsValue) -> Double = "webapi_HTMLMeterElement" "low"

///|
impl THTMLMeterElement with low(self : Self) -> Double {
  html_meter_element_low_ffi(self.to_js())
}

///|
fn html_meter_element_set_low_ffi(obj : JsValue, value : Double) -> Unit = "webapi_HTMLMeterElement" "set_low"

///|
impl THTMLMeterElement with set_low(self : Self, value : Double) -> Unit {
  html_meter_element_set_low_ffi(self.to_js(), value)
}

///|
fn html_meter_element_high_ffi(obj : JsValue) -> Double = "webapi_HTMLMeterElement" "high"

///|
impl THTMLMeterElement with high(self : Self) -> Double {
  html_meter_element_high_ffi(self.to_js())
}

///|
fn html_meter_element_set_high_ffi(obj : JsValue, value : Double) -> Unit = "webapi_HTMLMeterElement" "set_high"

///|
impl THTMLMeterElement with set_high(self : Self, value : Double) -> Unit {
  html_meter_element_set_high_ffi(self.to_js(), value)
}

///|
fn html_meter_element_optimum_ffi(obj : JsValue) -> Double = "webapi_HTMLMeterElement" "optimum"

///|
impl THTMLMeterElement with optimum(self : Self) -> Double {
  html_meter_element_optimum_ffi(self.to_js())
}

///|
fn html_meter_element_set_optimum_ffi(obj : JsValue, value : Double) -> Unit = "webapi_HTMLMeterElement" "set_optimum"

///|
impl THTMLMeterElement with set_optimum(self : Self, value : Double) -> Unit {
  html_meter_element_set_optimum_ffi(self.to_js(), value)
}

///|
fn html_meter_element_labels_ffi(obj : JsValue) -> JsValue = "webapi_HTMLMeterElement" "labels"

///|
impl THTMLMeterElement with labels(self : Self) -> &TNodeList {
  html_meter_element_labels_ffi(self.to_js()).unsafe_cast()
}