// Do not edit. This file is generated.
// MoonBit type: CSS
// Specifications: cssom.idl

///|
/// [CSS](https://developer.mozilla.org/en-US/docs/Web/API/CSS)
#external
pub type CSS

///|
pub impl TJsValue for CSS with to_js(self : CSS) -> JsValue = "%identity"

///|
pub impl FromJsAny for CSS with from_js_any(value : JsAny) -> CSS = "%identity"

///|
/// [CSS.escape](https://developer.mozilla.org/en-US/docs/Web/API/CSS/escape)
pub fn CSS::escape(ident : CSSOMString) -> CSSOMString {
  css_escape_ffi(TJsValue::to_js(ident))
}
