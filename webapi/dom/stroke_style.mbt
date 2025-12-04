// Auto-generated MoonBit bindings for StrokeStyle union type

// Do not edit manually

///|
#external
pub type StrokeStyle

///|
pub(open) trait TStrokeStyle {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TStrokeStyle] StrokeStyle::into(self : StrokeStyle) -> T = "%identity"

///|
pub fn StrokeStyle::null() -> StrokeStyle = "JsValue" "null"

///|
pub fn StrokeStyle::is_null(self : StrokeStyle) -> Bool = "JsValue" "isNull"

///|
pub impl TStrokeStyle for String with to_js(self : String) -> JsValue = "%identity"

///|
pub impl TStrokeStyle for CanvasGradient with to_js(self : CanvasGradient) -> JsValue = "%identity"

///|
pub impl TStrokeStyle for CanvasPattern with to_js(self : CanvasPattern) -> JsValue = "%identity"
