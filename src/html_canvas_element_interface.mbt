// Do not edit. This file is generated.
// MoonBit type: HTMLCanvasElement
// Specifications: html.idl

///|
/// [HTMLCanvasElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement)
#external
pub type HTMLCanvasElement

///|
pub impl TJsValue for HTMLCanvasElement with to_js(self : HTMLCanvasElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLCanvasElement with from_js_any(value : JsAny) -> HTMLCanvasElement = "%identity"

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
pub fn HTMLCanvasElement::new() -> HTMLCanvasElement {
  html_canvas_element_new_ffi()
}

///|
/// [HTMLCanvasElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement) interface.
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
/// [HTMLCanvasElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/width)
impl THTMLCanvasElement with width(self : Self) -> UInt {
  html_canvas_element_width_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLCanvasElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/width)
impl THTMLCanvasElement with set_width(self : Self, width : UInt) -> Unit {
  html_canvas_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
/// [HTMLCanvasElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/height)
impl THTMLCanvasElement with height(self : Self) -> UInt {
  html_canvas_element_height_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLCanvasElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/height)
impl THTMLCanvasElement with set_height(self : Self, height : UInt) -> Unit {
  html_canvas_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
/// [HTMLCanvasElement.getContext](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/getContext)
impl THTMLCanvasElement with get_context(
  self : Self,
  context_id : String,
  options? : JsValue,
) -> RenderingContext? {
  let result = html_canvas_element_get_context_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(context_id),
    opt_to_js(options),
  )
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
/// [HTMLCanvasElement.toDataURL](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/toDataURL)
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
/// [HTMLCanvasElement.toBlob](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/toBlob)
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
/// [HTMLCanvasElement.transferControlToOffscreen](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/transferControlToOffscreen)
impl THTMLCanvasElement with transfer_control_to_offscreen(self : Self) -> OffscreenCanvas {
  html_canvas_element_transfer_control_to_offscreen_ffi(TJsValue::to_js(self))
}
