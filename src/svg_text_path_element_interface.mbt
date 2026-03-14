// Do not edit. This file is generated.
// MoonBit type: SVGTextPathElement
// Specifications: SVG.idl

/// [SVGTextPathElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement)
#external
pub type SVGTextPathElement

pub impl TJsValue for SVGTextPathElement with to_js(self: SVGTextPathElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGTextPathElement with from_js_any(value : JsAny) -> SVGTextPathElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGTextPathElement] SVGTextPathElement::into(self : SVGTextPathElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGTextPathElement] SVGTextPathElement::unsafe_into(self : SVGTextPathElement) -> T = "%identity"

pub impl HasConstructor for SVGTextPathElement with constructor_name() { "SVGTextPathElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGTextPathElement + HasConstructor] SVGTextPathElement::try_into(self : SVGTextPathElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGTextPathElement for SVGTextPathElement

pub impl TSVGTextContentElement for SVGTextPathElement

pub impl TSVGGraphicsElement for SVGTextPathElement

pub impl TSVGElement for SVGTextPathElement

pub impl TElement for SVGTextPathElement

pub impl TNode for SVGTextPathElement

pub impl TEventTarget for SVGTextPathElement

pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_METHODTYPE_UNKNOWN: UInt = 0

pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_METHODTYPE_ALIGN: UInt = 1

pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_METHODTYPE_STRETCH: UInt = 2

pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_SPACINGTYPE_UNKNOWN: UInt = 0

pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_SPACINGTYPE_AUTO: UInt = 1

pub const SVG_TEXT_PATH_ELEMENT_TEXTPATH_SPACINGTYPE_EXACT: UInt = 2

/// [SVGTextPathElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement) interface.
pub trait TSVGTextPathElement: TSVGTextContentElement {
  start_offset(self : Self) -> SVGAnimatedLength = _
  method_(self : Self) -> SVGAnimatedEnumeration = _
  spacing(self : Self) -> SVGAnimatedEnumeration = _
  href(self : Self) -> SVGAnimatedString = _
}

/// [SVGTextPathElement.startOffset](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement/startOffset)
impl TSVGTextPathElement with start_offset(self : Self) -> SVGAnimatedLength {
  svg_text_path_element_start_offset_ffi(TJsValue::to_js(self))
}

/// [SVGTextPathElement.method](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement/method)
impl TSVGTextPathElement with method_(self : Self) -> SVGAnimatedEnumeration {
  svg_text_path_element_method_ffi(TJsValue::to_js(self))
}

/// [SVGTextPathElement.spacing](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement/spacing)
impl TSVGTextPathElement with spacing(self : Self) -> SVGAnimatedEnumeration {
  svg_text_path_element_spacing_ffi(TJsValue::to_js(self))
}

/// [SVGTextPathElement.href](https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPathElement/href)
impl TSVGTextPathElement with href(self : Self) -> SVGAnimatedString {
  svg_text_path_element_href_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn svg_text_path_element_start_offset_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.startOffset"

///|
#cfg(target="js")
fn svg_text_path_element_start_offset_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_text_path_element_start_offset_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_text_path_element_method_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.method"

///|
#cfg(target="js")
fn svg_text_path_element_method_ffi(obj: JsValue) -> SVGAnimatedEnumeration {
  svg_text_path_element_method_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_text_path_element_spacing_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.spacing"

///|
#cfg(target="js")
fn svg_text_path_element_spacing_ffi(obj: JsValue) -> SVGAnimatedEnumeration {
  svg_text_path_element_spacing_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_text_path_element_href_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.href"

///|
#cfg(target="js")
fn svg_text_path_element_href_ffi(obj: JsValue) -> SVGAnimatedString {
  svg_text_path_element_href_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svg_text_path_element_start_offset_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGTextPathElement" "get_startOffset"

#cfg(target="wasm-gc")
fn svg_text_path_element_method_ffi(obj: JsValue) -> SVGAnimatedEnumeration = "webapi_SVGTextPathElement" "get_method"

#cfg(target="wasm-gc")
fn svg_text_path_element_spacing_ffi(obj: JsValue) -> SVGAnimatedEnumeration = "webapi_SVGTextPathElement" "get_spacing"

#cfg(target="wasm-gc")
fn svg_text_path_element_href_ffi(obj: JsValue) -> SVGAnimatedString = "webapi_SVGTextPathElement" "get_href"