// Do not edit. This file is generated.
// MoonBit type: CSSStyleProperties
// Specifications: cssom.idl

///|
/// [CSSStyleProperties](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleProperties)
#external
pub type CSSStyleProperties

///|
pub impl TJsValue for CSSStyleProperties with to_js(self : CSSStyleProperties) -> JsValue = "%identity"

///|
pub impl FromJsAny for CSSStyleProperties with from_js_any(value : JsAny) -> CSSStyleProperties = "%identity"

///|
pub fn[T : TCSSStyleProperties] CSSStyleProperties::into(
  self : CSSStyleProperties,
) -> T = "%identity"

///|
pub impl TCSSStyleProperties for CSSStyleProperties

///|
pub impl TCSSStyleDeclaration for CSSStyleProperties

///|
/// [CSSStyleProperties](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleProperties) interface.
pub trait TCSSStyleProperties: TCSSStyleDeclaration {
  css_float(self : Self) -> CSSOMString = _
  set_css_float(self : Self, css_float : CSSOMString) -> Unit = _
}

///|
/// [CSSStyleProperties.cssFloat](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleProperties/cssFloat)
impl TCSSStyleProperties with css_float(self : Self) -> CSSOMString {
  css_style_properties_css_float_ffi(TJsValue::to_js(self))
}

///|
/// [CSSStyleProperties.cssFloat](https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleProperties/cssFloat)
impl TCSSStyleProperties with set_css_float(
  self : Self,
  css_float : CSSOMString,
) -> Unit {
  css_style_properties_set_css_float_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(css_float),
  )
}

///|
#cfg(target="js")
extern "js" fn css_style_properties_css_float_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.cssFloat"

///|
#cfg(target="js")
fn css_style_properties_css_float_ffi(obj : JsValue) -> CSSOMString {
  css_style_properties_css_float_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn css_style_properties_set_css_float_ffi(
  obj : JsValue,
  css_float : JsValue,
) -> Unit = "(obj, cssFloat) => { obj.cssFloat = cssFloat; }"

///|
#cfg(target="wasm-gc")
fn css_style_properties_css_float_ffi_wasm(obj : JsValue) -> JsValue = "webapi_CSSStyleProperties" "get_cssFloat"

///|
#cfg(target="wasm-gc")
fn css_style_properties_css_float_ffi(obj : JsValue) -> CSSOMString {
  css_style_properties_css_float_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn css_style_properties_set_css_float_ffi(
  obj : JsValue,
  css_float : JsValue,
) -> Unit = "webapi_CSSStyleProperties" "set_cssFloat"
