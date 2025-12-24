///|
#external
pub type SVGNumber

///|
pub impl TJsValue for SVGNumber with to_js(self : SVGNumber) -> JsValue = "%identity"

///|
pub fn[T : TSVGNumber] SVGNumber::into(self : SVGNumber) -> T = "%identity"

///|
pub impl TSVGNumber for SVGNumber

///|
pub trait TSVGNumber: TJsValue {
  value(self : Self) -> Float = _
  set_value(self : Self, value : Float) -> Unit = _
}

///|
extern "js" fn svg_number_value_ffi(obj : JsValue) -> Float = "(obj) => obj.value"

///|
impl TSVGNumber with value(self : Self) -> Float {
  svg_number_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn svg_number_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

///|
impl TSVGNumber with set_value(self : Self, value : Float) -> Unit {
  svg_number_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}
