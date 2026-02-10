// Do not edit. This file is generated.
// MoonBit type: GeometryNode
// Specifications: cssom-view.idl

///|
/// [GeometryNode](https://developer.mozilla.org/en-US/docs/Web/API/GeometryNode)
#external
pub type GeometryNode

///|
pub impl TJsValue for GeometryNode with to_js(self : GeometryNode) -> JsValue = "%identity"

///|
pub(open) trait TGeometryNode {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TGeometryNode] GeometryNode::into(self : GeometryNode) -> T = "%identity"

///|
pub impl TGeometryNode for Text with to_js(self : Text) -> JsValue = "%identity"

///|
pub impl TGeometryNode for Element with to_js(self : Element) -> JsValue = "%identity"

///|
pub impl TGeometryNode for CSSPseudoElement with to_js(self : CSSPseudoElement) -> JsValue = "%identity"

///|
pub impl TGeometryNode for Document with to_js(self : Document) -> JsValue = "%identity"
