// Do not edit. This file is generated.
// MoonBit type: HTMLImageElement
// Specifications: cssom-view.idl, html.idl

///|
/// [HTMLImageElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement)
#external
pub type HTMLImageElement

///|
pub impl TJsValue for HTMLImageElement with to_js(self : HTMLImageElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLImageElement] HTMLImageElement::into(
  self : HTMLImageElement,
) -> T = "%identity"

///|
pub impl THTMLImageElement for HTMLImageElement

///|
pub impl THTMLElement for HTMLImageElement

///|
pub impl TElement for HTMLImageElement

///|
pub impl TNode for HTMLImageElement

///|
pub impl TEventTarget for HTMLImageElement

///|
pub fn HTMLImageElement::new() -> HTMLImageElement {
  html_image_element_new_ffi()
}

///|
/// [HTMLImageElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement) interface.
pub trait THTMLImageElement: THTMLElement {
  alt(self : Self) -> String = _
  set_alt(self : Self, alt : String) -> Unit = _
  src(self : Self) -> String = _
  set_src(self : Self, src : String) -> Unit = _
  srcset(self : Self) -> String = _
  set_srcset(self : Self, srcset : String) -> Unit = _
  sizes(self : Self) -> String = _
  set_sizes(self : Self, sizes : String) -> Unit = _
  cross_origin(self : Self) -> String = _
  set_cross_origin(self : Self, cross_origin : String) -> Unit = _
  use_map(self : Self) -> String = _
  set_use_map(self : Self, use_map : String) -> Unit = _
  is_map(self : Self) -> Bool = _
  set_is_map(self : Self, is_map : Bool) -> Unit = _
  width(self : Self) -> UInt = _
  set_width(self : Self, width : UInt) -> Unit = _
  height(self : Self) -> UInt = _
  set_height(self : Self, height : UInt) -> Unit = _
  natural_width(self : Self) -> UInt = _
  natural_height(self : Self) -> UInt = _
  complete(self : Self) -> Bool = _
  current_src(self : Self) -> String = _
  referrer_policy(self : Self) -> String = _
  set_referrer_policy(self : Self, referrer_policy : String) -> Unit = _
  decoding(self : Self) -> String = _
  set_decoding(self : Self, decoding : String) -> Unit = _
  loading(self : Self) -> String = _
  set_loading(self : Self, loading : String) -> Unit = _
  fetch_priority(self : Self) -> String = _
  set_fetch_priority(self : Self, fetch_priority : String) -> Unit = _
  decode(self : Self) -> JsPromise[Unit] = _
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  lowsrc(self : Self) -> String = _
  set_lowsrc(self : Self, lowsrc : String) -> Unit = _
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  hspace(self : Self) -> UInt = _
  set_hspace(self : Self, hspace : UInt) -> Unit = _
  vspace(self : Self) -> UInt = _
  set_vspace(self : Self, vspace : UInt) -> Unit = _
  long_desc(self : Self) -> String = _
  set_long_desc(self : Self, long_desc : String) -> Unit = _
  border(self : Self) -> String = _
  set_border(self : Self, border : String) -> Unit = _
  x(self : Self) -> Int = _
  y(self : Self) -> Int = _
}

///|
/// [HTMLImageElement.alt](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/alt)
impl THTMLImageElement with alt(self : Self) -> String {
  html_image_element_alt_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.alt](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/alt)
impl THTMLImageElement with set_alt(self : Self, alt : String) -> Unit {
  html_image_element_set_alt_ffi(TJsValue::to_js(self), TJsValue::to_js(alt))
}

///|
/// [HTMLImageElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/src)
impl THTMLImageElement with src(self : Self) -> String {
  html_image_element_src_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/src)
impl THTMLImageElement with set_src(self : Self, src : String) -> Unit {
  html_image_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

///|
/// [HTMLImageElement.srcset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/srcset)
impl THTMLImageElement with srcset(self : Self) -> String {
  html_image_element_srcset_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.srcset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/srcset)
impl THTMLImageElement with set_srcset(self : Self, srcset : String) -> Unit {
  html_image_element_set_srcset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(srcset),
  )
}

///|
/// [HTMLImageElement.sizes](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/sizes)
impl THTMLImageElement with sizes(self : Self) -> String {
  html_image_element_sizes_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.sizes](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/sizes)
impl THTMLImageElement with set_sizes(self : Self, sizes : String) -> Unit {
  html_image_element_set_sizes_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(sizes),
  )
}

///|
/// [HTMLImageElement.crossOrigin](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/crossOrigin)
impl THTMLImageElement with cross_origin(self : Self) -> String {
  html_image_element_cross_origin_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.crossOrigin](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/crossOrigin)
impl THTMLImageElement with set_cross_origin(self : Self, cross_origin : String) -> Unit {
  html_image_element_set_cross_origin_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cross_origin),
  )
}

///|
/// [HTMLImageElement.useMap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/useMap)
impl THTMLImageElement with use_map(self : Self) -> String {
  html_image_element_use_map_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.useMap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/useMap)
impl THTMLImageElement with set_use_map(self : Self, use_map : String) -> Unit {
  html_image_element_set_use_map_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(use_map),
  )
}

///|
/// [HTMLImageElement.isMap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/isMap)
impl THTMLImageElement with is_map(self : Self) -> Bool {
  html_image_element_is_map_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.isMap](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/isMap)
impl THTMLImageElement with set_is_map(self : Self, is_map : Bool) -> Unit {
  html_image_element_set_is_map_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(is_map),
  )
}

///|
/// [HTMLImageElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/width)
impl THTMLImageElement with width(self : Self) -> UInt {
  html_image_element_width_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.width](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/width)
impl THTMLImageElement with set_width(self : Self, width : UInt) -> Unit {
  html_image_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
/// [HTMLImageElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/height)
impl THTMLImageElement with height(self : Self) -> UInt {
  html_image_element_height_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.height](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/height)
impl THTMLImageElement with set_height(self : Self, height : UInt) -> Unit {
  html_image_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
/// [HTMLImageElement.naturalWidth](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/naturalWidth)
impl THTMLImageElement with natural_width(self : Self) -> UInt {
  html_image_element_natural_width_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.naturalHeight](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/naturalHeight)
impl THTMLImageElement with natural_height(self : Self) -> UInt {
  html_image_element_natural_height_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.complete](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/complete)
impl THTMLImageElement with complete(self : Self) -> Bool {
  html_image_element_complete_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.currentSrc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/currentSrc)
impl THTMLImageElement with current_src(self : Self) -> String {
  html_image_element_current_src_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/referrerPolicy)
impl THTMLImageElement with referrer_policy(self : Self) -> String {
  html_image_element_referrer_policy_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/referrerPolicy)
impl THTMLImageElement with set_referrer_policy(
  self : Self,
  referrer_policy : String,
) -> Unit {
  html_image_element_set_referrer_policy_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(referrer_policy),
  )
}

///|
/// [HTMLImageElement.decoding](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/decoding)
impl THTMLImageElement with decoding(self : Self) -> String {
  html_image_element_decoding_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.decoding](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/decoding)
impl THTMLImageElement with set_decoding(self : Self, decoding : String) -> Unit {
  html_image_element_set_decoding_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(decoding),
  )
}

///|
/// [HTMLImageElement.loading](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/loading)
impl THTMLImageElement with loading(self : Self) -> String {
  html_image_element_loading_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.loading](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/loading)
impl THTMLImageElement with set_loading(self : Self, loading : String) -> Unit {
  html_image_element_set_loading_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(loading),
  )
}

///|
/// [HTMLImageElement.fetchPriority](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/fetchPriority)
impl THTMLImageElement with fetch_priority(self : Self) -> String {
  html_image_element_fetch_priority_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.fetchPriority](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/fetchPriority)
impl THTMLImageElement with set_fetch_priority(
  self : Self,
  fetch_priority : String,
) -> Unit {
  html_image_element_set_fetch_priority_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(fetch_priority),
  )
}

///|
/// [HTMLImageElement.decode](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/decode)
impl THTMLImageElement with decode(self : Self) -> JsPromise[Unit] {
  html_image_element_decode_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/name)
impl THTMLImageElement with name(self : Self) -> String {
  html_image_element_name_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/name)
impl THTMLImageElement with set_name(self : Self, name : String) -> Unit {
  html_image_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [HTMLImageElement.lowsrc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/lowsrc)
impl THTMLImageElement with lowsrc(self : Self) -> String {
  html_image_element_lowsrc_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.lowsrc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/lowsrc)
impl THTMLImageElement with set_lowsrc(self : Self, lowsrc : String) -> Unit {
  html_image_element_set_lowsrc_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(lowsrc),
  )
}

///|
/// [HTMLImageElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/align)
impl THTMLImageElement with align(self : Self) -> String {
  html_image_element_align_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.align](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/align)
impl THTMLImageElement with set_align(self : Self, align : String) -> Unit {
  html_image_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
/// [HTMLImageElement.hspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/hspace)
impl THTMLImageElement with hspace(self : Self) -> UInt {
  html_image_element_hspace_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.hspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/hspace)
impl THTMLImageElement with set_hspace(self : Self, hspace : UInt) -> Unit {
  html_image_element_set_hspace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hspace),
  )
}

///|
/// [HTMLImageElement.vspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/vspace)
impl THTMLImageElement with vspace(self : Self) -> UInt {
  html_image_element_vspace_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.vspace](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/vspace)
impl THTMLImageElement with set_vspace(self : Self, vspace : UInt) -> Unit {
  html_image_element_set_vspace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(vspace),
  )
}

///|
/// [HTMLImageElement.longDesc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/longDesc)
impl THTMLImageElement with long_desc(self : Self) -> String {
  html_image_element_long_desc_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.longDesc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/longDesc)
impl THTMLImageElement with set_long_desc(self : Self, long_desc : String) -> Unit {
  html_image_element_set_long_desc_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(long_desc),
  )
}

///|
/// [HTMLImageElement.border](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/border)
impl THTMLImageElement with border(self : Self) -> String {
  html_image_element_border_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.border](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/border)
impl THTMLImageElement with set_border(self : Self, border : String) -> Unit {
  html_image_element_set_border_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(border),
  )
}

///|
/// [HTMLImageElement.x](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/x)
impl THTMLImageElement with x(self : Self) -> Int {
  html_image_element_x_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
/// [HTMLImageElement.y](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/y)
impl THTMLImageElement with y(self : Self) -> Int {
  html_image_element_y_ffi(TJsValue::to_js(self)).unsafe_cast()
}
