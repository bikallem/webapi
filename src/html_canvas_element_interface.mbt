// Do not edit. This file is generated.
// MoonBit type: HTMLCanvasElement
// Specifications: html.idl

///|
#external
pub type HTMLCanvasElement

///|
pub impl TJsValue for HTMLCanvasElement with to_js(self : HTMLCanvasElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLCanvasElement] HTMLCanvasElement::into(
  self : HTMLCanvasElement,
) -> T = "%identity"

///|
pub impl THTMLCanvasElement for HTMLCanvasElement

///|
pub impl THTMLElement for HTMLCanvasElement

///|
pub impl TElement for HTMLCanvasElement

///|
pub impl TNode for HTMLCanvasElement

///|
pub impl TEventTarget for HTMLCanvasElement

///|
extern "js" fn html_canvas_element_new_ffi() -> HTMLCanvasElement = "() => new HTMLCanvasElement()"

///|
pub fn HTMLCanvasElement::new() -> HTMLCanvasElement {
  html_canvas_element_new_ffi()
}

///|
pub trait THTMLCanvasElement: THTMLElement {
  width(self : Self) -> UInt = _
  set_width(self : Self, width : UInt) -> Unit = _
  height(self : Self) -> UInt = _
  set_height(self : Self, height : UInt) -> Unit = _
  get_context(self : Self, context_id : String, options? : JsValue) -> RenderingContext? = _
  to_data_url(self : Self, type_? : String, quality? : JsValue) -> String = _
  to_blob(
    self : Self,
    _callback : BlobCallback,
    type_? : String,
    quality? : JsValue,
  ) -> Unit = _
  transfer_control_to_offscreen(self : Self) -> OffscreenCanvas = _
}

///|
extern "js" fn html_canvas_element_width_ffi(obj : JsValue) -> UInt = "(obj) => obj.width"

///|
impl THTMLCanvasElement with width(self : Self) -> UInt {
  html_canvas_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_canvas_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
impl THTMLCanvasElement with set_width(self : Self, width : UInt) -> Unit {
  html_canvas_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
extern "js" fn html_canvas_element_height_ffi(obj : JsValue) -> UInt = "(obj) => obj.height"

///|
impl THTMLCanvasElement with height(self : Self) -> UInt {
  html_canvas_element_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_canvas_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
impl THTMLCanvasElement with set_height(self : Self, height : UInt) -> Unit {
  html_canvas_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
extern "js" fn html_canvas_element_get_context_ffi(
  obj : JsValue,
  context_id : JsValue,
  options : JsValue,
) -> JsValue = "(obj, context_id, options) => obj.getContext(obj, context_id, options)"

///|
impl THTMLCanvasElement with get_context(
  self : Self,
  context_id : String,
  options? : JsValue = JsValue::null(),
) -> RenderingContext? {
  let result = html_canvas_element_get_context_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(context_id),
    TJsValue::to_js(options),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
extern "js" fn html_canvas_element_to_data_url_ffi(
  obj : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> String = "(obj, type_, quality) => obj.toDataURL(obj, type_, quality)"

///|
impl THTMLCanvasElement with to_data_url(
  self : Self,
  type_? : String = "image/png",
  quality? : JsValue,
) -> String {
  html_canvas_element_to_data_url_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
    opt_to_js(quality),
  )
}

///|
extern "js" fn html_canvas_element_to_blob_ffi(
  obj : JsValue,
  _callback : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> Unit = "(obj, _callback, type_, quality) => obj.toBlob(obj, _callback, type_, quality)"

///|
impl THTMLCanvasElement with to_blob(
  self : Self,
  _callback : BlobCallback,
  type_? : String = "image/png",
  quality? : JsValue,
) -> Unit {
  html_canvas_element_to_blob_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(_callback),
    TJsValue::to_js(type_),
    opt_to_js(quality),
  )
}

///|
extern "js" fn html_canvas_element_transfer_control_to_offscreen_ffi(
  obj : JsValue,
) -> OffscreenCanvas = "(obj) => obj.transferControlToOffscreen(obj)"

///|
impl THTMLCanvasElement with transfer_control_to_offscreen(self : Self) -> OffscreenCanvas {
  html_canvas_element_transfer_control_to_offscreen_ffi(TJsValue::to_js(self))
}
