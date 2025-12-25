// Do not edit. This file is generated.
// MoonBit type: HTMLParamElement
// Specifications: html.idl

///|
#external
pub type HTMLParamElement

///|
pub impl TJsValue for HTMLParamElement with to_js(self : HTMLParamElement) -> JsValue = "%identity"

///|
pub fn[T : THTMLParamElement] HTMLParamElement::into(
  self : HTMLParamElement,
) -> T = "%identity"

///|
pub impl THTMLParamElement for HTMLParamElement

///|
pub impl THTMLElement for HTMLParamElement

///|
pub impl TElement for HTMLParamElement

///|
pub impl TNode for HTMLParamElement

///|
pub impl TEventTarget for HTMLParamElement

///|
extern "js" fn html_param_element_new_ffi() -> HTMLParamElement = "() => new HTMLParamElement()"

///|
pub fn HTMLParamElement::new() -> HTMLParamElement {
  html_param_element_new_ffi()
}

///|
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

///|
extern "js" fn html_param_element_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl THTMLParamElement with name(self : Self) -> String {
  html_param_element_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_param_element_set_name_ffi(
  obj : JsValue,
  name : JsValue,
) -> Unit = "(obj, name) => { obj.name = name; }"

///|
impl THTMLParamElement with set_name(self : Self, name : String) -> Unit {
  html_param_element_set_name_ffi(TJsValue::to_js(self), TJsValue::to_js(name))
}

///|
extern "js" fn html_param_element_value_ffi(obj : JsValue) -> String = "(obj) => obj.value"

///|
impl THTMLParamElement with value(self : Self) -> String {
  html_param_element_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_param_element_set_value_ffi(
  obj : JsValue,
  value : JsValue,
) -> Unit = "(obj, value) => { obj.value = value; }"

///|
impl THTMLParamElement with set_value(self : Self, value : String) -> Unit {
  html_param_element_set_value_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value),
  )
}

///|
extern "js" fn html_param_element_type_ffi(obj : JsValue) -> String = "(obj) => obj.type"

///|
impl THTMLParamElement with type_(self : Self) -> String {
  html_param_element_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_param_element_set_type_ffi(
  obj : JsValue,
  type_ : JsValue,
) -> Unit = "(obj, type) => { obj.type = type; }"

///|
impl THTMLParamElement with set_type_(self : Self, type_ : String) -> Unit {
  html_param_element_set_type_ffi(TJsValue::to_js(self), TJsValue::to_js(type_))
}

///|
extern "js" fn html_param_element_value_type_ffi(obj : JsValue) -> String = "(obj) => obj.valueType"

///|
impl THTMLParamElement with value_type(self : Self) -> String {
  html_param_element_value_type_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn html_param_element_set_value_type_ffi(
  obj : JsValue,
  value_type : JsValue,
) -> Unit = "(obj, valueType) => { obj.valueType = valueType; }"

///|
impl THTMLParamElement with set_value_type(self : Self, value_type : String) -> Unit {
  html_param_element_set_value_type_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(value_type),
  )
}
