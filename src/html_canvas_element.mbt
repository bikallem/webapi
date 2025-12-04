// Auto-generated MoonBit bindings for HTMLCanvasElement

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface HTMLCanvasElement : HTMLElement {
//   [HTMLConstructor] constructor();
// 
//   [CEReactions] attribute unsigned long width;
//   [CEReactions] attribute unsigned long height;
// 
//   RenderingContext? getContext(DOMString contextId, optional any options = null);
// 
//   USVString toDataURL(optional DOMString type = "image/png", optional any quality);
//   undefined toBlob(BlobCallback _callback, optional DOMString type = "image/png", optional any quality);
//   OffscreenCanvas transferControlToOffscreen();
// };

///|
#external
pub type HTMLCanvasElement

///|
pub trait THTMLCanvasElement: TJsValue + THTMLElement {
  width(self : Self) -> UInt = _
  set_width(self : Self, value : UInt) -> Unit = _
  height(self : Self) -> UInt = _
  set_height(self : Self, value : UInt) -> Unit = _
  get_context(self : Self, context_id : String, options? : JsValue) -> RenderingContext? = _
  to_data_url(self : Self, type_? : String, quality? : JsValue) -> String = _
  to_blob(self : Self, callback : JsValue, type_? : String, quality? : JsValue) -> Unit = _
  transfer_control_to_offscreen(self : Self) -> OffscreenCanvas = _
}

///|
pub impl TEventTarget for HTMLCanvasElement

///|
pub impl TNode for HTMLCanvasElement

///|
pub impl TElement for HTMLCanvasElement

///|
pub impl THTMLElement for HTMLCanvasElement

///|
pub impl THTMLCanvasElement for HTMLCanvasElement

///|
pub impl TJsValue for HTMLCanvasElement with to_js(self : HTMLCanvasElement) -> JsValue = "%identity"

///|
pub fn HTMLCanvasElement::new() -> HTMLCanvasElement = "webapi_HTMLCanvasElement" "new"

///|
fn html_canvas_element_get_context_ffi(
  obj : JsValue,
  context_id : JsValue,
  options : JsValue,
) -> JsValue = "webapi_HTMLCanvasElement" "getContext"

///|
impl THTMLCanvasElement with get_context(
  self : Self,
  context_id : String,
  options? : JsValue,
) -> RenderingContext? {
  let options_js = opt_to_js(options)
  html_canvas_element_get_context_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(context_id),
    options_js,
  ).as_option()
}

///|
fn html_canvas_element_to_data_url_ffi(
  obj : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> JsValue = "webapi_HTMLCanvasElement" "toDataURL"

///|
impl THTMLCanvasElement with to_data_url(
  self : Self,
  type_? : String,
  quality? : JsValue,
) -> String {
  let type__js = opt_to_js(type_)
  let quality_js = opt_to_js(quality)
  html_canvas_element_to_data_url_ffi(
    TJsValue::to_js(self),
    type__js,
    quality_js,
  ).unsafe_cast()
}

///|
fn html_canvas_element_to_blob_ffi(
  obj : JsValue,
  callback : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> Unit = "webapi_HTMLCanvasElement" "toBlob"

///|
impl THTMLCanvasElement with to_blob(
  self : Self,
  callback : JsValue,
  type_? : String,
  quality? : JsValue,
) -> Unit {
  let type__js = opt_to_js(type_)
  let quality_js = opt_to_js(quality)
  html_canvas_element_to_blob_ffi(
    TJsValue::to_js(self),
    callback,
    type__js,
    quality_js,
  )
}

///|
fn html_canvas_element_transfer_control_to_offscreen_ffi(
  obj : JsValue,
) -> JsValue = "webapi_HTMLCanvasElement" "transferControlToOffscreen"

///|
impl THTMLCanvasElement with transfer_control_to_offscreen(self : Self) -> OffscreenCanvas {
  html_canvas_element_transfer_control_to_offscreen_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn html_canvas_element_width_ffi(obj : JsValue) -> JsValue = "webapi_HTMLCanvasElement" "width"

///|
impl THTMLCanvasElement with width(self : Self) -> UInt {
  html_canvas_element_width_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_canvas_element_set_width_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLCanvasElement" "set_width"

///|
impl THTMLCanvasElement with set_width(self : Self, value : UInt) -> Unit {
  html_canvas_element_set_width_ffi(self.to_js(), TJsValue::to_js(value))
}

///|
fn html_canvas_element_height_ffi(obj : JsValue) -> JsValue = "webapi_HTMLCanvasElement" "height"

///|
impl THTMLCanvasElement with height(self : Self) -> UInt {
  html_canvas_element_height_ffi(self.to_js()).unsafe_cast()
}

///|
fn html_canvas_element_set_height_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_HTMLCanvasElement" "set_height"

///|
impl THTMLCanvasElement with set_height(self : Self, value : UInt) -> Unit {
  html_canvas_element_set_height_ffi(self.to_js(), TJsValue::to_js(value))
}
