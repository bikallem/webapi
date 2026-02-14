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
pub impl FromJsAny for GeometryNode with from_js_any(value : JsAny) -> GeometryNode = "%identity"

///|
pub(open) trait TGeometryNode {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TGeometryNode + FromJsAny] GeometryNode::into(
  self : GeometryNode,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TGeometryNode] GeometryNode::from(value : T) -> GeometryNode = "%identity"

///|
pub impl TGeometryNode for GeometryNode with to_js(self : GeometryNode) -> JsValue = "%identity"

///|
pub impl TGeometryNode for Text with to_js(self : Text) -> JsValue = "%identity"

///|
pub impl TGeometryNode for Element with to_js(self : Element) -> JsValue = "%identity"

///|
pub impl TGeometryNode for CSSPseudoElement with to_js(self : CSSPseudoElement) -> JsValue = "%identity"

///|
pub impl TGeometryNode for Document with to_js(self : Document) -> JsValue = "%identity"
