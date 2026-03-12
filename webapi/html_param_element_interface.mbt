// Do not edit. This file is generated.
// MoonBit type: HTMLParamElement
// Specifications: html.idl

/// [HTMLParamElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement)
#external
pub type HTMLParamElement

pub impl TJsValue for HTMLParamElement with to_js(self: HTMLParamElement) -> JsValue = "%identity"

pub impl FromJsAny for HTMLParamElement with from_js_any(value : JsAny) -> HTMLParamElement = "%identity"

pub fn[T: THTMLParamElement] HTMLParamElement::into(self : HTMLParamElement) -> T = "%identity"

pub impl THTMLParamElement for HTMLParamElement

pub impl THTMLElement for HTMLParamElement

pub impl TElement for HTMLParamElement

pub impl TNode for HTMLParamElement

pub impl TEventTarget for HTMLParamElement

pub fn HTMLParamElement::new() -> HTMLParamElement {
  html_param_element_new_ffi()
}

/// [HTMLParamElement](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement) interface.
pub trait THTMLParamElement: THTMLElement {
  name(self : Self) -> String = _
  set_name(self : Self, name : String) -> Unit = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
  type_(self : Self) -> String = _
  set_type_(self : Self, type_ : String) -> Unit = _
  value_type(self : Self) -> String = _
  set_value_type(self : Self, value_type : String) -> Unit = _
}

/// [HTMLParamElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement/name)
impl THTMLParamElement with name(self : Self) -> String {
  html_param_element_name_ffi(TJsValue::to_js(self))
}

/// [HTMLParamElement.name](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement/name)
impl THTMLParamElement with set_name(self : Self, 
name : String) -> Unit {
  html_param_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

/// [HTMLParamElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement/value)
impl THTMLParamElement with value(self : Self) -> String {
  html_param_element_value_ffi(TJsValue::to_js(self))
}

/// [HTMLParamElement.value](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement/value)
impl THTMLParamElement with set_value(self : Self, 
value : String) -> Unit {
  html_param_element_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

/// [HTMLParamElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement/type)
impl THTMLParamElement with type_(self : Self) -> String {
  html_param_element_type_ffi(TJsValue::to_js(self))
}

/// [HTMLParamElement.type](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement/type)
impl THTMLParamElement with set_type_(self : Self, 
type_ : String) -> Unit {
  html_param_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

/// [HTMLParamElement.valueType](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement/valueType)
impl THTMLParamElement with value_type(self : Self) -> String {
  html_param_element_value_type_ffi(TJsValue::to_js(self))
}

/// [HTMLParamElement.valueType](https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement/valueType)
impl THTMLParamElement with set_value_type(self : Self, 
value_type : String) -> Unit {
  html_param_element_set_value_type_ffi(TJsValue::to_js(self), TJsValue::to_js(value_type))
}