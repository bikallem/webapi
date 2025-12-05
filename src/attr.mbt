// Auto-generated MoonBit bindings for Attr

// Do not edit manually

///|
#external
pub type Attr

///|
pub trait TAttr: TJsValue + TNode {
  namespace_uri(self : Self) -> String? = _
  prefix(self : Self) -> String? = _
  local_name(self : Self) -> String = _
  name(self : Self) -> String = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
  owner_element(self : Self) -> Element? = _
  specified(self : Self) -> Bool = _
}

///|
pub impl TEventTarget for Attr

///|
pub impl TNode for Attr

///|
pub impl TAttr for Attr

///|
pub impl TJsValue for Attr with to_js(self : Attr) -> JsValue = "%identity"

///|
fn attr_namespace_uri_ffi(obj : JsValue) -> JsValue = "webapi_Attr" "namespaceURI"

///|
impl TAttr with namespace_uri(self : Self) -> String? {
  attr_namespace_uri_ffi(self.to_js()).as_option()
}

///|
fn attr_prefix_ffi(obj : JsValue) -> JsValue = "webapi_Attr" "prefix"

///|
impl TAttr with prefix(self : Self) -> String? {
  attr_prefix_ffi(self.to_js()).as_option()
}

///|
fn attr_local_name_ffi(obj : JsValue) -> String = "webapi_Attr" "localName"

///|
impl TAttr with local_name(self : Self) -> String {
  attr_local_name_ffi(self.to_js())
}

///|
fn attr_name_ffi(obj : JsValue) -> String = "webapi_Attr" "name"

///|
impl TAttr with name(self : Self) -> String {
  attr_name_ffi(self.to_js())
}

///|
fn attr_value_ffi(obj : JsValue) -> String = "webapi_Attr" "value"

///|
impl TAttr with value(self : Self) -> String {
  attr_value_ffi(self.to_js())
}

///|
fn attr_set_value_ffi(obj : JsValue, value : String) -> Unit = "webapi_Attr" "set_value"

///|
impl TAttr with set_value(self : Self, value : String) -> Unit {
  attr_set_value_ffi(self.to_js(), value)
}

///|
fn attr_owner_element_ffi(obj : JsValue) -> JsValue = "webapi_Attr" "ownerElement"

///|
impl TAttr with owner_element(self : Self) -> Element? {
  attr_owner_element_ffi(self.to_js()).as_option()
}

///|
fn attr_specified_ffi(obj : JsValue) -> Bool = "webapi_Attr" "specified"

///|
impl TAttr with specified(self : Self) -> Bool {
  attr_specified_ffi(self.to_js())
}
