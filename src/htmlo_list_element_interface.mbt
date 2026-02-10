// Do not edit. This file is generated.
// MoonBit type: HTMLOListElement
// Specifications: html.idl

/// [HTMLOListElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement)
#external
pub type HTMLOListElement

pub impl TJsValue for HTMLOListElement with to_js(self: HTMLOListElement) -> JsValue = "%identity"

pub fn[T: THTMLOListElement] HTMLOListElement::into(self : HTMLOListElement) -> T = "%identity"

pub impl THTMLOListElement for HTMLOListElement

pub impl THTMLElement for HTMLOListElement

pub impl TElement for HTMLOListElement

pub impl TNode for HTMLOListElement

pub impl TEventTarget for HTMLOListElement

pub fn HTMLOListElement::new() -> HTMLOListElement {
  htmlo_list_element_new_ffi()
}

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

/// [HTMLOListElement.reversed](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/reversed)
impl THTMLOListElement with reversed(self : Self) -> Bool {
  htmlo_list_element_reversed_ffi(TJsValue::to_js(self))
}

/// [HTMLOListElement.reversed](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/reversed)
impl THTMLOListElement with set_reversed(self : Self, 
reversed : Bool) -> Unit {
  htmlo_list_element_set_reversed_ffi(TJsValue::to_js(self), TJsValue::to_js(reversed))
}

/// [HTMLOListElement.start](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/start)
impl THTMLOListElement with start(self : Self) -> Int {
  htmlo_list_element_start_ffi(TJsValue::to_js(self))
}

/// [HTMLOListElement.start](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/start)
impl THTMLOListElement with set_start(self : Self, 
start : Int) -> Unit {
  htmlo_list_element_set_start_ffi(TJsValue::to_js(self), TJsValue::to_js(start))
}

/// [HTMLOListElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/type)
impl THTMLOListElement with type_(self : Self) -> String {
  htmlo_list_element_type_ffi(TJsValue::to_js(self))
}

/// [HTMLOListElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/type)
impl THTMLOListElement with set_type_(self : Self, 
type_ : String) -> Unit {
  htmlo_list_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [HTMLOListElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/compact)
impl THTMLOListElement with compact(self : Self) -> Bool {
  htmlo_list_element_compact_ffi(TJsValue::to_js(self))
}

/// [HTMLOListElement.compact](https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement/compact)
impl THTMLOListElement with set_compact(self : Self, 
compact : Bool) -> Unit {
  htmlo_list_element_set_compact_ffi(TJsValue::to_js(self), TJsValue::to_js(compact))
}