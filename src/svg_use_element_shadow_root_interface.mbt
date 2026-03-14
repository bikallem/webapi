// Do not edit. This file is generated.
// MoonBit type: SVGUseElementShadowRoot
// Specifications: SVG.idl

///|
/// [SVGUseElementShadowRoot](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElementShadowRoot)
#external
pub type SVGUseElementShadowRoot

///|
pub impl TJsValue for SVGUseElementShadowRoot with to_js(
  self : SVGUseElementShadowRoot,
) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGUseElementShadowRoot with from_js_any(value : JsAny) -> SVGUseElementShadowRoot = "%identity"

///|
pub fn[T : TSVGUseElementShadowRoot] SVGUseElementShadowRoot::into(
  self : SVGUseElementShadowRoot,
) -> T = "%identity"

///|
pub impl TSVGUseElementShadowRoot for SVGUseElementShadowRoot

///|
pub impl TShadowRoot for SVGUseElementShadowRoot

///|
pub impl TDocumentFragment for SVGUseElementShadowRoot

///|
pub impl TNode for SVGUseElementShadowRoot

///|
pub impl TEventTarget for SVGUseElementShadowRoot

///|
/// [SVGUseElementShadowRoot](https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElementShadowRoot) interface.
pub trait TSVGUseElementShadowRoot: TShadowRoot {}
