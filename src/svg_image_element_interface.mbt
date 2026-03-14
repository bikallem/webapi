// Do not edit. This file is generated.
// MoonBit type: SVGImageElement
// Specifications: SVG.idl

/// [SVGImageElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement)
#external
pub type SVGImageElement

pub impl TJsValue for SVGImageElement with to_js(self: SVGImageElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGImageElement with from_js_any(value : JsAny) -> SVGImageElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGImageElement] SVGImageElement::into(self : SVGImageElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGImageElement] SVGImageElement::unsafe_into(self : SVGImageElement) -> T = "%identity"

pub impl HasConstructor for SVGImageElement with constructor_name() { "SVGImageElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGImageElement + HasConstructor] SVGImageElement::try_into(self : SVGImageElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGImageElement for SVGImageElement

pub impl TSVGGraphicsElement for SVGImageElement

pub impl TSVGElement for SVGImageElement

pub impl TElement for SVGImageElement

pub impl TNode for SVGImageElement

pub impl TEventTarget for SVGImageElement

/// [SVGImageElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement) interface.
pub trait TSVGImageElement: TSVGGraphicsElement {
  x(self : Self) -> SVGAnimatedLength = _
  y(self : Self) -> SVGAnimatedLength = _
  width(self : Self) -> SVGAnimatedLength = _
  height(self : Self) -> SVGAnimatedLength = _
  preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio = _
  cross_origin(self : Self) -> String = _
  set_cross_origin(self : Self, cross_origin : String) -> Unit = _
  href(self : Self) -> SVGAnimatedString = _
}

/// [SVGImageElement.x](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/x)
impl TSVGImageElement with x(self : Self) -> SVGAnimatedLength {
  svg_image_element_x_ffi(TJsValue::to_js(self))
}

/// [SVGImageElement.y](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/y)
impl TSVGImageElement with y(self : Self) -> SVGAnimatedLength {
  svg_image_element_y_ffi(TJsValue::to_js(self))
}

/// [SVGImageElement.width](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/width)
impl TSVGImageElement with width(self : Self) -> SVGAnimatedLength {
  svg_image_element_width_ffi(TJsValue::to_js(self))
}

/// [SVGImageElement.height](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/height)
impl TSVGImageElement with height(self : Self) -> SVGAnimatedLength {
  svg_image_element_height_ffi(TJsValue::to_js(self))
}

/// [SVGImageElement.preserveAspectRatio](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/preserveAspectRatio)
impl TSVGImageElement with preserve_aspect_ratio(self : Self) -> SVGAnimatedPreserveAspectRatio {
  svg_image_element_preserve_aspect_ratio_ffi(TJsValue::to_js(self))
}

/// [SVGImageElement.crossOrigin](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/crossOrigin)
impl TSVGImageElement with cross_origin(self : Self) -> String {
  svg_image_element_cross_origin_ffi(TJsValue::to_js(self))
}

/// [SVGImageElement.crossOrigin](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/crossOrigin)
impl TSVGImageElement with set_cross_origin(self : Self, 
cross_origin : String) -> Unit {
  svg_image_element_set_cross_origin_ffi(TJsValue::to_js(self), TJsValue::to_js(cross_origin))
}

/// [SVGImageElement.href](https://developer.mozilla.org/en-US/docs/Web/API/SVGImageElement/href)
impl TSVGImageElement with href(self : Self) -> SVGAnimatedString {
  svg_image_element_href_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn svg_image_element_x_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.x"

///|
#cfg(target="js")
fn svg_image_element_x_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_image_element_x_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_image_element_y_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.y"

///|
#cfg(target="js")
fn svg_image_element_y_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_image_element_y_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_image_element_width_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn svg_image_element_width_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_image_element_width_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_image_element_height_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn svg_image_element_height_ffi(obj: JsValue) -> SVGAnimatedLength {
  svg_image_element_height_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_image_element_preserve_aspect_ratio_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.preserveAspectRatio"

///|
#cfg(target="js")
fn svg_image_element_preserve_aspect_ratio_ffi(obj: JsValue) -> SVGAnimatedPreserveAspectRatio {
  svg_image_element_preserve_aspect_ratio_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_image_element_cross_origin_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.crossOrigin"

///|
#cfg(target="js")
fn svg_image_element_cross_origin_ffi(obj: JsValue) -> String {
  svg_image_element_cross_origin_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_image_element_set_cross_origin_ffi(obj: JsValue, cross_origin: JsValue) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

#cfg(target="js")
extern "js" fn svg_image_element_href_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.href"

///|
#cfg(target="js")
fn svg_image_element_href_ffi(obj: JsValue) -> SVGAnimatedString {
  svg_image_element_href_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svg_image_element_x_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGImageElement" "get_x"

#cfg(target="wasm-gc")
fn svg_image_element_y_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGImageElement" "get_y"

#cfg(target="wasm-gc")
fn svg_image_element_width_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGImageElement" "get_width"

#cfg(target="wasm-gc")
fn svg_image_element_height_ffi(obj: JsValue) -> SVGAnimatedLength = "webapi_SVGImageElement" "get_height"

#cfg(target="wasm-gc")
fn svg_image_element_preserve_aspect_ratio_ffi(obj: JsValue) -> SVGAnimatedPreserveAspectRatio = "webapi_SVGImageElement" "get_preserveAspectRatio"

#cfg(target="wasm-gc")
fn svg_image_element_cross_origin_ffi_wasm(obj: JsValue) -> JsValue = "webapi_SVGImageElement" "get_crossOrigin"

///|
#cfg(target="wasm-gc")
fn svg_image_element_cross_origin_ffi(obj: JsValue) -> String {
  jsvalue_to_string(svg_image_element_cross_origin_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn svg_image_element_set_cross_origin_ffi(obj: JsValue, cross_origin: JsValue) -> Unit = "webapi_SVGImageElement" "set_crossOrigin"

#cfg(target="wasm-gc")
fn svg_image_element_href_ffi(obj: JsValue) -> SVGAnimatedString = "webapi_SVGImageElement" "get_href"