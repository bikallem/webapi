// Auto-generated MoonBit bindings for Text

// Do not edit manually

///|
#external
pub type Text

///|
pub trait TText: TJsValue + TCharacterData {
  whole_text(self : Self) -> String = _
  assigned_slot(self : Self) -> HTMLSlotElement? = _
  split_text(self : Self, offset : UInt) -> Text = _
  get_box_quads(self : Self, options? : BoxQuadOptions) -> Array[JsValue] = _
  convert_quad_from_node(
    self : Self,
    quad : DOMQuadInit,
    from : JsValue,
    options? : ConvertCoordinateOptions,
  ) -> JsValue = _
  convert_rect_from_node(
    self : Self,
    rect : JsValue,
    from : JsValue,
    options? : ConvertCoordinateOptions,
  ) -> JsValue = _
  convert_point_from_node(
    self : Self,
    point : DOMPointInit,
    from : JsValue,
    options? : ConvertCoordinateOptions,
  ) -> JsValue = _
}

///|
pub fn[T : TText] Text::into(self : Text) -> T = "%identity"

///|
pub impl TEventTarget for Text

///|
pub impl TNode for Text

///|
pub impl TCharacterData for Text

///|
pub impl TText for Text

///|
pub impl TJsValue for Text with to_js(self : Text) -> JsValue = "%identity"

///|
pub fn Text::null() -> Text {
  JsValue::null()
}

///|
fn text_new_ffi(data : JsValue) -> Text = "webapi_Text" "new"

///|
pub fn Text::new(data? : String = "") -> Text {
  text_new_ffi(TJsValue::to_js(data))
}

///|
fn text_split_text_ffi(obj : JsValue, offset : JsValue) -> JsValue = "webapi_Text" "splitText"

///|
impl TText with split_text(self : Self, offset : UInt) -> Text {
  text_split_text_ffi(TJsValue::to_js(self), TJsValue::to_js(offset)).unsafe_cast()
}

///|
fn text_get_box_quads_ffi(obj : JsValue, options : JsValue) -> JsValue = "webapi_Text" "getBoxQuads"

///|
impl TText with get_box_quads(
  self : Self,
  options? : BoxQuadOptions = BoxQuadOptions::empty(),
) -> Array[JsValue] {
  text_get_box_quads_ffi(TJsValue::to_js(self), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn text_convert_quad_from_node_ffi(
  obj : JsValue,
  quad : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Text" "convertQuadFromNode"

///|
impl TText with convert_quad_from_node(
  self : Self,
  quad : DOMQuadInit,
  from : JsValue,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> JsValue {
  text_convert_quad_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(quad),
    from,
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
fn text_convert_rect_from_node_ffi(
  obj : JsValue,
  rect : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Text" "convertRectFromNode"

///|
impl TText with convert_rect_from_node(
  self : Self,
  rect : JsValue,
  from : JsValue,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> JsValue {
  text_convert_rect_from_node_ffi(
    TJsValue::to_js(self),
    rect,
    from,
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
fn text_convert_point_from_node_ffi(
  obj : JsValue,
  point : JsValue,
  from : JsValue,
  options : JsValue,
) -> JsValue = "webapi_Text" "convertPointFromNode"

///|
impl TText with convert_point_from_node(
  self : Self,
  point : DOMPointInit,
  from : JsValue,
  options? : ConvertCoordinateOptions = ConvertCoordinateOptions::empty(),
) -> JsValue {
  text_convert_point_from_node_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(point),
    from,
    TJsValue::to_js(options),
  ).unsafe_cast()
}

///|
fn text_whole_text_ffi(obj : JsValue) -> String = "webapi_Text" "wholeText"

///|
impl TText with whole_text(self : Self) -> String {
  text_whole_text_ffi(self.to_js())
}

///|
fn text_assigned_slot_ffi(obj : JsValue) -> JsValue = "webapi_Text" "assignedSlot"

///|
impl TText with assigned_slot(self : Self) -> HTMLSlotElement? {
  text_assigned_slot_ffi(self.to_js()).as_option()
}
