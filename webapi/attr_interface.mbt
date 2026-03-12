// Do not edit. This file is generated.
// MoonBit type: Attr
// Specifications: dom.idl

///|
/// [Attr](https://developer.mozilla.org/en-US/docs/Web/API/Attr)
#external
pub type Attr

///|
pub impl TJsValue for Attr with to_js(self : Attr) -> JsValue = "%identity"

///|
pub impl FromJsAny for Attr with from_js_any(value : JsAny) -> Attr = "%identity"

///|
pub fn[T : TAttr] Attr::into(self : Attr) -> T = "%identity"

///|
pub impl TAttr for Attr

///|
pub impl TNode for Attr

///|
pub impl TEventTarget for Attr

///|
/// [Attr](https://developer.mozilla.org/en-US/docs/Web/API/Attr) interface.
pub trait TAttr: TNode {
  namespace_uri(self : Self) -> String = _
  prefix(self : Self) -> String = _
  local_name(self : Self) -> String = _
  name(self : Self) -> String = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
  owner_element(self : Self) -> Element = _
  specified(self : Self) -> Bool = _
}

///|
/// [Attr.namespaceURI](https://developer.mozilla.org/en-US/docs/Web/API/Attr/namespaceURI)
impl TAttr with namespace_uri(self : Self) -> String {
  attr_namespace_uri_ffi(TJsValue::to_js(self))
}

///|
/// [Attr.prefix](https://developer.mozilla.org/en-US/docs/Web/API/Attr/prefix)
impl TAttr with prefix(self : Self) -> String {
  attr_prefix_ffi(TJsValue::to_js(self))
}

///|
/// [Attr.localName](https://developer.mozilla.org/en-US/docs/Web/API/Attr/localName)
impl TAttr with local_name(self : Self) -> String {
  attr_local_name_ffi(TJsValue::to_js(self))
}

///|
/// [Attr.name](https://developer.mozilla.org/en-US/docs/Web/API/Attr/name)
impl TAttr with name(self : Self) -> String {
  attr_name_ffi(TJsValue::to_js(self))
}

///|
/// [Attr.value](https://developer.mozilla.org/en-US/docs/Web/API/Attr/value)
impl TAttr with value(self : Self) -> String {
  attr_value_ffi(TJsValue::to_js(self))
}

///|
/// [Attr.value](https://developer.mozilla.org/en-US/docs/Web/API/Attr/value)
impl TAttr with set_value(self : Self, value : String) -> Unit {
  attr_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

///|
/// [Attr.ownerElement](https://developer.mozilla.org/en-US/docs/Web/API/Attr/ownerElement)
impl TAttr with owner_element(self : Self) -> Element {
  attr_owner_element_ffi(TJsValue::to_js(self))
}

///|
/// [Attr.specified](https://developer.mozilla.org/en-US/docs/Web/API/Attr/specified)
impl TAttr with specified(self : Self) -> Bool {
  attr_specified_ffi(TJsValue::to_js(self))
}
