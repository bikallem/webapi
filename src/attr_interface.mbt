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
/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T : TAttr] Attr::into(self : Attr) -> T = "%identity"

///|
/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T : TAttr] Attr::unsafe_into(self : Attr) -> T = "%identity"

///|
pub impl HasConstructor for Attr with constructor_name() {
  "Attr"
}

///|
/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TAttr + HasConstructor] Attr::try_into(self : Attr) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

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

///|
#cfg(target="js")
extern "js" fn attr_namespace_uri_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.namespaceURI"

///|
#cfg(target="js")
fn attr_namespace_uri_ffi(obj : JsValue) -> String {
  attr_namespace_uri_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn attr_prefix_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.prefix"

///|
#cfg(target="js")
fn attr_prefix_ffi(obj : JsValue) -> String {
  attr_prefix_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn attr_local_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.localName"

///|
#cfg(target="js")
fn attr_local_name_ffi(obj : JsValue) -> String {
  attr_local_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn attr_name_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.name"

///|
#cfg(target="js")
fn attr_name_ffi(obj : JsValue) -> String {
  attr_name_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn attr_value_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn attr_value_ffi(obj : JsValue) -> String {
  attr_value_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn attr_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

///|
#cfg(target="js")
extern "js" fn attr_owner_element_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.ownerElement"

///|
#cfg(target="js")
fn attr_owner_element_ffi(obj : JsValue) -> Element {
  attr_owner_element_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="js")
extern "js" fn attr_specified_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.specified"

///|
#cfg(target="js")
fn attr_specified_ffi(obj : JsValue) -> Bool {
  attr_specified_ffi_js(obj).unsafe_cast()
}

///|
#cfg(target="wasm-gc")
fn attr_namespace_uri_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Attr" "get_namespaceURI"

///|
#cfg(target="wasm-gc")
fn attr_namespace_uri_ffi(obj : JsValue) -> String {
  jsvalue_to_string(attr_namespace_uri_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn attr_prefix_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Attr" "get_prefix"

///|
#cfg(target="wasm-gc")
fn attr_prefix_ffi(obj : JsValue) -> String {
  jsvalue_to_string(attr_prefix_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn attr_local_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Attr" "get_localName"

///|
#cfg(target="wasm-gc")
fn attr_local_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(attr_local_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn attr_name_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Attr" "get_name"

///|
#cfg(target="wasm-gc")
fn attr_name_ffi(obj : JsValue) -> String {
  jsvalue_to_string(attr_name_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn attr_value_ffi_wasm(obj : JsValue) -> JsValue = "webapi_Attr" "get_value"

///|
#cfg(target="wasm-gc")
fn attr_value_ffi(obj : JsValue) -> String {
  jsvalue_to_string(attr_value_ffi_wasm(obj))
}

///|
#cfg(target="wasm-gc")
fn attr_set_value_ffi(obj : JsValue, value : JsValue) -> Unit = "webapi_Attr" "set_value"

///|
#cfg(target="wasm-gc")
fn attr_owner_element_ffi(obj : JsValue) -> Element = "webapi_Attr" "get_ownerElement"

///|
#cfg(target="wasm-gc")
fn attr_specified_ffi(obj : JsValue) -> Bool = "webapi_Attr" "get_specified"
