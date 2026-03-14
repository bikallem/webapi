// Do not edit. This file is generated.
// MoonBit type: SVGGradientElement
// Specifications: SVG.idl

/// [SVGGradientElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement)
#external
pub type SVGGradientElement

pub impl TJsValue for SVGGradientElement with to_js(self: SVGGradientElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGGradientElement with from_js_any(value : JsAny) -> SVGGradientElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGGradientElement] SVGGradientElement::into(self : SVGGradientElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGGradientElement] SVGGradientElement::unsafe_into(self : SVGGradientElement) -> T = "%identity"

pub impl HasConstructor for SVGGradientElement with constructor_name() { "SVGGradientElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGGradientElement + HasConstructor] SVGGradientElement::try_into(self : SVGGradientElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGGradientElement for SVGGradientElement

pub impl TSVGElement for SVGGradientElement

pub impl TElement for SVGGradientElement

pub impl TNode for SVGGradientElement

pub impl TEventTarget for SVGGradientElement

pub const SVG_GRADIENT_ELEMENT_SVG_SPREADMETHOD_UNKNOWN: UInt = 0

pub const SVG_GRADIENT_ELEMENT_SVG_SPREADMETHOD_PAD: UInt = 1

pub const SVG_GRADIENT_ELEMENT_SVG_SPREADMETHOD_REFLECT: UInt = 2

pub const SVG_GRADIENT_ELEMENT_SVG_SPREADMETHOD_REPEAT: UInt = 3

/// [SVGGradientElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement) interface.
pub trait TSVGGradientElement: TSVGElement {
  gradient_units(self : Self) -> SVGAnimatedEnumeration = _
  gradient_transform(self : Self) -> SVGAnimatedTransformList = _
  spread_method(self : Self) -> SVGAnimatedEnumeration = _
  href(self : Self) -> SVGAnimatedString = _
}

/// [SVGGradientElement.gradientUnits](https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement/gradientUnits)
impl TSVGGradientElement with gradient_units(self : Self) -> SVGAnimatedEnumeration {
  svg_gradient_element_gradient_units_ffi(TJsValue::to_js(self))
}

/// [SVGGradientElement.gradientTransform](https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement/gradientTransform)
impl TSVGGradientElement with gradient_transform(self : Self) -> SVGAnimatedTransformList {
  svg_gradient_element_gradient_transform_ffi(TJsValue::to_js(self))
}

/// [SVGGradientElement.spreadMethod](https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement/spreadMethod)
impl TSVGGradientElement with spread_method(self : Self) -> SVGAnimatedEnumeration {
  svg_gradient_element_spread_method_ffi(TJsValue::to_js(self))
}

/// [SVGGradientElement.href](https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement/href)
impl TSVGGradientElement with href(self : Self) -> SVGAnimatedString {
  svg_gradient_element_href_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn svg_gradient_element_gradient_units_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.gradientUnits"

///|
#cfg(target="js")
fn svg_gradient_element_gradient_units_ffi(obj: JsValue) -> SVGAnimatedEnumeration {
  svg_gradient_element_gradient_units_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_gradient_element_gradient_transform_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.gradientTransform"

///|
#cfg(target="js")
fn svg_gradient_element_gradient_transform_ffi(obj: JsValue) -> SVGAnimatedTransformList {
  svg_gradient_element_gradient_transform_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_gradient_element_spread_method_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.spreadMethod"

///|
#cfg(target="js")
fn svg_gradient_element_spread_method_ffi(obj: JsValue) -> SVGAnimatedEnumeration {
  svg_gradient_element_spread_method_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_gradient_element_href_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.href"

///|
#cfg(target="js")
fn svg_gradient_element_href_ffi(obj: JsValue) -> SVGAnimatedString {
  svg_gradient_element_href_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svg_gradient_element_gradient_units_ffi(obj: JsValue) -> SVGAnimatedEnumeration = "webapi_SVGGradientElement" "get_gradientUnits"

#cfg(target="wasm-gc")
fn svg_gradient_element_gradient_transform_ffi(obj: JsValue) -> SVGAnimatedTransformList = "webapi_SVGGradientElement" "get_gradientTransform"

#cfg(target="wasm-gc")
fn svg_gradient_element_spread_method_ffi(obj: JsValue) -> SVGAnimatedEnumeration = "webapi_SVGGradientElement" "get_spreadMethod"

#cfg(target="wasm-gc")
fn svg_gradient_element_href_ffi(obj: JsValue) -> SVGAnimatedString = "webapi_SVGGradientElement" "get_href"