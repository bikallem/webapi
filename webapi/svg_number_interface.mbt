// Do not edit. This file is generated.
// MoonBit type: SVGNumber
// Specifications: SVG.idl

/// [SVGNumber](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber)
#external
pub type SVGNumber

pub impl TJsValue for SVGNumber with to_js(self: SVGNumber) -> JsValue = "%identity"

pub impl FromJsAny for SVGNumber with from_js_any(value : JsAny) -> SVGNumber = "%identity"

pub fn[T: TSVGNumber] SVGNumber::into(self : SVGNumber) -> T = "%identity"

pub impl TSVGNumber for SVGNumber

/// [SVGNumber](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber) interface.
pub trait TSVGNumber: TJsValue {
  value(self : Self) -> Float = _
  set_value(self : Self, value : Float) -> Unit = _
}

/// [SVGNumber.value](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber/value)
impl TSVGNumber with value(self : Self) -> Float {
  svg_number_value_ffi(TJsValue::to_js(self))
}

/// [SVGNumber.value](https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber/value)
impl TSVGNumber with set_value(self : Self, 
value : Float) -> Unit {
  svg_number_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}