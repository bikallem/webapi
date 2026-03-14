// Do not edit. This file is generated.
// MoonBit type: DOMTokenList
// Specifications: dom.idl

/// [DOMTokenList](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList)
#external
pub type DOMTokenList

pub impl TJsValue for DOMTokenList with to_js(self: DOMTokenList) -> JsValue = "%identity"

pub impl FromJsAny for DOMTokenList with from_js_any(value : JsAny) -> DOMTokenList = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TDOMTokenList] DOMTokenList::into(self : DOMTokenList) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TDOMTokenList] DOMTokenList::unsafe_into(self : DOMTokenList) -> T = "%identity"

pub impl HasConstructor for DOMTokenList with constructor_name() { "DOMTokenList" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TDOMTokenList + HasConstructor] DOMTokenList::try_into(self : DOMTokenList) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TDOMTokenList for DOMTokenList

/// [DOMTokenList](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList) interface.
pub trait TDOMTokenList: TJsValue {
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> String? = _
  contains(self : Self, token : String) -> Bool = _
  add(self : Self, tokens : Array[String]) -> Unit = _
  remove(self : Self, tokens : Array[String]) -> Unit = _
  toggle(self : Self, token : String, force? : Bool) -> Bool = _
  replace(self : Self, token : String, new_token : String) -> Bool = _
  supports(self : Self, token : String) -> Bool = _
  value(self : Self) -> String = _
  set_value(self : Self, value : String) -> Unit = _
}

/// [DOMTokenList.length](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/length)
impl TDOMTokenList with length(self : Self) -> UInt {
  dom_token_list_length_ffi(TJsValue::to_js(self))
}

/// [DOMTokenList.item](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/item)
impl TDOMTokenList with item(self : Self, 
index : UInt) -> String? {
  dom_token_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option_prim()
}

/// [DOMTokenList.contains](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/contains)
impl TDOMTokenList with contains(self : Self, 
token : String) -> Bool {
  dom_token_list_contains_ffi(TJsValue::to_js(self), TJsValue::to_js(token))
}

/// [DOMTokenList.add](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/add)
impl TDOMTokenList with add(self : Self, 
tokens : Array[String]) -> Unit {
  dom_token_list_add_ffi(TJsValue::to_js(self), TJsValue::to_js(tokens.map(fn(v) { TJsValue::to_js(v) })))
}

/// [DOMTokenList.remove](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/remove)
impl TDOMTokenList with remove(self : Self, 
tokens : Array[String]) -> Unit {
  dom_token_list_remove_ffi(TJsValue::to_js(self), TJsValue::to_js(tokens.map(fn(v) { TJsValue::to_js(v) })))
}

/// [DOMTokenList.toggle](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/toggle)
impl TDOMTokenList with toggle(self : Self, 
token : String, 
force? : Bool) -> Bool {
  dom_token_list_toggle_ffi(TJsValue::to_js(self), TJsValue::to_js(token), opt_to_js(force))
}

/// [DOMTokenList.replace](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/replace)
impl TDOMTokenList with replace(self : Self, 
token : String, 
new_token : String) -> Bool {
  dom_token_list_replace_ffi(TJsValue::to_js(self), TJsValue::to_js(token), TJsValue::to_js(new_token))
}

/// [DOMTokenList.supports](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/supports)
impl TDOMTokenList with supports(self : Self, 
token : String) -> Bool {
  dom_token_list_supports_ffi(TJsValue::to_js(self), TJsValue::to_js(token))
}

/// [DOMTokenList.value](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/value)
impl TDOMTokenList with value(self : Self) -> String {
  dom_token_list_value_ffi(TJsValue::to_js(self))
}

/// [DOMTokenList.value](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList/value)
impl TDOMTokenList with set_value(self : Self, 
value : String) -> Unit {
  dom_token_list_set_value_ffi(TJsValue::to_js(self), TJsValue::to_js(value))
}

#cfg(target="js")
extern "js" fn dom_token_list_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn dom_token_list_length_ffi(obj: JsValue) -> UInt {
  dom_token_list_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_token_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"

#cfg(target="js")
extern "js" fn dom_token_list_contains_ffi_js(obj: JsValue, token: JsValue) -> JsValue = "(obj, token) => obj.contains(token)"

///|
#cfg(target="js")
fn dom_token_list_contains_ffi(obj: JsValue, token: JsValue) -> Bool {
  dom_token_list_contains_ffi_js(obj, token).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_token_list_add_ffi(obj: JsValue, tokens: JsValue) -> Unit = "(obj, tokens) => obj.add(...tokens)"

#cfg(target="js")
extern "js" fn dom_token_list_remove_ffi(obj: JsValue, tokens: JsValue) -> Unit = "(obj, tokens) => obj.remove(...tokens)"

#cfg(target="js")
extern "js" fn dom_token_list_toggle_ffi_js(obj: JsValue, token: JsValue, force: JsValue) -> JsValue = "(obj, token, force) => obj.toggle(token, force)"

///|
#cfg(target="js")
fn dom_token_list_toggle_ffi(obj: JsValue, token: JsValue, force: JsValue) -> Bool {
  dom_token_list_toggle_ffi_js(obj, token, force).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_token_list_replace_ffi_js(obj: JsValue, token: JsValue, new_token: JsValue) -> JsValue = "(obj, token, new_token) => obj.replace(token, new_token)"

///|
#cfg(target="js")
fn dom_token_list_replace_ffi(obj: JsValue, token: JsValue, new_token: JsValue) -> Bool {
  dom_token_list_replace_ffi_js(obj, token, new_token).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_token_list_supports_ffi_js(obj: JsValue, token: JsValue) -> JsValue = "(obj, token) => obj.supports(token)"

///|
#cfg(target="js")
fn dom_token_list_supports_ffi(obj: JsValue, token: JsValue) -> Bool {
  dom_token_list_supports_ffi_js(obj, token).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_token_list_value_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.value"

///|
#cfg(target="js")
fn dom_token_list_value_ffi(obj: JsValue) -> String {
  dom_token_list_value_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn dom_token_list_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "(obj, value) => { obj.value = value; }"

#cfg(target="wasm-gc")
fn dom_token_list_length_ffi(obj: JsValue) -> UInt = "webapi_DOMTokenList" "get_length"

#cfg(target="wasm-gc")
fn dom_token_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_DOMTokenList" "item"

#cfg(target="wasm-gc")
fn dom_token_list_contains_ffi(obj: JsValue, token: JsValue) -> Bool = "webapi_DOMTokenList" "contains"

#cfg(target="wasm-gc")
fn dom_token_list_add_ffi(obj: JsValue, tokens: JsValue) -> Unit = "webapi_DOMTokenList" "add"

#cfg(target="wasm-gc")
fn dom_token_list_remove_ffi(obj: JsValue, tokens: JsValue) -> Unit = "webapi_DOMTokenList" "remove"

#cfg(target="wasm-gc")
fn dom_token_list_toggle_ffi(obj: JsValue, token: JsValue, force: JsValue) -> Bool = "webapi_DOMTokenList" "toggle"

#cfg(target="wasm-gc")
fn dom_token_list_replace_ffi(obj: JsValue, token: JsValue, new_token: JsValue) -> Bool = "webapi_DOMTokenList" "replace"

#cfg(target="wasm-gc")
fn dom_token_list_supports_ffi(obj: JsValue, token: JsValue) -> Bool = "webapi_DOMTokenList" "supports"

#cfg(target="wasm-gc")
fn dom_token_list_value_ffi_wasm(obj: JsValue) -> JsValue = "webapi_DOMTokenList" "get_value"

///|
#cfg(target="wasm-gc")
fn dom_token_list_value_ffi(obj: JsValue) -> String {
  jsvalue_to_string(dom_token_list_value_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn dom_token_list_set_value_ffi(obj: JsValue, value: JsValue) -> Unit = "webapi_DOMTokenList" "set_value"