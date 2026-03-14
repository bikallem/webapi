// Do not edit. This file is generated.
// MoonBit type: NamedNodeMap
// Specifications: dom.idl

/// [NamedNodeMap](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap)
#external
pub type NamedNodeMap

pub impl TJsValue for NamedNodeMap with to_js(self: NamedNodeMap) -> JsValue = "%identity"

pub impl FromJsAny for NamedNodeMap with from_js_any(value : JsAny) -> NamedNodeMap = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TNamedNodeMap] NamedNodeMap::into(self : NamedNodeMap) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TNamedNodeMap] NamedNodeMap::unsafe_into(self : NamedNodeMap) -> T = "%identity"

pub impl HasConstructor for NamedNodeMap with constructor_name() { "NamedNodeMap" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TNamedNodeMap + HasConstructor] NamedNodeMap::try_into(self : NamedNodeMap) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TNamedNodeMap for NamedNodeMap

/// [NamedNodeMap](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap) interface.
pub trait TNamedNodeMap: TJsValue {
  length(self : Self) -> UInt = _
  item_opt(self : Self, index : UInt) -> Attr? = _
  get_named_item_opt(self : Self, qualified_name : String) -> Attr? = _
  get_named_item_ns_opt(self : Self, namespace_ : String, local_name : String) -> Attr? = _
  set_named_item_opt(self : Self, attr : &TAttr) -> Attr? = _
  set_named_item_ns_opt(self : Self, attr : &TAttr) -> Attr? = _
  remove_named_item(self : Self, qualified_name : String) -> Attr = _
  remove_named_item_ns(self : Self, namespace_ : String, local_name : String) -> Attr = _
  item(self : Self, index : UInt) -> Attr = _
  get_named_item(self : Self, qualified_name : String) -> Attr = _
  get_named_item_ns(self : Self, namespace_ : String, local_name : String) -> Attr = _
  set_named_item(self : Self, attr : &TAttr) -> Attr = _
  set_named_item_ns(self : Self, attr : &TAttr) -> Attr = _
}

/// [NamedNodeMap.length](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/length)
impl TNamedNodeMap with length(self : Self) -> UInt {
  named_node_map_length_ffi(TJsValue::to_js(self))
}

/// [NamedNodeMap.item](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/item)
impl TNamedNodeMap with item_opt(self : Self, 
index : UInt) -> Attr? {
  named_node_map_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

/// [NamedNodeMap.getNamedItem](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/getNamedItem)
impl TNamedNodeMap with get_named_item_opt(self : Self, 
qualified_name : String) -> Attr? {
  named_node_map_get_named_item_ffi(TJsValue::to_js(self), TJsValue::to_js(qualified_name)).to_option()
}

/// [NamedNodeMap.getNamedItemNS](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/getNamedItemNS)
impl TNamedNodeMap with get_named_item_ns_opt(self : Self, 
namespace_ : String, 
local_name : String) -> Attr? {
  named_node_map_get_named_item_ns_ffi(TJsValue::to_js(self), TJsValue::to_js(namespace_), TJsValue::to_js(local_name)).to_option()
}

/// [NamedNodeMap.setNamedItem](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/setNamedItem)
impl TNamedNodeMap with set_named_item_opt(self : Self, 
attr : &TAttr) -> Attr? {
  named_node_map_set_named_item_ffi(TJsValue::to_js(self), TJsValue::to_js(attr)).to_option()
}

/// [NamedNodeMap.setNamedItemNS](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/setNamedItemNS)
impl TNamedNodeMap with set_named_item_ns_opt(self : Self, 
attr : &TAttr) -> Attr? {
  named_node_map_set_named_item_ns_ffi(TJsValue::to_js(self), TJsValue::to_js(attr)).to_option()
}

/// [NamedNodeMap.removeNamedItem](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/removeNamedItem)
impl TNamedNodeMap with remove_named_item(self : Self, 
qualified_name : String) -> Attr {
  named_node_map_remove_named_item_ffi(TJsValue::to_js(self), TJsValue::to_js(qualified_name))
}

/// [NamedNodeMap.removeNamedItemNS](https://developer.mozilla.org/en-US/docs/Web/API/NamedNodeMap/removeNamedItemNS)
impl TNamedNodeMap with remove_named_item_ns(self : Self, 
namespace_ : String, 
local_name : String) -> Attr {
  named_node_map_remove_named_item_ns_ffi(TJsValue::to_js(self), TJsValue::to_js(namespace_), TJsValue::to_js(local_name))
}

impl TNamedNodeMap with item(self : Self, 
index : UInt) -> Attr {
  self.item_opt(index).unwrap()
}

impl TNamedNodeMap with get_named_item(self : Self, 
qualified_name : String) -> Attr {
  self.get_named_item_opt(qualified_name).unwrap()
}

impl TNamedNodeMap with get_named_item_ns(self : Self, 
namespace_ : String, 
local_name : String) -> Attr {
  self.get_named_item_ns_opt(namespace_, local_name).unwrap()
}

impl TNamedNodeMap with set_named_item(self : Self, 
attr : &TAttr) -> Attr {
  self.set_named_item_opt(attr).unwrap()
}

impl TNamedNodeMap with set_named_item_ns(self : Self, 
attr : &TAttr) -> Attr {
  self.set_named_item_ns_opt(attr).unwrap()
}

#cfg(target="js")
extern "js" fn named_node_map_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn named_node_map_length_ffi(obj: JsValue) -> UInt {
  named_node_map_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn named_node_map_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"

#cfg(target="js")
extern "js" fn named_node_map_get_named_item_ffi(obj: JsValue, qualified_name: JsValue) -> JsValue = "(obj, qualified_name) => obj.getNamedItem(qualified_name)"

#cfg(target="js")
extern "js" fn named_node_map_get_named_item_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "(obj, namespace_, local_name) => obj.getNamedItemNS(namespace_, local_name)"

#cfg(target="js")
extern "js" fn named_node_map_set_named_item_ffi(obj: JsValue, attr: JsValue) -> JsValue = "(obj, attr) => obj.setNamedItem(attr)"

#cfg(target="js")
extern "js" fn named_node_map_set_named_item_ns_ffi(obj: JsValue, attr: JsValue) -> JsValue = "(obj, attr) => obj.setNamedItemNS(attr)"

#cfg(target="js")
extern "js" fn named_node_map_remove_named_item_ffi_js(obj: JsValue, qualified_name: JsValue) -> JsValue = "(obj, qualified_name) => obj.removeNamedItem(qualified_name)"

///|
#cfg(target="js")
fn named_node_map_remove_named_item_ffi(obj: JsValue, qualified_name: JsValue) -> Attr {
  named_node_map_remove_named_item_ffi_js(obj, qualified_name).unsafe_cast()
}

#cfg(target="js")
extern "js" fn named_node_map_remove_named_item_ns_ffi_js(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "(obj, namespace_, local_name) => obj.removeNamedItemNS(namespace_, local_name)"

///|
#cfg(target="js")
fn named_node_map_remove_named_item_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> Attr {
  named_node_map_remove_named_item_ns_ffi_js(obj, namespace_, local_name).unsafe_cast()
}

#cfg(target="wasm-gc")
fn named_node_map_length_ffi(obj: JsValue) -> UInt = "webapi_NamedNodeMap" "get_length"

#cfg(target="wasm-gc")
fn named_node_map_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_NamedNodeMap" "item"

#cfg(target="wasm-gc")
fn named_node_map_get_named_item_ffi(obj: JsValue, qualified_name: JsValue) -> JsValue = "webapi_NamedNodeMap" "getNamedItem"

#cfg(target="wasm-gc")
fn named_node_map_get_named_item_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> JsValue = "webapi_NamedNodeMap" "getNamedItemNS"

#cfg(target="wasm-gc")
fn named_node_map_set_named_item_ffi(obj: JsValue, attr: JsValue) -> JsValue = "webapi_NamedNodeMap" "setNamedItem"

#cfg(target="wasm-gc")
fn named_node_map_set_named_item_ns_ffi(obj: JsValue, attr: JsValue) -> JsValue = "webapi_NamedNodeMap" "setNamedItemNS"

#cfg(target="wasm-gc")
fn named_node_map_remove_named_item_ffi(obj: JsValue, qualified_name: JsValue) -> Attr = "webapi_NamedNodeMap" "removeNamedItem"

#cfg(target="wasm-gc")
fn named_node_map_remove_named_item_ns_ffi(obj: JsValue, namespace_: JsValue, local_name: JsValue) -> Attr = "webapi_NamedNodeMap" "removeNamedItemNS"