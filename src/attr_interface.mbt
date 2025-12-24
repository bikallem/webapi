///|
#external
pub type Attr

///|
pub impl TJsValue for Attr with to_js(self : Attr) -> JsValue = "%identity"

///|
pub fn[T : TAttr] Attr::into(self : Attr) -> T = "%identity"

///|
pub impl TAttr for Attr

///|
pub impl TNode for Attr

///|
pub impl TEventTarget for Attr

///|
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
extern "js" fn attr_namespace_uri_ffi(obj : JsValue) -> String = "(obj) => obj.namespaceURI"

///|
impl TAttr with namespace_uri(self : Self) -> String {
  attr_namespace_uri_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn attr_prefix_ffi(obj : JsValue) -> String = "(obj) => obj.prefix"

///|
impl TAttr with prefix(self : Self) -> String {
  attr_prefix_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn attr_local_name_ffi(obj : JsValue) -> String = "(obj) => obj.localName"

///|
impl TAttr with local_name(self : Self) -> String {
  attr_local_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn attr_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
impl TAttr with name(self : Self) -> String {
  attr_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn attr_value_ffi(obj : JsValue) -> String = "(obj) => obj.value"

///|
impl TAttr with value(self : Self) -> String {
  attr_value_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn attr_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

///|
impl TAttr with set_value(self : Self, value : String) -> Unit {
  attr_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

///|
extern "js" fn attr_owner_element_ffi(obj : JsValue) -> Element = "(obj) => obj.ownerElement"

///|
impl TAttr with owner_element(self : Self) -> Element {
  attr_owner_element_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn attr_specified_ffi(obj : JsValue) -> Bool = "(obj) => obj.specified"

///|
impl TAttr with specified(self : Self) -> Bool {
  attr_specified_ffi(TJsValue::to_js(self))
}
