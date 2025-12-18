// Auto-generated MoonBit bindings for HTMLCanvasElement interface
// Do not edit manually

#external
pub type HTMLCanvasElement

pub impl TJsValue for HTMLCanvasElement with to_js(self: HTMLCanvasElement) -> JsValue = "%identity"


pub fn[T: THTMLCanvasElement] HTMLCanvasElement::into(self : HTMLCanvasElement) -> T = "%identity"
pub impl THTMLCanvasElement for HTMLCanvasElement

pub fn HTMLCanvasElement::new() -> HTMLCanvasElement = "webapi_HTMLCanvasElement" "new"

pub trait THTMLCanvasElement: TJsValue + TTHTMLElement {
  width(self: Self) -> UInt = _
  set_width(self: Self, value : UInt) -> Unit = _
  height(self: Self) -> UInt = _
  set_height(self: Self, value : UInt) -> Unit = _
  get_context(self: Self, context_id : String, options? : JsValue) -> RenderingContext = _
  to_data_url(self: Self, type_? : String, quality? : JsValue) -> String = _
  to_blob(self: Self, _callback : BlobCallback, type_? : String, quality? : JsValue) -> Unit = _
  transfer_control_to_offscreen(self: Self) -> OffscreenCanvas = _
}

///|
fn html_canvas_element_width_ffi(obj : JsValue) -> UInt = "webapi_HTMLCanvasElement" "width"

///|
impl THTMLCanvasElement with width(self : Self) -> UInt {
  html_canvas_element_width_ffi(self.to_js())
}

///|
fn html_canvas_element_set_width_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLCanvasElement" "set_width"

///|
impl THTMLCanvasElement with set_width(self : Self, value : UInt) -> Unit {
  html_canvas_element_set_width_ffi(self.to_js(), value)
}

///|
fn html_canvas_element_height_ffi(obj : JsValue) -> UInt = "webapi_HTMLCanvasElement" "height"

///|
impl THTMLCanvasElement with height(self : Self) -> UInt {
  html_canvas_element_height_ffi(self.to_js())
}

///|
fn html_canvas_element_set_height_ffi(obj : JsValue, value : UInt) -> Unit = "webapi_HTMLCanvasElement" "set_height"

///|
impl THTMLCanvasElement with set_height(self : Self, value : UInt) -> Unit {
  html_canvas_element_set_height_ffi(self.to_js(), value)
}

///|
fn html_canvas_element_get_context_ffi(obj : JsValue, context_id : JsValue, options : JsValue) -> JsValue = "webapi_HTMLCanvasElement" "getContext"

///|
impl THTMLCanvasElement with get_context(self : Self, context_id : String, options? : JsValue) -> RenderingContext {
  html_canvas_element_get_context_ffi(self.to_js(), TJsValue::to_js(context_id), TJsValue::to_js(options)).unsafe_cast()
}

///|
fn html_canvas_element_to_data_url_ffi(obj : JsValue, type_ : JsValue, quality : JsValue) -> String = "webapi_HTMLCanvasElement" "toDataURL"

///|
impl THTMLCanvasElement with to_data_url(self : Self, type_? : String, quality? : JsValue) -> String {
  html_canvas_element_to_data_url_ffi(self.to_js(), TJsValue::to_js(type_), TJsValue::to_js(quality))
}

///|
fn html_canvas_element_to_blob_ffi(obj : JsValue, _callback : JsValue, type_ : JsValue, quality : JsValue) -> Unit = "webapi_HTMLCanvasElement" "toBlob"

///|
impl THTMLCanvasElement with to_blob(self : Self, _callback : BlobCallback, type_? : String, quality? : JsValue) -> Unit {
  html_canvas_element_to_blob_ffi(self.to_js(), TJsValue::to_js(_callback), TJsValue::to_js(type_), TJsValue::to_js(quality))
}

///|
fn html_canvas_element_transfer_control_to_offscreen_ffi(obj : JsValue) -> JsValue = "webapi_HTMLCanvasElement" "transferControlToOffscreen"

///|
impl THTMLCanvasElement with transfer_control_to_offscreen(self : Self) -> OffscreenCanvas {
  html_canvas_element_transfer_control_to_offscreen_ffi(self.to_js()).unsafe_cast()
}