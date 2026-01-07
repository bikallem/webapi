// Do not edit. This file is generated.
// MoonBit type: Text
// Specifications: dom.idl

///|
/// [Text](https://developer.mozilla.org/en-US/docs/Web/API/Text)
#external
pub type Text

///|
pub impl TJsValue for Text with to_js(self : Text) -> JsValue = "%identity"

///|
pub fn[T : TText] Text::into(self : Text) -> T = "%identity"

///|
pub impl TText for Text

///|
pub impl TCharacterData for Text

///|
pub impl TNode for Text

///|
pub impl TEventTarget for Text

///|
extern "js" fn text_new_ffi(data : JsValue) -> Text = "(data) => new Text(data)"

///|
pub fn Text::new(data? : String = "") -> Text {
  text_new_ffi(TJsValue::to_js(data))
}

///|
/// [Text](https://developer.mozilla.org/en-US/docs/Web/API/Text) interface.
pub trait TText: TCharacterData {
  split_text(self : Self, offset : UInt) -> Text = _
  whole_text(self : Self) -> String = _
  assigned_slot(self : Self) -> HTMLSlotElement = _
  get_box_quads(self : Self, options? : BoxQuadOptions) -> Array[DOMQuad] = _
  convert_quad_from_node(
    self : Self,
    quad : DOMQuadInit,
    from : GeometryNode,
    options? : ConvertCoordinateOptions,
  ) -> DOMQuad = _
  convert_rect_from_node(
    self : Self,
    rect : &TDOMRectReadOnly,
    from : GeometryNode,
    options? : ConvertCoordinateOptions,
  ) -> DOMQuad = _
  convert_point_from_node(
    self : Self,
    point : DOMPointInit,
    from : GeometryNode,
    options? : ConvertCoordinateOptions,
  ) -> DOMPoint = _
}

///|
extern "js" fn text_split_text_ffi(obj : JsValue, offset : JsValue) -> Text = "(obj, offset) => obj.splitText(offset)"

///|
/// [Text.splitText](https://developer.mozilla.org/en-US/docs/Web/API/Text/splitText)
impl TText with split_text(self : Self, offset : UInt) -> Text {
  text_split_text_ffi(TJsValue::to_js(self), TJsValue::to_js(offset))
}

///|
extern "js" fn text_whole_text_ffi(obj : JsValue) -> String = "(obj) => obj.wholeText"

///|
/// [Text.wholeText](https://developer.mozilla.org/en-US/docs/Web/API/Text/wholeText)
impl TText with whole_text(self : Self) -> String {
  text_whole_text_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_assigned_slot_ffi(obj : JsValue) -> HTMLSlotElement = "(obj) => obj.assignedSlot"

///|
/// [Text.assignedSlot](https://developer.mozilla.org/en-US/docs/Web/API/Text/assignedSlot)
impl TText with assigned_slot(self : Self) -> HTMLSlotElement {
  text_assigned_slot_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn text_get_box_quads_ffi(
  obj : JsValue,
  options : JsValue,
) -> Array[DOMQuad] = "(obj, options) => obj.getBoxQuads(options)"

///|
/// [Text.getBoxQuads](https://developer.mozilla.org/en-US/docs/Web/API/Text/getBoxQuads)
impl TText with get_box_quads(
  self : Self,
  options? : BoxQuadOptions = BoxQuadOptions::empty(),
) -> Array[DOMQuad] {
  text_get_box_quads_ffi(TJsValue::to_js(self), TJsValue::to_js(options))
}

///|
extern "js" fn text_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad = "(obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options)"

///|
/// [Text.convertQuadFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Text/convertQuadFromNode)
impl TText with convert_quad_from_node(
  self : Self,
  quad : DOMQuadInit,
  from : GeometryNode,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> DOMQuad {
  text_convert_quad_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(quad),
    TJsValue::to_js(from),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn text_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMQuad = "(obj, rect, from, options) => obj.convertRectFromNode(rect, from, options)"

///|
/// [Text.convertRectFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Text/convertRectFromNode)
impl TText with convert_rect_from_node(
  self : Self,
  rect : &TDOMRectReadOnly,
  from : GeometryNode,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> DOMQuad {
  text_convert_rect_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(rect),
    TJsValue::to_js(from),
    TJsValue::to_js(options),
  )
}

///|
extern "js" fn text_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> DOMPoint = "(obj, point, from, options) => obj.convertPointFromNode(point, from, options)"

///|
/// [Text.convertPointFromNode](https://developer.mozilla.org/en-US/docs/Web/API/Text/convertPointFromNode)
impl TText with convert_point_from_node(
  self : Self,
  point : DOMPointInit,
  from : GeometryNode,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> DOMPoint {
  text_convert_point_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(point),
    TJsValue::to_js(from),
    TJsValue::to_js(options),
  )
}
