// Do not edit. This file is generated.
// MoonBit type: HTMLImageElement
// Specifications: cssom-view.idl, html.idl

///|
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
extern "js" fn html_image_element_new_ffi() -> HTMLImageElement = "() => new HTMLImageElement()"

///|
pub fn HTMLImageElement::new() -> HTMLImageElement {
  html_image_element_new_ffi()
}

///|
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
extern "js" fn html_image_element_alt_ffi(obj : JsValue) -> String = "(obj) => obj.alt"

///|
impl THTMLImageElement with alt(self : Self) -> String {
  html_image_element_alt_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_alt_ffi(
  obj : JsValue,
  alt : JsValue,
) -> Unit = "(obj, alt) => { obj.alt = alt; }"

///|
impl THTMLImageElement with set_alt(self : Self, alt : String) -> Unit {
  html_image_element_set_alt_ffi(TJsValue::to_js(self), TJsValue::to_js(alt))
}

///|
extern "js" fn html_image_element_src_ffi(obj : JsValue) -> String = "(obj) => obj.src"

///|
impl THTMLImageElement with src(self : Self) -> String {
  html_image_element_src_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
impl THTMLImageElement with set_src(self : Self, src : String) -> Unit {
  html_image_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

///|
extern "js" fn html_image_element_srcset_ffi(obj : JsValue) -> String = "(obj) => obj.srcset"

///|
impl THTMLImageElement with srcset(self : Self) -> String {
  html_image_element_srcset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_srcset_ffi(
  obj : JsValue,
  srcset : JsValue,
) -> Unit = "(obj, srcset) => { obj.srcset = srcset; }"

///|
impl THTMLImageElement with set_srcset(self : Self, srcset : String) -> Unit {
  html_image_element_set_srcset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(srcset),
  )
}

///|
extern "js" fn html_image_element_sizes_ffi(obj : JsValue) -> String = "(obj) => obj.sizes"

///|
impl THTMLImageElement with sizes(self : Self) -> String {
  html_image_element_sizes_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_sizes_ffi(
  obj : JsValue,
  sizes : JsValue,
) -> Unit = "(obj, sizes) => { obj.sizes = sizes; }"

///|
impl THTMLImageElement with set_sizes(self : Self, sizes : String) -> Unit {
  html_image_element_set_sizes_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(sizes),
  )
}

///|
extern "js" fn html_image_element_cross_origin_ffi(obj : JsValue) -> String = "(obj) => obj.crossOrigin"

///|
impl THTMLImageElement with cross_origin(self : Self) -> String {
  html_image_element_cross_origin_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = cross_origin; }"

///|
impl THTMLImageElement with set_cross_origin(self : Self, cross_origin : String) -> Unit {
  html_image_element_set_cross_origin_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(cross_origin),
  )
}

///|
extern "js" fn html_image_element_use_map_ffi(obj : JsValue) -> String = "(obj) => obj.useMap"

///|
impl THTMLImageElement with use_map(self : Self) -> String {
  html_image_element_use_map_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_use_map_ffi(
  obj : JsValue,
  use_map : JsValue,
) -> Unit = "(obj, useMap) => { obj.useMap = use_map; }"

///|
impl THTMLImageElement with set_use_map(self : Self, use_map : String) -> Unit {
  html_image_element_set_use_map_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(use_map),
  )
}

///|
extern "js" fn html_image_element_is_map_ffi(obj : JsValue) -> Bool = "(obj) => obj.isMap"

///|
impl THTMLImageElement with is_map(self : Self) -> Bool {
  html_image_element_is_map_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_is_map_ffi(
  obj : JsValue,
  is_map : JsValue,
) -> Unit = "(obj, isMap) => { obj.isMap = is_map; }"

///|
impl THTMLImageElement with set_is_map(self : Self, is_map : Bool) -> Unit {
  html_image_element_set_is_map_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(is_map),
  )
}

///|
extern "js" fn html_image_element_width_ffi(obj : JsValue) -> UInt = "(obj) => obj.width"

///|
impl THTMLImageElement with width(self : Self) -> UInt {
  html_image_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
impl THTMLImageElement with set_width(self : Self, width : UInt) -> Unit {
  html_image_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
extern "js" fn html_image_element_height_ffi(obj : JsValue) -> UInt = "(obj) => obj.height"

///|
impl THTMLImageElement with height(self : Self) -> UInt {
  html_image_element_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
impl THTMLImageElement with set_height(self : Self, height : UInt) -> Unit {
  html_image_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}

///|
extern "js" fn html_image_element_natural_width_ffi(obj : JsValue) -> UInt = "(obj) => obj.naturalWidth"

///|
impl THTMLImageElement with natural_width(self : Self) -> UInt {
  html_image_element_natural_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_natural_height_ffi(obj : JsValue) -> UInt = "(obj) => obj.naturalHeight"

///|
impl THTMLImageElement with natural_height(self : Self) -> UInt {
  html_image_element_natural_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_complete_ffi(obj : JsValue) -> Bool = "(obj) => obj.complete"

///|
impl THTMLImageElement with complete(self : Self) -> Bool {
  html_image_element_complete_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_current_src_ffi(obj : JsValue) -> String = "(obj) => obj.currentSrc"

///|
impl THTMLImageElement with current_src(self : Self) -> String {
  html_image_element_current_src_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_referrer_policy_ffi(obj : JsValue) -> String = "(obj) => obj.referrerPolicy"

///|
impl THTMLImageElement with referrer_policy(self : Self) -> String {
  html_image_element_referrer_policy_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrer_policy; }"

///|
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
extern "js" fn html_image_element_decoding_ffi(obj : JsValue) -> String = "(obj) => obj.decoding"

///|
impl THTMLImageElement with decoding(self : Self) -> String {
  html_image_element_decoding_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_decoding_ffi(
  obj : JsValue,
  decoding : JsValue,
) -> Unit = "(obj, decoding) => { obj.decoding = decoding; }"

///|
impl THTMLImageElement with set_decoding(self : Self, decoding : String) -> Unit {
  html_image_element_set_decoding_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(decoding),
  )
}

///|
extern "js" fn html_image_element_loading_ffi(obj : JsValue) -> String = "(obj) => obj.loading"

///|
impl THTMLImageElement with loading(self : Self) -> String {
  html_image_element_loading_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_loading_ffi(
  obj : JsValue,
  loading : JsValue,
) -> Unit = "(obj, loading) => { obj.loading = loading; }"

///|
impl THTMLImageElement with set_loading(self : Self, loading : String) -> Unit {
  html_image_element_set_loading_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(loading),
  )
}

///|
extern "js" fn html_image_element_fetch_priority_ffi(obj : JsValue) -> String = "(obj) => obj.fetchPriority"

///|
impl THTMLImageElement with fetch_priority(self : Self) -> String {
  html_image_element_fetch_priority_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_fetch_priority_ffi(
  obj : JsValue,
  fetch_priority : JsValue,
) -> Unit = "(obj, fetchPriority) => { obj.fetchPriority = fetch_priority; }"

///|
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
extern "js" fn html_image_element_decode_ffi(obj : JsValue) -> JsPromise[Unit] = "(obj) => obj.decode()"

///|
impl THTMLImageElement with decode(self : Self) -> JsPromise[Unit] {
  html_image_element_decode_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl THTMLImageElement with name(self : Self) -> String {
  html_image_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl THTMLImageElement with set_name(self : Self, name : String) -> Unit {
  html_image_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn html_image_element_lowsrc_ffi(obj : JsValue) -> String = "(obj) => obj.lowsrc"

///|
impl THTMLImageElement with lowsrc(self : Self) -> String {
  html_image_element_lowsrc_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_lowsrc_ffi(
  obj : JsValue,
  lowsrc : JsValue,
) -> Unit = "(obj, lowsrc) => { obj.lowsrc = lowsrc; }"

///|
impl THTMLImageElement with set_lowsrc(self : Self, lowsrc : String) -> Unit {
  html_image_element_set_lowsrc_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(lowsrc),
  )
}

///|
extern "js" fn html_image_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
impl THTMLImageElement with align(self : Self) -> String {
  html_image_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl THTMLImageElement with set_align(self : Self, align : String) -> Unit {
  html_image_element_set_align_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(align),
  )
}

///|
extern "js" fn html_image_element_hspace_ffi(obj : JsValue) -> UInt = "(obj) => obj.hspace"

///|
impl THTMLImageElement with hspace(self : Self) -> UInt {
  html_image_element_hspace_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_hspace_ffi(
  obj : JsValue,
  hspace : JsValue,
) -> Unit = "(obj, hspace) => { obj.hspace = hspace; }"

///|
impl THTMLImageElement with set_hspace(self : Self, hspace : UInt) -> Unit {
  html_image_element_set_hspace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(hspace),
  )
}

///|
extern "js" fn html_image_element_vspace_ffi(obj : JsValue) -> UInt = "(obj) => obj.vspace"

///|
impl THTMLImageElement with vspace(self : Self) -> UInt {
  html_image_element_vspace_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_vspace_ffi(
  obj : JsValue,
  vspace : JsValue,
) -> Unit = "(obj, vspace) => { obj.vspace = vspace; }"

///|
impl THTMLImageElement with set_vspace(self : Self, vspace : UInt) -> Unit {
  html_image_element_set_vspace_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(vspace),
  )
}

///|
extern "js" fn html_image_element_long_desc_ffi(obj : JsValue) -> String = "(obj) => obj.longDesc"

///|
impl THTMLImageElement with long_desc(self : Self) -> String {
  html_image_element_long_desc_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_long_desc_ffi(
  obj : JsValue,
  long_desc : JsValue,
) -> Unit = "(obj, longDesc) => { obj.longDesc = long_desc; }"

///|
impl THTMLImageElement with set_long_desc(self : Self, long_desc : String) -> Unit {
  html_image_element_set_long_desc_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(long_desc),
  )
}

///|
extern "js" fn html_image_element_border_ffi(obj : JsValue) -> String = "(obj) => obj.border"

///|
impl THTMLImageElement with border(self : Self) -> String {
  html_image_element_border_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_set_border_ffi(
  obj : JsValue,
  border : JsValue,
) -> Unit = "(obj, border) => { obj.border = border; }"

///|
impl THTMLImageElement with set_border(self : Self, border : String) -> Unit {
  html_image_element_set_border_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(border),
  )
}

///|
extern "js" fn html_image_element_x_ffi(obj : JsValue) -> Int = "(obj) => obj.x"

///|
impl THTMLImageElement with x(self : Self) -> Int {
  html_image_element_x_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_image_element_y_ffi(obj : JsValue) -> Int = "(obj) => obj.y"

///|
impl THTMLImageElement with y(self : Self) -> Int {
  html_image_element_y_ffi(TJsValue::to_js(self))
}
