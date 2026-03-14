// Do not edit. This file is generated.
// MoonBit type: SVGStyleElement
// Specifications: SVG.idl

///|
/// [SVGStyleElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement)
#external
pub type SVGStyleElement

///|
pub impl TJsValue for SVGStyleElement with to_js(self : SVGStyleElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for SVGStyleElement with from_js_any(value : JsAny) -> SVGStyleElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TSVGStyleElement] SVGStyleElement::into(self : SVGStyleElement) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TSVGStyleElement] SVGStyleElement::unsafe_into(
  self : SVGStyleElement,
) -> T = "%identity"

///|
pub impl HasConstructor for SVGStyleElement with constructor_name() {
  "SVGStyleElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TSVGStyleElement + HasConstructor] SVGStyleElement::try_into(
  self : SVGStyleElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl TSVGStyleElement for SVGStyleElement

///|
pub impl TSVGElement for SVGStyleElement

///|
pub impl TElement for SVGStyleElement

///|
pub impl TNode for SVGStyleElement

///|
pub impl TEventTarget for SVGStyleElement

///|
/// [SVGStyleElement](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement) interface.
pub trait TSVGStyleElement: TSVGElement {
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  media(self : Self) -> String = _
  set_media(self : Self, media : String) -> Unit = _
  title(self : Self) -> String = _
  set_title(self : Self, title : String) -> Unit = _
  disabled(self : Self) -> Bool = _
  set_disabled(self : Self, disabled : Bool) -> Unit = _
  sheet(self : Self) -> CSSStyleSheet = _
}

///|
/// [SVGStyleElement.type](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/type)
impl TSVGStyleElement with type_(self : Self) -> String {
  svg_style_element_type_ffi(TJsValue::to_js(self))
}

///|
/// [SVGStyleElement.type](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/type)
impl TSVGStyleElement with set_type_(self : Self, type_ : String) -> Unit {
  svg_style_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
/// [SVGStyleElement.media](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/media)
impl TSVGStyleElement with media(self : Self) -> String {
  svg_style_element_media_ffi(TJsValue::to_js(self))
}

///|
/// [SVGStyleElement.media](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/media)
impl TSVGStyleElement with set_media(self : Self, media : String) -> Unit {
  svg_style_element_set_media_ffi(TJsValue::to_js(self), TJsValue::to_js(media))
}

///|
/// [SVGStyleElement.title](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/title)
impl TSVGStyleElement with title(self : Self) -> String {
  svg_style_element_title_ffi(TJsValue::to_js(self))
}

///|
/// [SVGStyleElement.title](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/title)
impl TSVGStyleElement with set_title(self : Self, title : String) -> Unit {
  svg_style_element_set_title_ffi(TJsValue::to_js(self), TJsValue::to_js(title))
}

///|
/// [SVGStyleElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/disabled)
impl TSVGStyleElement with disabled(self : Self) -> Bool {
  svg_style_element_disabled_ffi(TJsValue::to_js(self))
}

///|
/// [SVGStyleElement.disabled](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/disabled)
impl TSVGStyleElement with set_disabled(self : Self, disabled : Bool) -> Unit {
  svg_style_element_set_disabled_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(disabled),
  )
}

///|
/// [SVGStyleElement.sheet](https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement/sheet)
impl TSVGStyleElement with sheet(self : Self) -> CSSStyleSheet {
  svg_style_element_sheet_ffi(TJsValue::to_js(self))
}

///|
#cfg(target="js")
extern "js" fn svg_style_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn svg_style_element_type_ffi(obj : JsValue) -> String {
  svg_style_element_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_style_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
#cfg(target="js")
extern "js" fn svg_style_element_media_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.media"

///|
#cfg(target="js")
fn svg_style_element_media_ffi(obj : JsValue) -> String {
  svg_style_element_media_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_style_element_set_media_ffi(
  obj : JsValue,
  media : JsValue,
) -> Unit = "(obj, media) => { obj.media = media; }"

///|
#cfg(target="js")
extern "js" fn svg_style_element_title_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.title"

///|
#cfg(target="js")
fn svg_style_element_title_ffi(obj : JsValue) -> String {
  svg_style_element_title_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_style_element_set_title_ffi(
  obj : JsValue,
  title : JsValue,
) -> Unit = "(obj, title) => { obj.title = title; }"

///|
#cfg(target="js")
extern "js" fn svg_style_element_disabled_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.disabled"

///|
#cfg(target="js")
fn svg_style_element_disabled_ffi(obj : JsValue) -> Bool {
  svg_style_element_disabled_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn svg_style_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "(obj, disabled) => { obj.disabled = disabled; }"

///|
#cfg(target="js")
extern "js" fn svg_style_element_sheet_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.sheet"

///|
#cfg(target="js")
fn svg_style_element_sheet_ffi(obj : JsValue) -> CSSStyleSheet {
  svg_style_element_sheet_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn svg_style_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGStyleElement" "get_type"

///|
#cfg(target="wasm-gc")
fn svg_style_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svg_style_element_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svg_style_element_set_type_ffi(obj : JsValue, type_ : JsValue) -> Unit = "webapi_SVGStyleElement" "set_type"

///|
#cfg(target="wasm-gc")
fn svg_style_element_media_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGStyleElement" "get_media"

///|
#cfg(target="wasm-gc")
fn svg_style_element_media_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svg_style_element_media_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svg_style_element_set_media_ffi(obj : JsValue, media : JsValue) -> Unit = "webapi_SVGStyleElement" "set_media"

///|
#cfg(target="wasm-gc")
fn svg_style_element_title_ffi_wasm(obj : JsValue) -> JsValue = "webapi_SVGStyleElement" "get_title"

///|
#cfg(target="wasm-gc")
fn svg_style_element_title_ffi(obj : JsValue) -> String {
  jsvalue_to_string(svg_style_element_title_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn svg_style_element_set_title_ffi(obj : JsValue, title : JsValue) -> Unit = "webapi_SVGStyleElement" "set_title"

///|
#cfg(target="wasm-gc")
fn svg_style_element_disabled_ffi(obj : JsValue) -> Bool = "webapi_SVGStyleElement" "get_disabled"

///|
#cfg(target="wasm-gc")
fn svg_style_element_set_disabled_ffi(
  obj : JsValue,
  disabled : JsValue,
) -> Unit = "webapi_SVGStyleElement" "set_disabled"

///|
#cfg(target="wasm-gc")
fn svg_style_element_sheet_ffi(obj : JsValue) -> CSSStyleSheet = "webapi_SVGStyleElement" "get_sheet"
