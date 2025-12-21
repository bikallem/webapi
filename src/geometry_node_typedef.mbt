///|
pub(open) trait TGeometryNode {
  to_js(self : Self) -> JsValue
}

///|
pub fn[T : TGeometryNode] &TGeometryNode::into(self : &TGeometryNode) -> T = "%identity"

///|
pub impl TGeometryNode for &TText with to_js(self : &TText) -> JsValue = "%identity"

///|
pub impl TGeometryNode for &TElement with to_js(self : &TElement) -> JsValue = "%identity"

///|
pub impl TGeometryNode for CSSPseudoElement with to_js(self : CSSPseudoElement) -> JsValue = "%identity"

///|
pub impl TGeometryNode for &TDocument with to_js(self : &TDocument) -> JsValue = "%identity"
