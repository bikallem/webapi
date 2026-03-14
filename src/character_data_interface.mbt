// Do not edit. This file is generated.
// MoonBit type: CharacterData
// Specifications: dom.idl

/// [CharacterData](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData)
#external
pub type CharacterData

pub impl TJsValue for CharacterData with to_js(self: CharacterData) -> JsValue = "%identity"

pub impl FromJsAny for CharacterData with from_js_any(value : JsAny) -> CharacterData = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TCharacterData] CharacterData::into(self : CharacterData) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TCharacterData] CharacterData::unsafe_into(self : CharacterData) -> T = "%identity"

pub impl HasConstructor for CharacterData with constructor_name() { "CharacterData" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TCharacterData + HasConstructor] CharacterData::try_into(self : CharacterData) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TCharacterData for CharacterData

pub impl TNode for CharacterData

pub impl TEventTarget for CharacterData

pub(open) trait TCharacterDataBeforeNodes : TJsValue {}

pub impl TCharacterDataBeforeNodes for Node

pub impl TCharacterDataBeforeNodes for String

pub(open) trait TCharacterDataAfterNodes : TJsValue {}

pub impl TCharacterDataAfterNodes for Node

pub impl TCharacterDataAfterNodes for String

pub(open) trait TCharacterDataReplaceWithNodes : TJsValue {}

pub impl TCharacterDataReplaceWithNodes for Node

pub impl TCharacterDataReplaceWithNodes for String

/// [CharacterData](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData) interface.
pub trait TCharacterData: TNode {
  data(self : Self) -> String = _
  set_data(self : Self, data : String) -> Unit = _
  length(self : Self) -> UInt = _
  substring_data(self : Self, offset : UInt, count : UInt) -> String = _
  append_data(self : Self, data : String) -> Unit = _
  insert_data(self : Self, offset : UInt, data : String) -> Unit = _
  delete_data(self : Self, offset : UInt, count : UInt) -> Unit = _
  replace_data(self : Self, offset : UInt, count : UInt, data : String) -> Unit = _
  previous_element_sibling(self : Self) -> Element = _
  next_element_sibling(self : Self) -> Element = _
  before(self : Self, nodes : Array[&TCharacterDataBeforeNodes]) -> Unit = _
  after(self : Self, nodes : Array[&TCharacterDataAfterNodes]) -> Unit = _
  replace_with(self : Self, nodes : Array[&TCharacterDataReplaceWithNodes]) -> Unit = _
  remove(self : Self) -> Unit = _
}

/// [CharacterData.data](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData/data)
impl TCharacterData with data(self : Self) -> String {
  character_data_data_ffi(TJsValue::to_js(self))
}

/// [CharacterData.data](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData/data)
impl TCharacterData with set_data(self : Self, 
data : String) -> Unit {
  character_data_set_data_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

/// [CharacterData.length](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData/length)
impl TCharacterData with length(self : Self) -> UInt {
  character_data_length_ffi(TJsValue::to_js(self))
}

/// [CharacterData.substringData](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData/substringData)
impl TCharacterData with substring_data(self : Self, 
offset : UInt, 
count : UInt) -> String {
  character_data_substring_data_ffi(TJsValue::to_js(self), TJsValue::to_js(offset), TJsValue::to_js(count))
}

/// [CharacterData.appendData](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData/appendData)
impl TCharacterData with append_data(self : Self, 
data : String) -> Unit {
  character_data_append_data_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

/// [CharacterData.insertData](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData/insertData)
impl TCharacterData with insert_data(self : Self, 
offset : UInt, 
data : String) -> Unit {
  character_data_insert_data_ffi(TJsValue::to_js(self), TJsValue::to_js(offset), TJsValue::to_js(data))
}

/// [CharacterData.deleteData](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData/deleteData)
impl TCharacterData with delete_data(self : Self, 
offset : UInt, 
count : UInt) -> Unit {
  character_data_delete_data_ffi(TJsValue::to_js(self), TJsValue::to_js(offset), TJsValue::to_js(count))
}

/// [CharacterData.replaceData](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData/replaceData)
impl TCharacterData with replace_data(self : Self, 
offset : UInt, 
count : UInt, 
data : String) -> Unit {
  character_data_replace_data_ffi(TJsValue::to_js(self), TJsValue::to_js(offset), TJsValue::to_js(count), TJsValue::to_js(data))
}

/// [CharacterData.previousElementSibling](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData/previousElementSibling)
impl TCharacterData with previous_element_sibling(self : Self) -> Element {
  character_data_previous_element_sibling_ffi(TJsValue::to_js(self))
}

/// [CharacterData.nextElementSibling](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData/nextElementSibling)
impl TCharacterData with next_element_sibling(self : Self) -> Element {
  character_data_next_element_sibling_ffi(TJsValue::to_js(self))
}

/// [CharacterData.before](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData/before)
impl TCharacterData with before(self : Self, 
nodes : Array[&TCharacterDataBeforeNodes]) -> Unit {
  character_data_before_ffi(TJsValue::to_js(self), TJsValue::to_js(nodes.map(fn(v : &TCharacterDataBeforeNodes) -> JsValue { v.to_js() })))
}

/// [CharacterData.after](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData/after)
impl TCharacterData with after(self : Self, 
nodes : Array[&TCharacterDataAfterNodes]) -> Unit {
  character_data_after_ffi(TJsValue::to_js(self), TJsValue::to_js(nodes.map(fn(v : &TCharacterDataAfterNodes) -> JsValue { v.to_js() })))
}

/// [CharacterData.replaceWith](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData/replaceWith)
impl TCharacterData with replace_with(self : Self, 
nodes : Array[&TCharacterDataReplaceWithNodes]) -> Unit {
  character_data_replace_with_ffi(TJsValue::to_js(self), TJsValue::to_js(nodes.map(fn(v : &TCharacterDataReplaceWithNodes) -> JsValue { v.to_js() })))
}

/// [CharacterData.remove](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData/remove)
impl TCharacterData with remove(self : Self) -> Unit {
  character_data_remove_ffi(TJsValue::to_js(self))
}

#cfg(target="js")
extern "js" fn character_data_data_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.data"

///|
#cfg(target="js")
fn character_data_data_ffi(obj: JsValue) -> String {
  character_data_data_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn character_data_set_data_ffi(obj: JsValue, data: JsValue) -> Unit = "(obj, data) => { obj.data = data; }"

#cfg(target="js")
extern "js" fn character_data_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn character_data_length_ffi(obj: JsValue) -> UInt {
  character_data_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn character_data_substring_data_ffi_js(obj: JsValue, offset: JsValue, count: JsValue) -> JsValue = "(obj, offset, count) => obj.substringData(offset, count)"

///|
#cfg(target="js")
fn character_data_substring_data_ffi(obj: JsValue, offset: JsValue, count: JsValue) -> String {
  character_data_substring_data_ffi_js(obj, offset, count).unsafe_cast()
}

#cfg(target="js")
extern "js" fn character_data_append_data_ffi(obj: JsValue, data: JsValue) -> Unit = "(obj, data) => obj.appendData(data)"

#cfg(target="js")
extern "js" fn character_data_insert_data_ffi(obj: JsValue, offset: JsValue, data: JsValue) -> Unit = "(obj, offset, data) => obj.insertData(offset, data)"

#cfg(target="js")
extern "js" fn character_data_delete_data_ffi(obj: JsValue, offset: JsValue, count: JsValue) -> Unit = "(obj, offset, count) => obj.deleteData(offset, count)"

#cfg(target="js")
extern "js" fn character_data_replace_data_ffi(obj: JsValue, offset: JsValue, count: JsValue, data: JsValue) -> Unit = "(obj, offset, count, data) => obj.replaceData(offset, count, data)"

#cfg(target="js")
extern "js" fn character_data_previous_element_sibling_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.previousElementSibling"

///|
#cfg(target="js")
fn character_data_previous_element_sibling_ffi(obj: JsValue) -> Element {
  character_data_previous_element_sibling_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn character_data_next_element_sibling_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.nextElementSibling"

///|
#cfg(target="js")
fn character_data_next_element_sibling_ffi(obj: JsValue) -> Element {
  character_data_next_element_sibling_ffi_js(obj).unsafe_cast()
}

#cfg(target="js")
extern "js" fn character_data_before_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.before(...nodes)"

#cfg(target="js")
extern "js" fn character_data_after_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.after(...nodes)"

#cfg(target="js")
extern "js" fn character_data_replace_with_ffi(obj: JsValue, nodes: JsValue) -> Unit = "(obj, nodes) => obj.replaceWith(...nodes)"

#cfg(target="js")
extern "js" fn character_data_remove_ffi(obj: JsValue) -> Unit = "(obj) => obj.remove()"

#cfg(target="wasm-gc")
fn character_data_data_ffi_wasm(obj: JsValue) -> JsValue = "webapi_CharacterData" "get_data"

///|
#cfg(target="wasm-gc")
fn character_data_data_ffi(obj: JsValue) -> String {
  jsvalue_to_string(character_data_data_ffi_wasm(obj))
}

#cfg(target="wasm-gc")
fn character_data_set_data_ffi(obj: JsValue, data: JsValue) -> Unit = "webapi_CharacterData" "set_data"

#cfg(target="wasm-gc")
fn character_data_length_ffi(obj: JsValue) -> UInt = "webapi_CharacterData" "get_length"

#cfg(target="wasm-gc")
fn character_data_substring_data_ffi_wasm(obj: JsValue, offset: JsValue, count: JsValue) -> JsValue = "webapi_CharacterData" "substringData"

///|
#cfg(target="wasm-gc")
fn character_data_substring_data_ffi(obj: JsValue, offset: JsValue, count: JsValue) -> String {
  jsvalue_to_string(character_data_substring_data_ffi_wasm(obj, offset, count))
}

#cfg(target="wasm-gc")
fn character_data_append_data_ffi(obj: JsValue, data: JsValue) -> Unit = "webapi_CharacterData" "appendData"

#cfg(target="wasm-gc")
fn character_data_insert_data_ffi(obj: JsValue, offset: JsValue, data: JsValue) -> Unit = "webapi_CharacterData" "insertData"

#cfg(target="wasm-gc")
fn character_data_delete_data_ffi(obj: JsValue, offset: JsValue, count: JsValue) -> Unit = "webapi_CharacterData" "deleteData"

#cfg(target="wasm-gc")
fn character_data_replace_data_ffi(obj: JsValue, offset: JsValue, count: JsValue, data: JsValue) -> Unit = "webapi_CharacterData" "replaceData"

#cfg(target="wasm-gc")
fn character_data_previous_element_sibling_ffi(obj: JsValue) -> Element = "webapi_CharacterData" "get_previousElementSibling"

#cfg(target="wasm-gc")
fn character_data_next_element_sibling_ffi(obj: JsValue) -> Element = "webapi_CharacterData" "get_nextElementSibling"

#cfg(target="wasm-gc")
fn character_data_before_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_CharacterData" "before"

#cfg(target="wasm-gc")
fn character_data_after_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_CharacterData" "after"

#cfg(target="wasm-gc")
fn character_data_replace_with_ffi(obj: JsValue, nodes: JsValue) -> Unit = "webapi_CharacterData" "replaceWith"

#cfg(target="wasm-gc")
fn character_data_remove_ffi(obj: JsValue) -> Unit = "webapi_CharacterData" "remove"