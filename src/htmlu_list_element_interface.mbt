// Do not edit. This file is generated.
// MoonBit type: HTMLUListElement
// Specifications: html.idl

/// [HTMLUListElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement)
#external
pub type HTMLUListElement

pub impl TJsValue for HTMLUListElement with to_js(self: HTMLUListElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLUListElement with from_js_any(value : JsAny) -> HTMLUListElement = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: THTMLUListElement] HTMLUListElement::into(self : HTMLUListElement) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: THTMLUListElement] HTMLUListElement::unsafe_into(self : HTMLUListElement) -> T = "%identity"

pub impl HasConstructor for HTMLUListElement with constructor_name() { "HTMLUListElement" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : THTMLUListElement + HasConstructor] HTMLUListElement::try_into(self : HTMLUListElement) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl THTMLUListElement for HTMLUListElement

pub impl THTMLElement for HTMLUListElement

pub impl TElement for HTMLUListElement

pub impl TNode for HTMLUListElement

pub impl TEventTarget for HTMLUListElement

pub fn HTMLUListElement::new() -> HTMLUListElement {
  htmlu_list_element_new_ffi()
}

/// [HTMLUListElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement) interface.
pub trait THTMLUListElement: THTMLElement {
  compact(self : Self) -> Bool = _
  set_compact(self : Self, compact : Bool) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
}

/// [HTMLUListElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement/compact)
impl THTMLUListElement with compact(self : Self) -> Bool {
  htmlu_list_element_compact_ffi(TJsValue::to_js(self))
}

/// [HTMLUListElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement/compact)
impl THTMLUListElement with set_compact(self : Self, 
compact : Bool) -> Unit {
  htmlu_list_element_set_compact_ffi(TJsValue::to_js(self), TJsValue::to_js(compact))
}

/// [HTMLUListElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement/type)
impl THTMLUListElement with type_(self : Self) -> String {
  htmlu_list_element_type_ffi(TJsValue::to_js(self))
}

/// [HTMLUListElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement/type)
impl THTMLUListElement with set_type_(self : Self, 
type_ : String) -> Unit {
  htmlu_list_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

#cfg(target="js")
extern "js" fn htmlu_list_element_new_ffi() -> HTMLUListElement = "() => new HTMLUListElement()"

#cfg(target="js")
extern "js" fn htmlu_list_element_compact_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.compact"

///|
#cfg(target="js")
fn htmlu_list_element_compact_ffi(obj: JsValue) -> Bool {
  htmlu_list_element_compact_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn htmlu_list_element_set_compact_ffi(obj: JsValue, compact: JsValue) -> Unit = "(obj, compact) => { obj.compact = compact; }"

#cfg(target="js")
extern "js" fn htmlu_list_element_type_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
fn htmlu_list_element_type_ffi(obj: JsValue) -> String {
  htmlu_list_element_type_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn htmlu_list_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "(obj, type) => { obj.type = type; }"

#cfg(target="wasm-gc")
fn htmlu_list_element_new_ffi() -> HTMLUListElement = "webapi_HTMLUListElement" "new"

#cfg(target="wasm-gc")
fn htmlu_list_element_compact_ffi(obj: JsValue) -> Bool = "webapi_HTMLUListElement" "get_compact"

#cfg(target="wasm-gc")
fn htmlu_list_element_set_compact_ffi(obj: JsValue, compact: JsValue) -> Unit = "webapi_HTMLUListElement" "set_compact"

#cfg(target="wasm-gc")
fn htmlu_list_element_type_ffi_wasm(obj: JsValue) -> JsValue = "webapi_HTMLUListElement" "get_type"

///|
#cfg(target="wasm-gc")
fn htmlu_list_element_type_ffi(obj: JsValue) -> String {
  jsvalue_to_string(htmlu_list_element_type_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn htmlu_list_element_set_type_ffi(obj: JsValue, type_: JsValue) -> Unit = "webapi_HTMLUListElement" "set_type"