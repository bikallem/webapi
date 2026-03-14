// Do not edit. This file is generated.
// MoonBit type: Text
// Specifications: dom.idl

/// [Text](https://developer.mozilla.org/en-US/docs/Web/API/Text)
#external
pub type Text

pub impl TJsValue for Text with to_js(self: Text) -> JsValue = "%identity"

pub impl FromJsAny for Text with from_js_any(value : JsAny) -> Text = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TText] Text::into(self : Text) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TText] Text::unsafe_into(self : Text) -> T = "%identity"

pub impl HasConstructor for Text with constructor_name() { "Text" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TText + HasConstructor] Text::try_into(self : Text) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

#cfg(target="js")
extern "js" fn text_new_ffi(data: JsValue) -> Text = "(data) => new Text(data)"

#cfg(target="js")
extern "js" fn text_split_text_ffi_js(obj: JsValue, offset: JsValue) -> JsValue = "(obj, offset) => obj.splitText(offset)"

///|
#cfg(target="js")
fn text_split_text_ffi(obj: JsValue, offset: JsValue) -> Text {
  text_split_text_ffi_js(obj, offset).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_whole_text_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.wholeText"

///|
#cfg(target="js")
fn text_whole_text_ffi(obj: JsValue) -> String {
  text_whole_text_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_assigned_slot_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.assignedSlot"

///|
#cfg(target="js")
fn text_assigned_slot_ffi(obj: JsValue) -> HTMLSlotElement {
  text_assigned_slot_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_get_box_quads_ffi_js(obj: JsValue, options: JsValue) -> JsValue = "(obj, options) => obj.getBoxQuads(options)"

///|
#cfg(target="js")
fn text_get_box_quads_ffi(obj: JsValue, options: JsValue) -> Array[DOMQuad] {
  text_get_box_quads_ffi_js(obj, options).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_convert_quad_from_node_ffi_js(obj: JsValue, quad: JsValue, from: JsValue, options: JsValue) -> JsValue = "(obj, quad, from, options) => obj.convertQuadFromNode(quad, from, options)"

///|
#cfg(target="js")
fn text_convert_quad_from_node_ffi(obj: JsValue, quad: JsValue, from: JsValue, options: JsValue) -> DOMQuad {
  text_convert_quad_from_node_ffi_js(obj, quad, from, options).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_convert_rect_from_node_ffi_js(obj: JsValue, rect: JsValue, from: JsValue, options: JsValue) -> JsValue = "(obj, rect, from, options) => obj.convertRectFromNode(rect, from, options)"

///|
#cfg(target="js")
fn text_convert_rect_from_node_ffi(obj: JsValue, rect: JsValue, from: JsValue, options: JsValue) -> DOMQuad {
  text_convert_rect_from_node_ffi_js(obj, rect, from, options).unsafe_cast()
}

#cfg(target="js")
extern "js" fn text_convert_point_from_node_ffi_js(obj: JsValue, point: JsValue, from: JsValue, options: JsValue) -> JsValue = "(obj, point, from, options) => obj.convertPointFromNode(point, from, options)"

///|
#cfg(target="js")
fn text_convert_point_from_node_ffi(obj: JsValue, point: JsValue, from: JsValue, options: JsValue) -> DOMPoint {
  text_convert_point_from_node_ffi_js(obj, point, from, options).unsafe_cast()
}

#cfg(target="wasm-gc")
fn text_new_ffi(data: JsValue) -> Text = "webapi_Text" "new"

#cfg(target="wasm-gc")
fn text_split_text_ffi(obj: JsValue, offset: JsValue) -> Text = "webapi_Text" "splitText"

#cfg(target="wasm-gc")
fn text_whole_text_ffi_wasm(obj: JsValue) -> JsValue = "webapi_Text" "get_wholeText"

///|
#cfg(target="wasm-gc")
fn text_whole_text_ffi(obj: JsValue) -> String {
  jsvalue_to_string(text_whole_text_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn text_assigned_slot_ffi(obj: JsValue) -> HTMLSlotElement = "webapi_Text" "get_assignedSlot"

#cfg(target="wasm-gc")
fn text_get_box_quads_ffi_wasm(obj: JsValue, options: JsValue) -> JsArray = "webapi_Text" "getBoxQuads"

///|
#cfg(target="wasm-gc")
fn text_get_box_quads_ffi(obj: JsValue, options: JsValue) -> Array[DOMQuad] {
  text_get_box_quads_ffi_wasm(obj, options).to_array()
}

#cfg(target="wasm-gc")
fn text_convert_quad_from_node_ffi(obj: JsValue, quad: JsValue, from: JsValue, options: JsValue) -> DOMQuad = "webapi_Text" "convertQuadFromNode"

#cfg(target="wasm-gc")
fn text_convert_rect_from_node_ffi(obj: JsValue, rect: JsValue, from: JsValue, options: JsValue) -> DOMQuad = "webapi_Text" "convertRectFromNode"

#cfg(target="wasm-gc")
fn text_convert_point_from_node_ffi(obj: JsValue, point: JsValue, from: JsValue, options: JsValue) -> DOMPoint = "webapi_Text" "convertPointFromNode"