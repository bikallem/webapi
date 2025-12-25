// Do not edit. This file is generated.
// MoonBit type: CharacterData
// Specifications: dom.idl

///|
#external
pub type CharacterData

///|
pub impl TJsValue for CharacterData with to_js(self : CharacterData) -> JsValue = "%identity"

///|
pub fn[T : TCharacterData] CharacterData::into(self : CharacterData) -> T = "%identity"

///|
pub impl TCharacterData for CharacterData

///|
pub impl TNode for CharacterData

///|
pub impl TEventTarget for CharacterData

///|
pub(open) trait TCharacterDataBeforeNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TCharacterDataBeforeNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TCharacterDataBeforeNodes for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TCharacterDataAfterNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TCharacterDataAfterNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TCharacterDataAfterNodes for String with to_js(self : String) -> JsValue = "%identity"

///|
pub(open) trait TCharacterDataReplaceWithNodes {
  to_js(self : Self) -> JsValue
}

///|
pub impl TCharacterDataReplaceWithNodes for Node with to_js(self : Node) -> JsValue = "%identity"

///|
pub impl TCharacterDataReplaceWithNodes for String with to_js(self : String) -> JsValue = "%identity"

///|
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
  before(self : Self, nodes : &TCharacterDataBeforeNodes) -> Unit = _
  after(self : Self, nodes : &TCharacterDataAfterNodes) -> Unit = _
  replace_with(self : Self, nodes : &TCharacterDataReplaceWithNodes) -> Unit = _
  remove(self : Self) -> Unit = _
}

///|
extern "js" fn character_data_data_ffi(obj : JsValue) -> String = "(obj) => obj.data"

///|
impl TCharacterData with data(self : Self) -> String {
  character_data_data_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn character_data_set_data_ffi(
  obj : JsValue,
  data : JsValue,
) -> Unit = "(obj, data) => { obj.data = data; }"

///|
impl TCharacterData with set_data(self : Self, data : String) -> Unit {
  character_data_set_data_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
extern "js" fn character_data_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
impl TCharacterData with length(self : Self) -> UInt {
  character_data_length_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn character_data_substring_data_ffi(
  obj : JsValue,
  offset : JsValue,
  count : JsValue,
) -> String = "(obj, offset, count) => obj.substringData(obj, offset, count)"

///|
impl TCharacterData with substring_data(
  self : Self,
  offset : UInt,
  count : UInt,
) -> String {
  character_data_substring_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(offset),
    TJsValue::to_js(count),
  )
}

///|
extern "js" fn character_data_append_data_ffi(
  obj : JsValue,
  data : JsValue,
) -> Unit = "(obj, data) => obj.appendData(obj, data)"

///|
impl TCharacterData with append_data(self : Self, data : String) -> Unit {
  character_data_append_data_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
extern "js" fn character_data_insert_data_ffi(
  obj : JsValue,
  offset : JsValue,
  data : JsValue,
) -> Unit = "(obj, offset, data) => obj.insertData(obj, offset, data)"

///|
impl TCharacterData with insert_data(self : Self, offset : UInt, data : String) -> Unit {
  character_data_insert_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(offset),
    TJsValue::to_js(data),
  )
}

///|
extern "js" fn character_data_delete_data_ffi(
  obj : JsValue,
  offset : JsValue,
  count : JsValue,
) -> Unit = "(obj, offset, count) => obj.deleteData(obj, offset, count)"

///|
impl TCharacterData with delete_data(self : Self, offset : UInt, count : UInt) -> Unit {
  character_data_delete_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(offset),
    TJsValue::to_js(count),
  )
}

///|
extern "js" fn character_data_replace_data_ffi(
  obj : JsValue,
  offset : JsValue,
  count : JsValue,
  data : JsValue,
) -> Unit = "(obj, offset, count, data) => obj.replaceData(obj, offset, count, data)"

///|
impl TCharacterData with replace_data(
  self : Self,
  offset : UInt,
  count : UInt,
  data : String,
) -> Unit {
  character_data_replace_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(offset),
    TJsValue::to_js(count),
    TJsValue::to_js(data),
  )
}

///|
extern "js" fn character_data_previous_element_sibling_ffi(
  obj : JsValue,
) -> Element = "(obj) => obj.previousElementSibling"

///|
impl TCharacterData with previous_element_sibling(self : Self) -> Element {
  character_data_previous_element_sibling_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn character_data_next_element_sibling_ffi(
  obj : JsValue,
) -> Element = "(obj) => obj.nextElementSibling"

///|
impl TCharacterData with next_element_sibling(self : Self) -> Element {
  character_data_next_element_sibling_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn character_data_before_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.before(obj, nodes)"

///|
impl TCharacterData with before(self : Self, nodes : &TCharacterDataBeforeNodes) -> Unit {
  character_data_before_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn character_data_after_ffi(obj : JsValue, nodes : JsValue) -> Unit = "(obj, nodes) => obj.after(obj, nodes)"

///|
impl TCharacterData with after(self : Self, nodes : &TCharacterDataAfterNodes) -> Unit {
  character_data_after_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn character_data_replace_with_ffi(
  obj : JsValue,
  nodes : JsValue,
) -> Unit = "(obj, nodes) => obj.replaceWith(obj, nodes)"

///|
impl TCharacterData with replace_with(
  self : Self,
  nodes : &TCharacterDataReplaceWithNodes,
) -> Unit {
  character_data_replace_with_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
extern "js" fn character_data_remove_ffi(obj : JsValue) -> Unit = "(obj) => obj.remove(obj)"

///|
impl TCharacterData with remove(self : Self) -> Unit {
  character_data_remove_ffi(TJsValue::to_js(self))
}
