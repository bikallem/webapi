// Do not edit. This file is generated.
// MoonBit type: HTMLUListElement
// Specifications: html.idl

/// [HTMLUListElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement)
#external
pub type HTMLUListElement

pub impl TJsValue for HTMLUListElement with to_js(self: HTMLUListElement) -> JsValue = "%identity"

pub fn[T: THTMLUListElement] HTMLUListElement::into(self : HTMLUListElement) -> T = "%identity"

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