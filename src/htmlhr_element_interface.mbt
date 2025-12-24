///|
#external
pub type HTMLHRElement

///|
pub impl TJsValue for HTMLHRElement with to_js(self : HTMLHRElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLHRElement] HTMLHRElement::into(self : HTMLHRElement) -> T = "%identity"

///|
pub impl THTMLHRElement for HTMLHRElement

///|
pub impl THTMLElement for HTMLHRElement

///|
pub impl TElement for HTMLHRElement

///|
pub impl TNode for HTMLHRElement

///|
pub impl TEventTarget for HTMLHRElement

///|
extern "js" fn htmlhr_element_new_ffi() -> HTMLHRElement = "() => new HTMLHRElement()"

///|
pub fn HTMLHRElement::new() -> HTMLHRElement {
  htmlhr_element_new_ffi()
}

///|
pub trait THTMLHRElement: THTMLElement {
  align(self : Self) -> String = _
  set_align(self : Self, align : String) -> Unit = _
  color(self : Self) -> String = _
  set_color(self : Self, color : String) -> Unit = _
  no_shade(self : Self) -> Bool = _
  set_no_shade(self : Self, no_shade : Bool) -> Unit = _
  size(self : Self) -> String = _
  set_size(self : Self, size : String) -> Unit = _
  width(self : Self) -> String = _
  set_width(self : Self, width : String) -> Unit = _
}

///|
extern "js" fn htmlhr_element_align_ffi(obj : JsValue) -> String = "(obj) => obj.align"

///|
impl THTMLHRElement with align(self : Self) -> String {
  htmlhr_element_align_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmlhr_element_set_align_ffi(
  obj : JsValue,
  align : JsValue,
) -> Unit = "(obj, align) => { obj.align = align; }"

///|
impl THTMLHRElement with set_align(self : Self, align : String) -> Unit {
  htmlhr_element_set_align_ffi(TJsValue::to_js(self), TJsValue::to_js(align))
}

///|
extern "js" fn htmlhr_element_color_ffi(obj : JsValue) -> String = "(obj) => obj.color"

///|
impl THTMLHRElement with color(self : Self) -> String {
  htmlhr_element_color_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmlhr_element_set_color_ffi(
  obj : JsValue,
  color : JsValue,
) -> Unit = "(obj, color) => { obj.color = color; }"

///|
impl THTMLHRElement with set_color(self : Self, color : String) -> Unit {
  htmlhr_element_set_color_ffi(TJsValue::to_js(self), TJsValue::to_js(color))
}

///|
extern "js" fn htmlhr_element_no_shade_ffi(obj : JsValue) -> Bool = "(obj) => obj.noShade"

///|
impl THTMLHRElement with no_shade(self : Self) -> Bool {
  htmlhr_element_no_shade_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmlhr_element_set_no_shade_ffi(
  obj : JsValue,
  no_shade : JsValue,
) -> Unit = "(obj, noShade) => { obj.noShade = noShade; }"

///|
impl THTMLHRElement with set_no_shade(self : Self, no_shade : Bool) -> Unit {
  htmlhr_element_set_no_shade_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(no_shade),
  )
}

///|
extern "js" fn htmlhr_element_size_ffi(obj : JsValue) -> String = "(obj) => obj.size"

///|
impl THTMLHRElement with size(self : Self) -> String {
  htmlhr_element_size_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmlhr_element_set_size_ffi(
  obj : JsValue,
  size : JsValue,
) -> Unit = "(obj, size) => { obj.size = size; }"

///|
impl THTMLHRElement with set_size(self : Self, size : String) -> Unit {
  htmlhr_element_set_size_ffi(TJsValue::to_js(self), TJsValue::to_js(size))
}

///|
extern "js" fn htmlhr_element_width_ffi(obj : JsValue) -> String = "(obj) => obj.width"

///|
impl THTMLHRElement with width(self : Self) -> String {
  htmlhr_element_width_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn htmlhr_element_set_width_ffi(
  obj : JsValue,
  width : JsValue,
) -> Unit = "(obj, width) => { obj.width = width; }"

///|
impl THTMLHRElement with set_width(self : Self, width : String) -> Unit {
  htmlhr_element_set_width_ffi(TJsValue::to_js(self), TJsValue::to_js(width))
}
