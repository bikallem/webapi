// Do not edit. This file is generated.
// MoonBit type: SVGStopElement
// Specifications: SVG.idl

///|
/// [SVGStopElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGStopElement)
#external
pub type SVGStopElement

///|
pub impl TJsValue for SVGStopElement with to_js(self : SVGStopElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGStopElement with from_js_any(value : JsAny) -> SVGStopElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGStopElement] SVGStopElement::into(self : SVGStopElement) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGStopElement] SVGStopElement::unsafe_into(
  self : SVGStopElement,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGStopElement with constructor_name() {
  "SVGStopElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGStopElement + HasConstructor] SVGStopElement::try_into(
  self : SVGStopElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGStopElement for SVGStopElement

///|
pub impl TSVGElement for SVGStopElement

///|
pub impl TElement for SVGStopElement

///|
pub impl TNode for SVGStopElement

///|
pub impl TEventTarget for SVGStopElement

///|
/// [SVGStopElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGStopElement) interface.
pub trait TSVGStopElement: TSVGElement {
  offset(self : Self) -> SVGAnimatedNumber = _
}

///|
/// [SVGStopElement.offset](https://developer.mozilla.org/en-US/docs/Web/API/SVGStopElement/offset)
impl TSVGStopElement with offset(self : Self) -> SVGAnimatedNumber {
  svg_stop_element_offset_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_stop_element_offset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.offset"

///|
#cfg(target="js")
fn svg_stop_element_offset_ffi(obj : JsValue) -> SVGAnimatedNumber {
  svg_stop_element_offset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_stop_element_offset_ffi(obj : JsValue) -> SVGAnimatedNumber = "webapi_SVGStopElement" "get_offset"
