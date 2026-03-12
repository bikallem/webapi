// Do not edit. This file is generated.
// MoonBit type: Text
// Specifications: dom.idl

/// [Text](https://developer.mozilla.org/en-US/docs/Web/API/Text)
#external
pub type Text

pub impl TJsValue for Text with to_js(self: Text) -> JsValue = "%identity"

pub impl FromJsAny for Text with from_js_any(value : JsAny) -> Text = "%identity"

pub fn[T: TText] Text::into(self : Text) -> T = "%identity"

pub impl TText for Text

pub impl TCharacterData for Text

pub impl TNode for Text

pub impl TEventTarget for Text

pub fn Text::new(data? : String) -> Text {
  text_new_ffi(opt_to_js(data))
}

/// [Text](https://developer.mozilla.org/en-US/docs/Web/API/Text) interface.
pub trait TText: TCharacterData {
  split_text(self : Self, offset : UInt) -> Text = _
  whole_text(self : Self) -> String = _
  assigned_slot(self : Self) -> HTMLSlotElement = _
  get_box_quads(self : Self, options? : BoxQuadOptions) -> Array[DOMQuad] = _
  convert_quad_from_node(self : Self, quad : DOMQuadInit, from : &TGeometryNode, options? : ConvertCoordinateOptions) -> DOMQuad = _
  convert_rect_from_node(self : Self, rect : &TDOMRectReadOnly, from : &TGeometryNode, options? : ConvertCoordinateOptions) -> DOMQuad = _
  convert_point_from_node(self : Self, point : DOMPointInit, from : &TGeometryNode, options? : ConvertCoordinateOptions) -> DOMPoint = _
}

/// [Text.splitText](https://developer.mozilla.org/en-US/docs/Web/API/Text/splitText)
impl TText with split_text(self : Self, 
offset : UInt) -> Text {
  text_split_text_ffi(TJsValue::to_js(self), TJsValue::to_js(offset))
}

/// [Text.wholeText](https://developer.mozilla.org/en-US/docs/Web/API/Text/wholeText)
impl TText with whole_text(self : Self) -> String {
  text_whole_text_ffi(TJsValue::to_js(self))
}

/// [Text.assignedSlot](https://developer.mozilla.org/en-US/docs/Web/API/Text/assignedSlot)
impl TText with assigned_slot(self : Self) -> HTMLSlotElement {
  text_assigned_slot_ffi(TJsValue::to_js(self))
}

/// [Text.getBoxQuads](https://developer.mozilla.org/en-US/docs/Web/API/Text/getBoxQuads)
impl TText with get_box_quads(self : Self, 
options? : BoxQuadOptions) -> Array[DOMQuad] {
  text_get_box_quads_ffi(TJsValue::to_js(self), opt_to_js(options))
}

/// [Text.convertQuadFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Text/convertQuadFromNode)
impl TText with convert_quad_from_node(self : Self, 
quad : DOMQuadInit, 
from : &TGeometryNode, 
options? : ConvertCoordinateOptions) -> DOMQuad {
  text_convert_quad_from_node_ffi(TJsValue::to_js(self), TJsValue::to_js(quad), from.to_js(), opt_to_js(options))
}

/// [Text.convertRectFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Text/convertRectFromNode)
impl TText with convert_rect_from_node(self : Self, 
rect : &TDOMRectReadOnly, 
from : &TGeometryNode, 
options? : ConvertCoordinateOptions) -> DOMQuad {
  text_convert_rect_from_node_ffi(TJsValue::to_js(self), TJsValue::to_js(rect), from.to_js(), opt_to_js(options))
}

/// [Text.convertPointFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Text/convertPointFromNode)
impl TText with convert_point_from_node(self : Self, 
point : DOMPointInit, 
from : &TGeometryNode, 
options? : ConvertCoordinateOptions) -> DOMPoint {
  text_convert_point_from_node_ffi(TJsValue::to_js(self), TJsValue::to_js(point), from.to_js(), opt_to_js(options))
}