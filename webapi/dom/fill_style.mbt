// Auto-generated MoonBit bindings for FillStyle union type

// Do not edit manually

///|
#external
pub type FillStyle

///|
pub(open) trait TFillStyle {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TFillStyle] FillStyle::into(self : FillStyle) -> T = "%identity"

///|
pub fn FillStyle::null() -> FillStyle = "JsValue" "null"

///|
pub fn FillStyle::is_null(self : FillStyle) -> Bool = "JsValue" "isNull"

///|
pub impl TFillStyle for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TFillStyle for CanvasGradient with to_js(self : CanvasGradient) -> JsValue = "%identity"

///|
pub impl TFillStyle for CanvasPattern with to_js(self : CanvasPattern) -> JsValue = "%identity"
