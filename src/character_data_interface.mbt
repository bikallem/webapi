// Do not edit. This file is generated.
// MoonBit type: CharacterData
// Specifications: dom.idl

/// [CharacterData](https://developer.mozilla.org/en-US/docs/Web/API/CharacterData)
#external
pub type CharacterData

pub impl TJsValue for CharacterData with to_js(self: CharacterData) -> JsValue = "%identity"

pub fn[T: TCharacterData] CharacterData::into(self : CharacterData) -> T = "%identity"

pub impl TCharacterData for CharacterData

pub impl TNode for CharacterData

pub impl TEventTarget for CharacterData

pub(open) trait TCharacterDataBeforeNodes {
  to_js(self : Self) -> JsValue
}

pub impl TCharacterDataBeforeNodes for Node with to_js(self : Node) -> JsValue = "%identity"

pub impl TCharacterDataBeforeNodes for String with to_js(self : String) -> JsValue = "%identity"

pub(open) trait TCharacterDataAfterNodes {
  to_js(self : Self) -> JsValue
}

pub impl TCharacterDataAfterNodes for Node with to_js(self : Node) -> JsValue = "%identity"

pub impl TCharacterDataAfterNodes for String with to_js(self : String) -> JsValue = "%identity"

pub(open) trait TCharacterDataReplaceWithNodes {
  to_js(self : Self) -> JsValue
}

pub impl TCharacterDataReplaceWithNodes for Node with to_js(self : Node) -> JsValue = "%identity"

pub impl TCharacterDataReplaceWithNodes for String with to_js(self : String) -> JsValue = "%identity"

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