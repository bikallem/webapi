// Do not edit. This file is generated.
// MoonBit type: SVGGraphicsElement
// Specifications: SVG.idl

/// [SVGGraphicsElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement)
#external
pub type SVGGraphicsElement

pub impl TJsValue for SVGGraphicsElement with to_js(self: SVGGraphicsElement) -> JsValue = "%identity"

pub impl FromJsAny for SVGGraphicsElement with from_js_any(value : JsAny) -> SVGGraphicsElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TSVGGraphicsElement] SVGGraphicsElement::into(self : SVGGraphicsElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TSVGGraphicsElement] SVGGraphicsElement::unsafe_into(self : SVGGraphicsElement) -> T = "%identity"

pub impl HasConstructor for SVGGraphicsElement with constructor_name() { "SVGGraphicsElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGGraphicsElement + HasConstructor] SVGGraphicsElement::try_into(self : SVGGraphicsElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TSVGGraphicsElement for SVGGraphicsElement

pub impl TSVGElement for SVGGraphicsElement

pub impl TElement for SVGGraphicsElement

pub impl TNode for SVGGraphicsElement

pub impl TEventTarget for SVGGraphicsElement

/// [SVGGraphicsElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement) interface.
pub trait TSVGGraphicsElement: TSVGElement {
  transform(self : Self) -> SVGAnimatedTransformList = _
  get_b_box(self : Self, options? : SVGBoundingBoxOptions) -> DOMRect = _
  get_ctm_opt(self : Self) -> DOMMatrix? = _
  get_screen_ctm_opt(self : Self) -> DOMMatrix? = _
  required_extensions(self : Self) -> SVGStringList = _
  system_language(self : Self) -> SVGStringList = _
  get_ctm(self : Self) -> DOMMatrix = _
  get_screen_ctm(self : Self) -> DOMMatrix = _
}

/// [SVGGraphicsElement.transform](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement/transform)
impl TSVGGraphicsElement with transform(self : Self) -> SVGAnimatedTransformList {
  svg_graphics_element_transform_ffi(TJsValue::to_js(self))
}

/// [SVGGraphicsElement.getBBox](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement/getBBox)
impl TSVGGraphicsElement with get_b_box(self : Self, 
options? : SVGBoundingBoxOptions) -> DOMRect {
  svg_graphics_element_get_b_box_ffi(TJsValue::to_js(self), opt_to_js(options))
}

/// [SVGGraphicsElement.getCTM](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement/getCTM)
impl TSVGGraphicsElement with get_ctm_opt(self : Self) -> DOMMatrix? {
  svg_graphics_element_get_ctm_ffi(TJsValue::to_js(self)).to_option()
}

/// [SVGGraphicsElement.getScreenCTM](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement/getScreenCTM)
impl TSVGGraphicsElement with get_screen_ctm_opt(self : Self) -> DOMMatrix? {
  svg_graphics_element_get_screen_ctm_ffi(TJsValue::to_js(self)).to_option()
}

/// [SVGGraphicsElement.requiredExtensions](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement/requiredExtensions)
impl TSVGGraphicsElement with required_extensions(self : Self) -> SVGStringList {
  svg_graphics_element_required_extensions_ffi(TJsValue::to_js(self))
}

/// [SVGGraphicsElement.systemLanguage](https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement/systemLanguage)
impl TSVGGraphicsElement with system_language(self : Self) -> SVGStringList {
  svg_graphics_element_system_language_ffi(TJsValue::to_js(self))
}

impl TSVGGraphicsElement with get_ctm(self : Self) -> DOMMatrix {
  self.get_ctm_opt().unwrap()
}

impl TSVGGraphicsElement with get_screen_ctm(self : Self) -> DOMMatrix {
  self.get_screen_ctm_opt().unwrap()
}

#cfg(target="js")
extern "js" fn svg_graphics_element_transform_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.transform"

///|
#cfg(target="js")
fn svg_graphics_element_transform_ffi(obj: JsValue) -> SVGAnimatedTransformList {
  svg_graphics_element_transform_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_graphics_element_get_b_box_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.getBBox(options)"

///|
#cfg(target="js")
fn svg_graphics_element_get_b_box_ffi(obj: JsValue, options: JsValue) -> DOMRect {
  svg_graphics_element_get_b_box_ffi_js(obj, options).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_graphics_element_get_ctm_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getCTM()"

#cfg(target="js")
extern "js" fn svg_graphics_element_get_screen_ctm_ffi(obj: JsValue) -> JsValue = "(obj) => obj.getScreenCTM()"

#cfg(target="js")
extern "js" fn svg_graphics_element_required_extensions_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.requiredExtensions"

///|
#cfg(target="js")
fn svg_graphics_element_required_extensions_ffi(obj: JsValue) -> SVGStringList {
  svg_graphics_element_required_extensions_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn svg_graphics_element_system_language_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.systemLanguage"

///|
#cfg(target="js")
fn svg_graphics_element_system_language_ffi(obj: JsValue) -> SVGStringList {
  svg_graphics_element_system_language_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn svg_graphics_element_transform_ffi(obj: JsValue) -> SVGAnimatedTransformList = "webapi_SVGGraphicsElement" "get_transform"

#cfg(target="wasm-gc")
fn svg_graphics_element_get_b_box_ffi(obj: JsValue, options: JsValue) -> DOMRect = "webapi_SVGGraphicsElement" "getBBox"

#cfg(target="wasm-gc")
fn svg_graphics_element_get_ctm_ffi(obj: JsValue) -> JsValue = "webapi_SVGGraphicsElement" "getCTM"

#cfg(target="wasm-gc")
fn svg_graphics_element_get_screen_ctm_ffi(obj: JsValue) -> JsValue = "webapi_SVGGraphicsElement" "getScreenCTM"

#cfg(target="wasm-gc")
fn svg_graphics_element_required_extensions_ffi(obj: JsValue) -> SVGStringList = "webapi_SVGGraphicsElement" "get_requiredExtensions"

#cfg(target="wasm-gc")
fn svg_graphics_element_system_language_ffi(obj: JsValue) -> SVGStringList = "webapi_SVGGraphicsElement" "get_systemLanguage"