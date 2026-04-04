// Do not edit. This file is generated.
// MoonBit type: HTMLOListElement
// Specifications: html.idl

///|
/// [HTMLOListElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement)
#external
pub type HTMLOListElement

///|
pub impl TJsValue for HTMLOListElement with to_js(self : HTMLOListElement) -> JsValue = "%identity"

///|
pub impl FromJsAny for HTMLOListElement with from_js_any(value : JsAny) -> HTMLOListElement = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : THTMLOListElement] HTMLOListElement::into(
  self : HTMLOListElement,
) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : THTMLOListElement] HTMLOListElement::unsafe_into(
  self : HTMLOListElement,
) -> T = "%identity"

///|
pub impl HasConstructor for HTMLOListElement with constructor_name() {
  "HTMLOListElement"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLOListElement + HasConstructor] HTMLOListElement::try_into(
  self : HTMLOListElement,
) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

///|
pub impl THTMLOListElement for HTMLOListElement

///|
pub impl THTMLElement for HTMLOListElement

///|
pub impl TElement for HTMLOListElement

///|
pub impl TNode for HTMLOListElement

///|
pub impl TEventTarget for HTMLOListElement

///|
pub fn HTMLOListElement::new() -> HTMLOListElement {
  htmlo_list_element_new_ffi()
}

///|
/// [HTMLOListElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement) interface.
pub trait THTMLOListElement: THTMLElement {
  reversed(self : Self) -> Bool = _
  set_reversed(self : Self, reversed : Bool) -> Unit = _
  start(self : Self) -> Int = _
  set_start(self : Self, start : Int) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  compact(self : Self) -> Bool = _
  set_compact(self : Self, compact : Bool) -> Unit = _
}

///|
/// [HTMLOListElement.reversed](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/reversed)
impl THTMLOListElement with reversed(self : Self) -> Bool {
  htmlo_list_element_reversed_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLOListElement.reversed](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/reversed)
impl THTMLOListElement with set_reversed(self : Self, reversed : Bool) -> Unit {
  htmlo_list_element_set_reversed_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(reversed),
  )
}

///|
/// [HTMLOListElement.start](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/start)
impl THTMLOListElement with start(self : Self) -> Int {
  htmlo_list_element_start_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLOListElement.start](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/start)
impl THTMLOListElement with set_start(self : Self, start : Int) -> Unit {
  htmlo_list_element_set_start_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(start),
  )
}

///|
/// [HTMLOListElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/type)
impl THTMLOListElement with type_(self : Self) -> String {
  htmlo_list_element_type_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLOListElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/type)
impl THTMLOListElement with set_type_(self : Self, type_ : String) -> Unit {
  htmlo_list_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
/// [HTMLOListElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/compact)
impl THTMLOListElement with compact(self : Self) -> Bool {
  htmlo_list_element_compact_ffi(TJsValue::to_js(self))
}

///|
/// [HTMLOListElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/compact)
impl THTMLOListElement with set_compact(self : Self, compact : Bool) -> Unit {
  htmlo_list_element_set_compact_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(compact),
  )
}

///|
#cfg(target="js")
extern "js" fn htmlo_list_element_new_ffi() -> HTMLOListElement = "() => new HTMLOListElement()"

///|
#cfg(target="js")
extern "js" fn htmlo_list_element_reversed_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.reversed"

///|
#cfg(target="js")
fn htmlo_list_element_reversed_ffi(obj : JsValue) -> Bool {
  htmlo_list_element_reversed_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmlo_list_element_set_reversed_ffi(
  obj : JsValue,
  reversed : JsValue,
) -> Unit = "(obj, reversed) => { obj.reversed = reversed; }"

///|
#cfg(target="js")
extern "js" fn htmlo_list_element_start_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.start"

///|
#cfg(target="js")
fn htmlo_list_element_start_ffi(obj : JsValue) -> Int {
  htmlo_list_element_start_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmlo_list_element_set_start_ffi(
  obj : JsValue,
  start : JsValue,
) -> Unit = "(obj, start) => { obj.start = start; }"

///|
#cfg(target="js")
extern "js" fn htmlo_list_element_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn htmlo_list_element_type_ffi(obj : JsValue) -> String {
  htmlo_list_element_type_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmlo_list_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
#cfg(target="js")
extern "js" fn htmlo_list_element_compact_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.compact"

///|
#cfg(target="js")
fn htmlo_list_element_compact_ffi(obj : JsValue) -> Bool {
  htmlo_list_element_compact_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn htmlo_list_element_set_compact_ffi(
  obj : JsValue,
  compact : JsValue,
) -> Unit = "(obj, compact) => { obj.compact = compact; }"

///|
#cfg(target="wasm-gc")
fn htmlo_list_element_new_ffi() -> HTMLOListElement = "webapi_HTMLOListElement" "new"

///|
#cfg(target="wasm-gc")
fn htmlo_list_element_reversed_ffi(obj : JsValue) -> Bool = "webapi_HTMLOListElement" "get_reversed"

///|
#cfg(target="wasm-gc")
fn htmlo_list_element_set_reversed_ffi(
  obj : JsValue,
  reversed : JsValue,
) -> Unit = "webapi_HTMLOListElement" "set_reversed"

///|
#cfg(target="wasm-gc")
fn htmlo_list_element_start_ffi(obj : JsValue) -> Int = "webapi_HTMLOListElement" "get_start"

///|
#cfg(target="wasm-gc")
fn htmlo_list_element_set_start_ffi(obj : JsValue, start : JsValue) -> Unit = "webapi_HTMLOListElement" "set_start"

///|
#cfg(target="wasm-gc")
fn htmlo_list_element_type_ffi_wasm(obj : JsValue) -> JsValue = "webapi_HTMLOListElement" "get_type"

///|
#cfg(target="wasm-gc")
fn htmlo_list_element_type_ffi(obj : JsValue) -> String {
  jsvalue_to_string(htmlo_list_element_type_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn htmlo_list_element_set_type_ffi(obj : JsValue, type_ : JsValue) -> Unit = "webapi_HTMLOListElement" "set_type"

///|
#cfg(target="wasm-gc")
fn htmlo_list_element_compact_ffi(obj : JsValue) -> Bool = "webapi_HTMLOListElement" "get_compact"

///|
#cfg(target="wasm-gc")
fn htmlo_list_element_set_compact_ffi(obj : JsValue, compact : JsValue) -> Unit = "webapi_HTMLOListElement" "set_compact"
