// Auto-generated MoonBit bindings for HTMLImageElement

// Do not edit manually

//
// WebIDL Interface:
// partial interface HTMLImageElement {
//   readonly attribute long x;
//   readonly attribute long y;
// };
// 
// [Exposed=Window,
//  LegacyFactoryFunction=Image(optional unsigned long width, optional unsigned long height)]
// interface HTMLImageElement : HTMLElement {
//   [HTMLConstructor] constructor();
// 
//   [CEReactions, Reflect] attribute DOMString alt;
//   [CEReactions, ReflectURL] attribute USVString src;
//   [CEReactions, Reflect] attribute USVString srcset;
//   [CEReactions, Reflect] attribute DOMString sizes;
//   [CEReactions] attribute DOMString? crossOrigin;
//   [CEReactions, Reflect] attribute DOMString useMap;
//   [CEReactions, Reflect] attribute boolean isMap;
//   [CEReactions, ReflectSetter] attribute unsigned long width;
//   [CEReactions, ReflectSetter] attribute unsigned long height;
//   readonly attribute unsigned long naturalWidth;
//   readonly attribute unsigned long naturalHeight;
//   readonly attribute boolean complete;
//   readonly attribute USVString currentSrc;
//   [CEReactions] attribute DOMString referrerPolicy;
//   [CEReactions] attribute DOMString decoding;
//   [CEReactions] attribute DOMString loading;
//   [CEReactions] attribute DOMString fetchPriority;
// 
//   Promise<undefined> decode();
// 
//   // also has obsolete members
// };
// 
// partial interface HTMLImageElement {
//   [CEReactions, Reflect] attribute DOMString name;
//   [CEReactions, ReflectURL] attribute USVString lowsrc;
//   [CEReactions, Reflect] attribute DOMString align;
//   [CEReactions, Reflect] attribute unsigned long hspace;
//   [CEReactions, Reflect] attribute unsigned long vspace;
//   [CEReactions, ReflectURL] attribute USVString longDesc;
// 
//   [CEReactions, Reflect] attribute [LegacyNullToEmptyString] DOMString border;
// };

///|
#external
pub type HTMLImageElement

///|
pub trait THTMLImageElement: TJsValue {
  x(self : Self) -> Int = _
  y(self : Self) -> Int = _
  alt(self : Self) -> String = _
  set_alt(self : Self, value : String) -> Unit = _
  src(self : Self) -> String = _
  set_src(self : Self, value : String) -> Unit = _
  srcset(self : Self) -> String = _
  set_srcset(self : Self, value : String) -> Unit = _
  sizes(self : Self) -> String = _
  set_sizes(self : Self, value : String) -> Unit = _
  cross_origin(self : Self) -> String? = _
  set_cross_origin(self : Self, value : String) -> Unit = _
  use_map(self : Self) -> String = _
  set_use_map(self : Self, value : String) -> Unit = _
  is_map(self : Self) -> Bool = _
  set_is_map(self : Self, value : Bool) -> Unit = _
  width(self : Self) -> Int = _
  set_width(self : Self, value : Int) -> Unit = _
  height(self : Self) -> Int = _
  set_height(self : Self, value : Int) -> Unit = _
  natural_width(self : Self) -> Int = _
  natural_height(self : Self) -> Int = _
  complete(self : Self) -> Bool = _
  current_src(self : Self) -> String = _
  referrer_policy(self : Self) -> String = _
  set_referrer_policy(self : Self, value : String) -> Unit = _
  decoding(self : Self) -> String = _
  set_decoding(self : Self, value : String) -> Unit = _
  loading(self : Self) -> String = _
  set_loading(self : Self, value : String) -> Unit = _
  fetch_priority(self : Self) -> String = _
  set_fetch_priority(self : Self, value : String) -> Unit = _
  name(self : Self) -> String = _
  set_name(self : Self, value : String) -> Unit = _
  lowsrc(self : Self) -> String = _
  set_lowsrc(self : Self, value : String) -> Unit = _
  align(self : Self) -> String = _
  set_align(self : Self, value : String) -> Unit = _
  hspace(self : Self) -> Int = _
  set_hspace(self : Self, value : Int) -> Unit = _
  vspace(self : Self) -> Int = _
  set_vspace(self : Self, value : Int) -> Unit = _
  long_desc(self : Self) -> String = _
  set_long_desc(self : Self, value : String) -> Unit = _
  border(self : Self) -> String = _
  set_border(self : Self, value : String) -> Unit = _
  decode(self : Self) -> JsPromise[Unit] = _
}

///|
pub impl THTMLImageElement for HTMLImageElement

///|
pub impl TJsValue for HTMLImageElement with to_js(self : HTMLImageElement) -> JsValue = "%identity"

///|
pub fn HTMLImageElement::new() -> HTMLImageElement = "webapi_HTMLImageElement" "new"

///|
fn html_image_element_decode_ffi(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "decode"

///|
impl THTMLImageElement with decode(self : Self) -> JsPromise[Unit] {
  html_image_element_decode_ffi(TJsValue::to_js(self)).unsafe_cast()
}

///|
fn html_image_element_x_ffi(obj : JsValue) -> Int = "webapi_HTMLImageElement" "x"

///|
impl THTMLImageElement with x(self : Self) -> Int {
  html_image_element_x_ffi(self.to_js())
}

///|
fn html_image_element_y_ffi(obj : JsValue) -> Int = "webapi_HTMLImageElement" "y"

///|
impl THTMLImageElement with y(self : Self) -> Int {
  html_image_element_y_ffi(self.to_js())
}

///|
fn html_image_element_alt_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "alt"

///|
impl THTMLImageElement with alt(self : Self) -> String {
  html_image_element_alt_ffi(self.to_js())
}

///|
fn html_image_element_set_alt_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLImageElement" "set_alt"

///|
impl THTMLImageElement with set_alt(self : Self, value : String) -> Unit {
  html_image_element_set_alt_ffi(self.to_js(), value)
}

///|
fn html_image_element_src_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "src"

///|
impl THTMLImageElement with src(self : Self) -> String {
  html_image_element_src_ffi(self.to_js())
}

///|
fn html_image_element_set_src_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLImageElement" "set_src"

///|
impl THTMLImageElement with set_src(self : Self, value : String) -> Unit {
  html_image_element_set_src_ffi(self.to_js(), value)
}

///|
fn html_image_element_srcset_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "srcset"

///|
impl THTMLImageElement with srcset(self : Self) -> String {
  html_image_element_srcset_ffi(self.to_js())
}

///|
fn html_image_element_set_srcset_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLImageElement" "set_srcset"

///|
impl THTMLImageElement with set_srcset(self : Self, value : String) -> Unit {
  html_image_element_set_srcset_ffi(self.to_js(), value)
}

///|
fn html_image_element_sizes_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "sizes"

///|
impl THTMLImageElement with sizes(self : Self) -> String {
  html_image_element_sizes_ffi(self.to_js())
}

///|
fn html_image_element_set_sizes_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLImageElement" "set_sizes"

///|
impl THTMLImageElement with set_sizes(self : Self, value : String) -> Unit {
  html_image_element_set_sizes_ffi(self.to_js(), value)
}

///|
fn html_image_element_cross_origin_ffi(obj : JsValue) -> JsValue = "webapi_HTMLImageElement" "crossOrigin"

///|
impl THTMLImageElement with cross_origin(self : Self) -> String? {
  html_image_element_cross_origin_ffi(self.to_js()).as_option()
}

///|
fn html_image_element_set_cross_origin_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLImageElement" "set_crossOrigin"

///|
impl THTMLImageElement with set_cross_origin(self : Self, value : String) -> Unit {
  html_image_element_set_cross_origin_ffi(self.to_js(), value)
}

///|
fn html_image_element_use_map_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "useMap"

///|
impl THTMLImageElement with use_map(self : Self) -> String {
  html_image_element_use_map_ffi(self.to_js())
}

///|
fn html_image_element_set_use_map_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLImageElement" "set_useMap"

///|
impl THTMLImageElement with set_use_map(self : Self, value : String) -> Unit {
  html_image_element_set_use_map_ffi(self.to_js(), value)
}

///|
fn html_image_element_is_map_ffi(obj : JsValue) -> Bool = "webapi_HTMLImageElement" "isMap"

///|
impl THTMLImageElement with is_map(self : Self) -> Bool {
  html_image_element_is_map_ffi(self.to_js())
}

///|
fn html_image_element_set_is_map_ffi(obj : JsValue, value : Bool) -> Unit = "webapi_HTMLImageElement" "set_isMap"

///|
impl THTMLImageElement with set_is_map(self : Self, value : Bool) -> Unit {
  html_image_element_set_is_map_ffi(self.to_js(), value)
}

///|
fn html_image_element_width_ffi(obj : JsValue) -> Int = "webapi_HTMLImageElement" "width"

///|
impl THTMLImageElement with width(self : Self) -> Int {
  html_image_element_width_ffi(self.to_js())
}

///|
fn html_image_element_set_width_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLImageElement" "set_width"

///|
impl THTMLImageElement with set_width(self : Self, value : Int) -> Unit {
  html_image_element_set_width_ffi(self.to_js(), value)
}

///|
fn html_image_element_height_ffi(obj : JsValue) -> Int = "webapi_HTMLImageElement" "height"

///|
impl THTMLImageElement with height(self : Self) -> Int {
  html_image_element_height_ffi(self.to_js())
}

///|
fn html_image_element_set_height_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLImageElement" "set_height"

///|
impl THTMLImageElement with set_height(self : Self, value : Int) -> Unit {
  html_image_element_set_height_ffi(self.to_js(), value)
}

///|
fn html_image_element_natural_width_ffi(obj : JsValue) -> Int = "webapi_HTMLImageElement" "naturalWidth"

///|
impl THTMLImageElement with natural_width(self : Self) -> Int {
  html_image_element_natural_width_ffi(self.to_js())
}

///|
fn html_image_element_natural_height_ffi(obj : JsValue) -> Int = "webapi_HTMLImageElement" "naturalHeight"

///|
impl THTMLImageElement with natural_height(self : Self) -> Int {
  html_image_element_natural_height_ffi(self.to_js())
}

///|
fn html_image_element_complete_ffi(obj : JsValue) -> Bool = "webapi_HTMLImageElement" "complete"

///|
impl THTMLImageElement with complete(self : Self) -> Bool {
  html_image_element_complete_ffi(self.to_js())
}

///|
fn html_image_element_current_src_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "currentSrc"

///|
impl THTMLImageElement with current_src(self : Self) -> String {
  html_image_element_current_src_ffi(self.to_js())
}

///|
fn html_image_element_referrer_policy_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "referrerPolicy"

///|
impl THTMLImageElement with referrer_policy(self : Self) -> String {
  html_image_element_referrer_policy_ffi(self.to_js())
}

///|
fn html_image_element_set_referrer_policy_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLImageElement" "set_referrerPolicy"

///|
impl THTMLImageElement with set_referrer_policy(self : Self, value : String) -> Unit {
  html_image_element_set_referrer_policy_ffi(self.to_js(), value)
}

///|
fn html_image_element_decoding_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "decoding"

///|
impl THTMLImageElement with decoding(self : Self) -> String {
  html_image_element_decoding_ffi(self.to_js())
}

///|
fn html_image_element_set_decoding_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLImageElement" "set_decoding"

///|
impl THTMLImageElement with set_decoding(self : Self, value : String) -> Unit {
  html_image_element_set_decoding_ffi(self.to_js(), value)
}

///|
fn html_image_element_loading_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "loading"

///|
impl THTMLImageElement with loading(self : Self) -> String {
  html_image_element_loading_ffi(self.to_js())
}

///|
fn html_image_element_set_loading_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLImageElement" "set_loading"

///|
impl THTMLImageElement with set_loading(self : Self, value : String) -> Unit {
  html_image_element_set_loading_ffi(self.to_js(), value)
}

///|
fn html_image_element_fetch_priority_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "fetchPriority"

///|
impl THTMLImageElement with fetch_priority(self : Self) -> String {
  html_image_element_fetch_priority_ffi(self.to_js())
}

///|
fn html_image_element_set_fetch_priority_ffi(
  obj : JsValue,
  value : String,
) -> Unit = "webapi_HTMLImageElement" "set_fetchPriority"

///|
impl THTMLImageElement with set_fetch_priority(self : Self, value : String) -> Unit {
  html_image_element_set_fetch_priority_ffi(self.to_js(), value)
}

///|
fn html_image_element_name_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "name"

///|
impl THTMLImageElement with name(self : Self) -> String {
  html_image_element_name_ffi(self.to_js())
}

///|
fn html_image_element_set_name_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLImageElement" "set_name"

///|
impl THTMLImageElement with set_name(self : Self, value : String) -> Unit {
  html_image_element_set_name_ffi(self.to_js(), value)
}

///|
fn html_image_element_lowsrc_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "lowsrc"

///|
impl THTMLImageElement with lowsrc(self : Self) -> String {
  html_image_element_lowsrc_ffi(self.to_js())
}

///|
fn html_image_element_set_lowsrc_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLImageElement" "set_lowsrc"

///|
impl THTMLImageElement with set_lowsrc(self : Self, value : String) -> Unit {
  html_image_element_set_lowsrc_ffi(self.to_js(), value)
}

///|
fn html_image_element_align_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "align"

///|
impl THTMLImageElement with align(self : Self) -> String {
  html_image_element_align_ffi(self.to_js())
}

///|
fn html_image_element_set_align_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLImageElement" "set_align"

///|
impl THTMLImageElement with set_align(self : Self, value : String) -> Unit {
  html_image_element_set_align_ffi(self.to_js(), value)
}

///|
fn html_image_element_hspace_ffi(obj : JsValue) -> Int = "webapi_HTMLImageElement" "hspace"

///|
impl THTMLImageElement with hspace(self : Self) -> Int {
  html_image_element_hspace_ffi(self.to_js())
}

///|
fn html_image_element_set_hspace_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLImageElement" "set_hspace"

///|
impl THTMLImageElement with set_hspace(self : Self, value : Int) -> Unit {
  html_image_element_set_hspace_ffi(self.to_js(), value)
}

///|
fn html_image_element_vspace_ffi(obj : JsValue) -> Int = "webapi_HTMLImageElement" "vspace"

///|
impl THTMLImageElement with vspace(self : Self) -> Int {
  html_image_element_vspace_ffi(self.to_js())
}

///|
fn html_image_element_set_vspace_ffi(obj : JsValue, value : Int) -> Unit = "webapi_HTMLImageElement" "set_vspace"

///|
impl THTMLImageElement with set_vspace(self : Self, value : Int) -> Unit {
  html_image_element_set_vspace_ffi(self.to_js(), value)
}

///|
fn html_image_element_long_desc_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "longDesc"

///|
impl THTMLImageElement with long_desc(self : Self) -> String {
  html_image_element_long_desc_ffi(self.to_js())
}

///|
fn html_image_element_set_long_desc_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLImageElement" "set_longDesc"

///|
impl THTMLImageElement with set_long_desc(self : Self, value : String) -> Unit {
  html_image_element_set_long_desc_ffi(self.to_js(), value)
}

///|
fn html_image_element_border_ffi(obj : JsValue) -> String = "webapi_HTMLImageElement" "border"

///|
impl THTMLImageElement with border(self : Self) -> String {
  html_image_element_border_ffi(self.to_js())
}

///|
fn html_image_element_set_border_ffi(obj : JsValue, value : String) -> Unit = "webapi_HTMLImageElement" "set_border"

///|
impl THTMLImageElement with set_border(self : Self, value : String) -> Unit {
  html_image_element_set_border_ffi(self.to_js(), value)
}
