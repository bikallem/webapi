///|
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
extern "js" fn text_ffi(data : JsValue) -> Text = "(data) => new Text(data)"

///|
pub fn Text::new(data? : String = "") -> Text {
  text_ffi(TJsValue::to_js(data))
}

///|
pub trait TText: TCharacterData {
  split_text(self : Self, offset : UInt) -> Text = _
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
extern "js" fn text_split_text_ffi(obj : JsValue, offset : JsValue) -> Text = "(obj, offset) => obj.splitText(obj, offset)"

///|
impl TText with split_text(self : Self, offset : UInt) -> Text {
  text_split_text_ffi(TJsValue::to_js(self), TJsValue::to_js(offset))
}

///|
extern "js" fn text_get_box_quads_ffi(
  obj : JsValue,
  options : JsValue,
) -> Array[DOMQuad] = "(obj, options) => obj.getBoxQuads(obj, options)"

///|
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
) -> DOMQuad = "(obj, quad, from, options) => obj.convertQuadFromNode(obj, quad, from, options)"

///|
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
) -> DOMQuad = "(obj, rect, from, options) => obj.convertRectFromNode(obj, rect, from, options)"

///|
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
) -> DOMPoint = "(obj, point, from, options) => obj.convertPointFromNode(obj, point, from, options)"

///|
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
