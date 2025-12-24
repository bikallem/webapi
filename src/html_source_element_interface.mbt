///|
#external
pub type HTMLSourceElement

///|
pub impl TJsValue for HTMLSourceElement with to_js(self : HTMLSourceElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLSourceElement] HTMLSourceElement::into(
  self : HTMLSourceElement,
) -> T = "%identity"

///|
pub impl THTMLSourceElement for HTMLSourceElement

///|
pub impl THTMLElement for HTMLSourceElement

///|
pub impl TElement for HTMLSourceElement

///|
pub impl TNode for HTMLSourceElement

///|
pub impl TEventTarget for HTMLSourceElement

///|
extern "js" fn html_source_element_new_ffi() -> HTMLSourceElement = "() => new HTMLSourceElement()"

///|
pub fn HTMLSourceElement::new() -> HTMLSourceElement {
  html_source_element_new_ffi()
}

///|
pub trait THTMLSourceElement: THTMLElement {
  src(self : Self) -> String = _
  set_src(self : Self, src : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  srcset(self : Self) -> String = _
  set_srcset(self : Self, srcset : String) -> Unit = _
  sizes(self : Self) -> String = _
  set_sizes(self : Self, sizes : String) -> Unit = _
  media(self : Self) -> String = _
  set_media(self : Self, media : String) -> Unit = _
  width(self : Self) -> UInt = _
  set_width(self : Self, width : UInt) -> Unit = _
  height(self : Self) -> UInt = _
  set_height(self : Self, height : UInt) -> Unit = _
}

///|
extern "js" fn html_source_element_src_ffi(obj : JsValue) -> String = "(obj) => obj.src"

///|
impl THTMLSourceElement with src(self : Self) -> String {
  html_source_element_src_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_source_element_set_src_ffi(
  obj : JsValue,
  src : JsValue,
) -> Unit = "(obj, src) => { obj.src = src; }"

///|
impl THTMLSourceElement with set_src(self : Self, src : String) -> Unit {
  html_source_element_set_src_ffi(TJsValue::to_js(self), TJsValue::to_js(src))
}

///|
extern "js" fn html_source_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl THTMLSourceElement with type_(self : Self) -> String {
  html_source_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_source_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
impl THTMLSourceElement with set_type_(self : Self, type_ : String) -> Unit {
  html_source_element_set_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(type_),
  )
}

///|
extern "js" fn html_source_element_srcset_ffi(obj : JsValue) -> String = "(obj) => obj.srcset"

///|
impl THTMLSourceElement with srcset(self : Self) -> String {
  html_source_element_srcset_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_source_element_set_srcset_ffi(
  obj : JsValue,
  srcset : JsValue,
) -> Unit = "(obj, srcset) => { obj.srcset = srcset; }"

///|
impl THTMLSourceElement with set_srcset(self : Self, srcset : String) -> Unit {
  html_source_element_set_srcset_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(srcset),
  )
}

///|
extern "js" fn html_source_element_sizes_ffi(obj : JsValue) -> String = "(obj) => obj.sizes"

///|
impl THTMLSourceElement with sizes(self : Self) -> String {
  html_source_element_sizes_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_source_element_set_sizes_ffi(
  obj : JsValue,
  sizes : JsValue,
) -> Unit = "(obj, sizes) => { obj.sizes = sizes; }"

///|
impl THTMLSourceElement with set_sizes(self : Self, sizes : String) -> Unit {
  html_source_element_set_sizes_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(sizes),
  )
}

///|
extern "js" fn html_source_element_media_ffi(obj : JsValue) -> String = "(obj) => obj.media"

///|
impl THTMLSourceElement with media(self : Self) -> String {
  html_source_element_media_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_source_element_set_media_ffi(
  obj : JsValue,
  media : JsValue,
) -> Unit = "(obj, media) => { obj.media = media; }"

///|
impl THTMLSourceElement with set_media(self : Self, media : String) -> Unit {
  html_source_element_set_media_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(media),
  )
}

///|
extern "js" fn html_source_element_width_ffi(obj : JsValue) -> UInt = "(obj) => obj.width"

///|
impl THTMLSourceElement with width(self : Self) -> UInt {
  html_source_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_source_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
impl THTMLSourceElement with set_width(self : Self, width : UInt) -> Unit {
  html_source_element_set_width_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(width),
  )
}

///|
extern "js" fn html_source_element_height_ffi(obj : JsValue) -> UInt = "(obj) => obj.height"

///|
impl THTMLSourceElement with height(self : Self) -> UInt {
  html_source_element_height_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_source_element_set_height_ffi(
  obj : JsValue,
  height : JsValue,
) -> Unit = "(obj, height) => { obj.height = height; }"

///|
impl THTMLSourceElement with set_height(self : Self, height : UInt) -> Unit {
  html_source_element_set_height_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(height),
  )
}
