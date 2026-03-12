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
pub(open) trait TGeometryNode: TJsValue {}

///|
pub fn[T : TGeometryNode + FromJsAny] GeometryNode::into(
  self : GeometryNode,
) -> T {
  FromJsAny::from_js_any(jsvalue_to_jsany(TJsValue::to_js(self)))
}

///|
pub fn[T : TGeometryNode] GeometryNode::from(value : T) -> GeometryNode = "%identity"

///|
pub impl TGeometryNode for GeometryNode

///|
pub impl TGeometryNode for Text

///|
pub impl TGeometryNode for Element

///|
pub impl TGeometryNode for CSSPseudoElement

///|
pub impl TGeometryNode for Document
