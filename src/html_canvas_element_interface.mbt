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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLCanvasElement] HTMLCanvasElement::into(
  self : HTMLCanvasElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLCanvasElement] HTMLCanvasElement::unsafe_into(
  self : HTMLCanvasElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLCanvasElement with constructor_name() {
  "HTMLCanvasElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLCanvasElement + HasConstructor] HTMLCanvasElement::try_into(
  self : HTMLCanvasElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
    _callback : (Blob) -> Unit,
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
  html_canvas_element_get_context_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(context_id),
    opt_to_js(options),
  ).to_option()
}

///|
/// [HTMLCanvasElement.toDataURL](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/toDataURL)
impl THTMLCanvasElement with to_data_url(
  self : Self,
  type_? : String,
  quality? : JsValue,
) -> String {
  html_canvas_element_to_data_url_ffi(
    TJsValue::to_js(self),
    opt_to_js(type_),
    opt_to_js(quality),
  )
}

///|
/// [HTMLCanvasElement.toBlob](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/toBlob)
impl THTMLCanvasElement with to_blob(
  self : Self,
  _callback : (Blob) -> Unit,
  type_? : String,
  quality? : JsValue,
) -> Unit {
  html_canvas_element_to_blob_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(blob_callback_ffi(_callback)),
    opt_to_js(type_),
    opt_to_js(quality),
  )
}

///|
/// [HTMLCanvasElement.transferControlToOffscreen](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/transferControlToOffscreen)
impl THTMLCanvasElement with transfer_control_to_offscreen(self : Self) -> OffscreenCanvas {
  html_canvas_element_transfer_control_to_offscreen_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn html_canvas_element_new_ffi() -> HTMLCanvasElement = "() => new HTMLCanvasElement()"

///|
#cfg(target="js")
extern "js" fn html_canvas_element_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn html_canvas_element_width_ffi(obj : JsValue) -> UInt {
  html_canvas_element_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_canvas_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
#cfg(target="js")
extern "js" fn html_canvas_element_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn html_canvas_element_height_ffi(obj : JsValue) -> UInt {
  html_canvas_element_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_canvas_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
#cfg(target="js")
extern "js" fn html_canvas_element_get_context_ffi(
  obj : JsValue,
  context_id : JsValue,
  options : JsValue,
) -> JsValue = "(obj, context_id, options) => obj.getContext(context_id, options)"

///|
#cfg(target="js")
extern "js" fn html_canvas_element_to_data_url_ffi_js(
  obj : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> JsValue = "(obj, type_, quality) => obj.toDataURL(type_, quality)"

///|
#cfg(target="js")
fn html_canvas_element_to_data_url_ffi(
  obj : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> String {
  html_canvas_element_to_data_url_ffi_js(obj, type_, quality).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_canvas_element_to_blob_ffi(
  obj : JsValue,
  _callback : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> Unit = "(obj, _callback, type_, quality) => obj.toBlob(_callback, type_, quality)"

///|
#cfg(target="js")
extern "js" fn html_canvas_element_transfer_control_to_offscreen_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.transferControlToOffscreen()"

///|
#cfg(target="js")
fn html_canvas_element_transfer_control_to_offscreen_ffi(
  obj : JsValue,
) -> OffscreenCanvas {
  html_canvas_element_transfer_control_to_offscreen_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_canvas_element_new_ffi() -> HTMLCanvasElement = "webapi_HTMLCanvasElement" "new"

///|
#cfg(target="wasm-gc")
fn html_canvas_element_width_ffi(obj : JsValue) -> UInt = "webapi_HTMLCanvasElement" "get_width"

///|
#cfg(target="wasm-gc")
fn html_canvas_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLCanvasElement" "set_width"

///|
#cfg(target="wasm-gc")
fn html_canvas_element_height_ffi(obj : JsValue) -> UInt = "webapi_HTMLCanvasElement" "get_height"

///|
#cfg(target="wasm-gc")
fn html_canvas_element_set_height_ffi(obj : JsValue, height : JsValue) -> Unit = "webapi_HTMLCanvasElement" "set_height"

///|
#cfg(target="wasm-gc")
fn html_canvas_element_get_context_ffi(
  obj : JsValue,
  context_id : JsValue,
  options : JsValue,
) -> JsValue = "webapi_HTMLCanvasElement" "getContext"

///|
#cfg(target="wasm-gc")
fn html_canvas_element_to_data_url_ffi_wasm(
  obj : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> JsValue = "webapi_HTMLCanvasElement" "toDataURL"

///|
#cfg(target="wasm-gc")
fn html_canvas_element_to_data_url_ffi(
  obj : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> String {
  jsvalue_to_string(
    html_canvas_element_to_data_url_ffi_wasm(obj, type_, quality),
  )
}

///|
#cfg(target="wasm-gc")
fn html_canvas_element_to_blob_ffi(
  obj : JsValue,
  _callback : JsValue,
  type_ : JsValue,
  quality : JsValue,
) -> Unit = "webapi_HTMLCanvasElement" "toBlob"

///|
#cfg(target="wasm-gc")
fn html_canvas_element_transfer_control_to_offscreen_ffi(
  obj : JsValue,
) -> OffscreenCanvas = "webapi_HTMLCanvasElement" "transferControlToOffscreen"
