///|
#external
pub type CSSStyleProperties

///|
pub impl TJsValue for CSSStyleProperties with to_js(self : CSSStyleProperties) -> JsValue = "%identity"

///|
pub fn[T : TCSSStyleProperties] CSSStyleProperties::into(
  self : CSSStyleProperties,
) -> T = "%identity"

///|
pub impl TCSSStyleProperties for CSSStyleProperties

///|
pub impl TCSSStyleDeclaration for CSSStyleProperties

///|
pub trait TCSSStyleProperties: TCSSStyleDeclaration {
  css_float(self : Self) -> CSSOMString = _
  set_css_float(self : Self, css_float : CSSOMString) -> Unit = _
}

///|
extern "js" fn css_style_properties_css_float_ffi(obj : JsValue) -> CSSOMString = "(obj) => obj.cssFloat"

///|
impl TCSSStyleProperties with css_float(self : Self) -> CSSOMString {
  css_style_properties_css_float_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn css_style_properties_set_css_float_ffi(
  obj : JsValue,
  css_float : JsValue,
) -> Unit = "(obj, cssFloat) => { obj.cssFloat = cssFloat; }"

///|
impl TCSSStyleProperties with set_css_float(
  self : Self,
  css_float : CSSOMString,
) -> Unit {
  css_style_properties_set_css_float_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(css_float),
  )
}
