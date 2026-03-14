// Do not edit. This file is generated.
// MoonBit type: SVGSymbolElement
// Specifications: SVG.idl

/// [SVGSymbolElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGSymbolElement)
#external
pub type SVGSymbolElement

pub impl TJsValue for SVGSymbolElement with to_js(self: SVGSymbolElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGSymbolElement with from_js_any(value : JsAny) -> SVGSymbolElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGSymbolElement] SVGSymbolElement::into(self : SVGSymbolElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGSymbolElement] SVGSymbolElement::unsafe_into(self : SVGSymbolElement) -> T = "%identity"

pub impl HasConstructor for SVGSymbolElement with constructor_name() { "SVGSymbolElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGSymbolElement + HasConstructor] SVGSymbolElement::try_into(self : SVGSymbolElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGSymbolElement for SVGSymbolElement

pub impl TSVGGraphicsElement for SVGSymbolElement

pub impl TSVGElement for SVGSymbolElement

pub impl TElement for SVGSymbolElement

pub impl TNode for SVGSymbolElement

pub impl TEventTarget for SVGSymbolElement

/// [SVGSymbolElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGSymbolElement) interface.
pub trait TSVGSymbolElement: TSVGGraphicsElement {
  view_box(self : Self) -> SVGAnimatedRect = _
  preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio = _
}

/// [SVGSymbolElement.viewBox](https://developer.mozilla.org/en-US/docs/Web/API/SVGSymbolElement/viewBox)
impl TSVGSymbolElement with view_box(self : Self) -> SVGAnimatedRect {
  svg_symbol_element_view_box_ffi(TJsValue::to_js(self))
}

/// [SVGSymbolElement.preserveAspectRatio](https://developer.mozilla.org/en-US/docs/Web/API/SVGSymbolElement/preserveAspectRatio)
impl TSVGSymbolElement with preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio {
  svg_symbol_element_preserve_aspect_ratio_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn svg_symbol_element_view_box_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.viewBox"

///|
#cfg(target="js")
fn svg_symbol_element_view_box_ffi(obj: JsValue) -> SVGAnimatedRect {
  svg_symbol_element_view_box_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_symbol_element_preserve_aspect_ratio_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.preserveAspectRatio"

///|
#cfg(target="js")
fn svg_symbol_element_preserve_aspect_ratio_ffi(obj: JsValue) -> SVGAnimatedPreserveAspectRatio {
  svg_symbol_element_preserve_aspect_ratio_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svg_symbol_element_view_box_ffi(obj: JsValue) -> SVGAnimatedRect = "webapi_SVGSymbolElement" "get_viewBox"

#cfg(target="wasm-gc")
fn svg_symbol_element_preserve_aspect_ratio_ffi(obj: JsValue) -> SVGAnimatedPreserveAspectRatio = "webapi_SVGSymbolElement" "get_preserveAspectRatio"