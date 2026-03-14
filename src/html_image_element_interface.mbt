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
pub impl FromJsAny for HTMLImageElement with from_js_any(value : JsAny) -> HTMLImageElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLImageElement] HTMLImageElement::into(
  self : HTMLImageElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLImageElement] HTMLImageElement::unsafe_into(
  self : HTMLImageElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLImageElement with constructor_name() {
  "HTMLImageElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLImageElement + HasConstructor] HTMLImageElement::try_into(
  self : HTMLImageElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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
  decode(self : Self) -> JsPromise[JsValue] = _
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
  html_image_element_alt_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLImageElement.alt](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/alt)
impl THTMLImageElement with set_alt(self : Self, alt : String) -> Unit {
  html_image_element_set_alt_ffi(TJsValue::to_js(self), TJsValue::to_js(alt))
}

///|
/// [HTMLImageElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/src)
impl THTMLImageElement with src(self : Self) -> String {
  html_image_element_src_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLImageElement.src](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/src)
impl THTMLImageElement with set_src(self : Self, src : String) -> Unit {
  html_image_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

///|
/// [HTMLImageElement.srcset](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/srcset)
impl THTMLImageElement with srcset(self : Self) -> String {
  html_image_element_srcset_ffi(TJsValue::to_js(self))
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
  html_image_element_sizes_ffi(TJsValue::to_js(self))
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
  html_image_element_cross_origin_ffi(TJsValue::to_js(self))
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
  html_image_element_use_map_ffi(TJsValue::to_js(self))
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
  html_image_element_is_map_ffi(TJsValue::to_js(self))
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
  html_image_element_width_ffi(TJsValue::to_js(self))
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
  html_image_element_height_ffi(TJsValue::to_js(self))
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
  html_image_element_natural_width_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLImageElement.naturalHeight](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/naturalHeight)
impl THTMLImageElement with natural_height(self : Self) -> UInt {
  html_image_element_natural_height_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLImageElement.complete](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/complete)
impl THTMLImageElement with complete(self : Self) -> Bool {
  html_image_element_complete_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLImageElement.currentSrc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/currentSrc)
impl THTMLImageElement with current_src(self : Self) -> String {
  html_image_element_current_src_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLImageElement.referrerPolicy](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/referrerPolicy)
impl THTMLImageElement with referrer_policy(self : Self) -> String {
  html_image_element_referrer_policy_ffi(TJsValue::to_js(self))
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
  html_image_element_decoding_ffi(TJsValue::to_js(self))
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
  html_image_element_loading_ffi(TJsValue::to_js(self))
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
  html_image_element_fetch_priority_ffi(TJsValue::to_js(self))
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
impl THTMLImageElement with decode(self : Self) -> JsPromise[JsValue] {
  html_image_element_decode_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLImageElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/name)
impl THTMLImageElement with name(self : Self) -> String {
  html_image_element_name_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLImageElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/name)
impl THTMLImageElement with set_name(self : Self, name : String) -> Unit {
  html_image_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
/// [HTMLImageElement.lowsrc](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/lowsrc)
impl THTMLImageElement with lowsrc(self : Self) -> String {
  html_image_element_lowsrc_ffi(TJsValue::to_js(self))
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
  html_image_element_align_ffi(TJsValue::to_js(self))
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
  html_image_element_hspace_ffi(TJsValue::to_js(self))
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
  html_image_element_vspace_ffi(TJsValue::to_js(self))
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
  html_image_element_long_desc_ffi(TJsValue::to_js(self))
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
  html_image_element_border_ffi(TJsValue::to_js(self))
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
  html_image_element_x_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLImageElement.y](https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement/y)
impl THTMLImageElement with y(self : Self) -> Int {
  html_image_element_y_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn html_image_element_new_ffi() -> HTMLImageElement = "() => new HTMLImageElement()"

///|
#cfg(target="js")
extern "js" fn html_image_element_alt_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.alt"

///|
#cfg(target="js")
fn html_image_element_alt_ffi(obj : JsValue) -> String {
  html_image_element_alt_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_alt_ffi(
  obj : JsValue,
  alt : JsValue,
) -> Unit = "(obj, alt) => { obj.alt = alt; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_src_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.src"

///|
#cfg(target="js")
fn html_image_element_src_ffi(obj : JsValue) -> String {
  html_image_element_src_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_srcset_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.srcset"

///|
#cfg(target="js")
fn html_image_element_srcset_ffi(obj : JsValue) -> String {
  html_image_element_srcset_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_srcset_ffi(
  obj : JsValue,
  srcset : JsValue,
) -> Unit = "(obj, srcset) => { obj.srcset = srcset; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_sizes_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.sizes"

///|
#cfg(target="js")
fn html_image_element_sizes_ffi(obj : JsValue) -> String {
  html_image_element_sizes_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_sizes_ffi(
  obj : JsValue,
  sizes : JsValue,
) -> Unit = "(obj, sizes) => { obj.sizes = sizes; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_cross_origin_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.crossOrigin"

///|
#cfg(target="js")
fn html_image_element_cross_origin_ffi(obj : JsValue) -> String {
  html_image_element_cross_origin_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "(obj, crossOrigin) => { obj.crossOrigin = crossOrigin; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_use_map_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.useMap"

///|
#cfg(target="js")
fn html_image_element_use_map_ffi(obj : JsValue) -> String {
  html_image_element_use_map_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_use_map_ffi(
  obj : JsValue,
  use_map : JsValue,
) -> Unit = "(obj, useMap) => { obj.useMap = useMap; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_is_map_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.isMap"

///|
#cfg(target="js")
fn html_image_element_is_map_ffi(obj : JsValue) -> Bool {
  html_image_element_is_map_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_is_map_ffi(
  obj : JsValue,
  is_map : JsValue,
) -> Unit = "(obj, isMap) => { obj.isMap = isMap; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_width_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.width"

///|
#cfg(target="js")
fn html_image_element_width_ffi(obj : JsValue) -> UInt {
  html_image_element_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_height_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.height"

///|
#cfg(target="js")
fn html_image_element_height_ffi(obj : JsValue) -> UInt {
  html_image_element_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_natural_width_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.naturalWidth"

///|
#cfg(target="js")
fn html_image_element_natural_width_ffi(obj : JsValue) -> UInt {
  html_image_element_natural_width_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_natural_height_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.naturalHeight"

///|
#cfg(target="js")
fn html_image_element_natural_height_ffi(obj : JsValue) -> UInt {
  html_image_element_natural_height_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_complete_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.complete"

///|
#cfg(target="js")
fn html_image_element_complete_ffi(obj : JsValue) -> Bool {
  html_image_element_complete_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_current_src_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.currentSrc"

///|
#cfg(target="js")
fn html_image_element_current_src_ffi(obj : JsValue) -> String {
  html_image_element_current_src_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_referrer_policy_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.referrerPolicy"

///|
#cfg(target="js")
fn html_image_element_referrer_policy_ffi(obj : JsValue) -> String {
  html_image_element_referrer_policy_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "(obj, referrerPolicy) => { obj.referrerPolicy = referrerPolicy; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_decoding_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.decoding"

///|
#cfg(target="js")
fn html_image_element_decoding_ffi(obj : JsValue) -> String {
  html_image_element_decoding_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_decoding_ffi(
  obj : JsValue,
  decoding : JsValue,
) -> Unit = "(obj, decoding) => { obj.decoding = decoding; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_loading_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.loading"

///|
#cfg(target="js")
fn html_image_element_loading_ffi(obj : JsValue) -> String {
  html_image_element_loading_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_loading_ffi(
  obj : JsValue,
  loading : JsValue,
) -> Unit = "(obj, loading) => { obj.loading = loading; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_fetch_priority_ffi_js(
  obj : JsValue,
) -> JsValue = "(obj) => obj.fetchPriority"

///|
#cfg(target="js")
fn html_image_element_fetch_priority_ffi(obj : JsValue) -> String {
  html_image_element_fetch_priority_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_fetch_priority_ffi(
  obj : JsValue,
  fetch_priority : JsValue,
) -> Unit = "(obj, fetchPriority) => { obj.fetchPriority = fetchPriority; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_decode_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.decode()"

///|
#cfg(target="js")
fn html_image_element_decode_ffi(obj : JsValue) -> JsPromise[JsValue] {
  html_image_element_decode_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn html_image_element_name_ffi(obj : JsValue) -> String {
  html_image_element_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_lowsrc_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.lowsrc"

///|
#cfg(target="js")
fn html_image_element_lowsrc_ffi(obj : JsValue) -> String {
  html_image_element_lowsrc_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_lowsrc_ffi(
  obj : JsValue,
  lowsrc : JsValue,
) -> Unit = "(obj, lowsrc) => { obj.lowsrc = lowsrc; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_align_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.align"

///|
#cfg(target="js")
fn html_image_element_align_ffi(obj : JsValue) -> String {
  html_image_element_align_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_hspace_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.hspace"

///|
#cfg(target="js")
fn html_image_element_hspace_ffi(obj : JsValue) -> UInt {
  html_image_element_hspace_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_hspace_ffi(
  obj : JsValue,
  hspace : JsValue,
) -> Unit = "(obj, hspace) => { obj.hspace = hspace; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_vspace_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.vspace"

///|
#cfg(target="js")
fn html_image_element_vspace_ffi(obj : JsValue) -> UInt {
  html_image_element_vspace_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_vspace_ffi(
  obj : JsValue,
  vspace : JsValue,
) -> Unit = "(obj, vspace) => { obj.vspace = vspace; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_long_desc_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.longDesc"

///|
#cfg(target="js")
fn html_image_element_long_desc_ffi(obj : JsValue) -> String {
  html_image_element_long_desc_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_long_desc_ffi(
  obj : JsValue,
  long_desc : JsValue,
) -> Unit = "(obj, longDesc) => { obj.longDesc = longDesc; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_border_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.border"

///|
#cfg(target="js")
fn html_image_element_border_ffi(obj : JsValue) -> String {
  html_image_element_border_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_set_border_ffi(
  obj : JsValue,
  border : JsValue,
) -> Unit = "(obj, border) => { obj.border = border; }"

///|
#cfg(target="js")
extern "js" fn html_image_element_x_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.x"

///|
#cfg(target="js")
fn html_image_element_x_ffi(obj : JsValue) -> Int {
  html_image_element_x_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn html_image_element_y_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.y"

///|
#cfg(target="js")
fn html_image_element_y_ffi(obj : JsValue) -> Int {
  html_image_element_y_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_image_element_new_ffi() -> HTMLImageElement = "webapi_HTMLImageElement" "new"

///|
#cfg(target="wasm-gc")
fn html_image_element_alt_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_alt"

///|
#cfg(target="wasm-gc")
fn html_image_element_alt_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_alt_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_alt_ffi(obj : JsValue, alt : JsValue) -> Unit = "webapi_HTMLImageElement" "set_alt"

///|
#cfg(target="wasm-gc")
fn html_image_element_src_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_src"

///|
#cfg(target="wasm-gc")
fn html_image_element_src_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_src_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_src_ffi(obj : JsValue, src : JsValue) -> Unit = "webapi_HTMLImageElement" "set_src"

///|
#cfg(target="wasm-gc")
fn html_image_element_srcset_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_srcset"

///|
#cfg(target="wasm-gc")
fn html_image_element_srcset_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_srcset_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_srcset_ffi(obj : JsValue, srcset : JsValue) -> Unit = "webapi_HTMLImageElement" "set_srcset"

///|
#cfg(target="wasm-gc")
fn html_image_element_sizes_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_sizes"

///|
#cfg(target="wasm-gc")
fn html_image_element_sizes_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_sizes_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_sizes_ffi(obj : JsValue, sizes : JsValue) -> Unit = "webapi_HTMLImageElement" "set_sizes"

///|
#cfg(target="wasm-gc")
fn html_image_element_cross_origin_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_crossOrigin"

///|
#cfg(target="wasm-gc")
fn html_image_element_cross_origin_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_cross_origin_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_cross_origin_ffi(
  obj : JsValue,
  cross_origin : JsValue,
) -> Unit = "webapi_HTMLImageElement" "set_crossOrigin"

///|
#cfg(target="wasm-gc")
fn html_image_element_use_map_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_useMap"

///|
#cfg(target="wasm-gc")
fn html_image_element_use_map_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_use_map_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_use_map_ffi(obj : JsValue, use_map : JsValue) -> Unit = "webapi_HTMLImageElement" "set_useMap"

///|
#cfg(target="wasm-gc")
fn html_image_element_is_map_ffi(obj : JsValue) -> Bool = "webapi_HTMLImageElement" "get_isMap"

///|
#cfg(target="wasm-gc")
fn html_image_element_set_is_map_ffi(obj : JsValue, is_map : JsValue) -> Unit = "webapi_HTMLImageElement" "set_isMap"

///|
#cfg(target="wasm-gc")
fn html_image_element_width_ffi(obj : JsValue) -> UInt = "webapi_HTMLImageElement" "get_width"

///|
#cfg(target="wasm-gc")
fn html_image_element_set_width_ffi(obj : JsValue, width : JsValue) -> Unit = "webapi_HTMLImageElement" "set_width"

///|
#cfg(target="wasm-gc")
fn html_image_element_height_ffi(obj : JsValue) -> UInt = "webapi_HTMLImageElement" "get_height"

///|
#cfg(target="wasm-gc")
fn html_image_element_set_height_ffi(obj : JsValue, height : JsValue) -> Unit = "webapi_HTMLImageElement" "set_height"

///|
#cfg(target="wasm-gc")
fn html_image_element_natural_width_ffi(obj : JsValue) -> UInt = "webapi_HTMLImageElement" "get_naturalWidth"

///|
#cfg(target="wasm-gc")
fn html_image_element_natural_height_ffi(obj : JsValue) -> UInt = "webapi_HTMLImageElement" "get_naturalHeight"

///|
#cfg(target="wasm-gc")
fn html_image_element_complete_ffi(obj : JsValue) -> Bool = "webapi_HTMLImageElement" "get_complete"

///|
#cfg(target="wasm-gc")
fn html_image_element_current_src_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_currentSrc"

///|
#cfg(target="wasm-gc")
fn html_image_element_current_src_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_current_src_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_referrer_policy_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_referrerPolicy"

///|
#cfg(target="wasm-gc")
fn html_image_element_referrer_policy_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_referrer_policy_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_referrer_policy_ffi(
  obj : JsValue,
  referrer_policy : JsValue,
) -> Unit = "webapi_HTMLImageElement" "set_referrerPolicy"

///|
#cfg(target="wasm-gc")
fn html_image_element_decoding_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_decoding"

///|
#cfg(target="wasm-gc")
fn html_image_element_decoding_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_decoding_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_decoding_ffi(
  obj : JsValue,
  decoding : JsValue,
) -> Unit = "webapi_HTMLImageElement" "set_decoding"

///|
#cfg(target="wasm-gc")
fn html_image_element_loading_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_loading"

///|
#cfg(target="wasm-gc")
fn html_image_element_loading_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_loading_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_loading_ffi(obj : JsValue, loading : JsValue) -> Unit = "webapi_HTMLImageElement" "set_loading"

///|
#cfg(target="wasm-gc")
fn html_image_element_fetch_priority_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_fetchPriority"

///|
#cfg(target="wasm-gc")
fn html_image_element_fetch_priority_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_fetch_priority_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_fetch_priority_ffi(
  obj : JsValue,
  fetch_priority : JsValue,
) -> Unit = "webapi_HTMLImageElement" "set_fetchPriority"

///|
#cfg(target="wasm-gc")
fn html_image_element_decode_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "decode"

///|
#cfg(target="wasm-gc")
fn html_image_element_decode_ffi(obj : JsValue) -> JsPromise[JsValue] {
  html_image_element_decode_ffi_wasm(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn html_image_element_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_name"

///|
#cfg(target="wasm-gc")
fn html_image_element_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_name_ffi(obj : JsValue, name : JsValue) -> Unit = "webapi_HTMLImageElement" "set_name"

///|
#cfg(target="wasm-gc")
fn html_image_element_lowsrc_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_lowsrc"

///|
#cfg(target="wasm-gc")
fn html_image_element_lowsrc_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_lowsrc_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_lowsrc_ffi(obj : JsValue, lowsrc : JsValue) -> Unit = "webapi_HTMLImageElement" "set_lowsrc"

///|
#cfg(target="wasm-gc")
fn html_image_element_align_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_align"

///|
#cfg(target="wasm-gc")
fn html_image_element_align_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_align_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_align_ffi(obj : JsValue, align : JsValue) -> Unit = "webapi_HTMLImageElement" "set_align"

///|
#cfg(target="wasm-gc")
fn html_image_element_hspace_ffi(obj : JsValue) -> UInt = "webapi_HTMLImageElement" "get_hspace"

///|
#cfg(target="wasm-gc")
fn html_image_element_set_hspace_ffi(obj : JsValue, hspace : JsValue) -> Unit = "webapi_HTMLImageElement" "set_hspace"

///|
#cfg(target="wasm-gc")
fn html_image_element_vspace_ffi(obj : JsValue) -> UInt = "webapi_HTMLImageElement" "get_vspace"

///|
#cfg(target="wasm-gc")
fn html_image_element_set_vspace_ffi(obj : JsValue, vspace : JsValue) -> Unit = "webapi_HTMLImageElement" "set_vspace"

///|
#cfg(target="wasm-gc")
fn html_image_element_long_desc_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_longDesc"

///|
#cfg(target="wasm-gc")
fn html_image_element_long_desc_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_long_desc_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_long_desc_ffi(
  obj : JsValue,
  long_desc : JsValue,
) -> Unit = "webapi_HTMLImageElement" "set_longDesc"

///|
#cfg(target="wasm-gc")
fn html_image_element_border_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "get_border"

///|
#cfg(target="wasm-gc")
fn html_image_element_border_ffi(obj : JsValue) -> String {
  jsvalue_to_string(html_image_element_border_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn html_image_element_set_border_ffi(obj : JsValue, border : JsValue) -> Unit = "webapi_HTMLImageElement" "set_border"

///|
#cfg(target="wasm-gc")
fn html_image_element_x_ffi(obj : JsValue) -> Int = "webapi_HTMLImageElement" "get_x"

///|
#cfg(target="wasm-gc")
fn html_image_element_y_ffi(obj : JsValue) -> Int = "webapi_HTMLImageElement" "get_y"
