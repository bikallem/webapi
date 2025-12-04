// Auto-generated MoonBit bindings for CharacterData

// Do not edit manually

//
// WebIDL Interface:
// [Exposed=Window]
// interface CharacterData : Node {
//   attribute [LegacyNullToEmptyString] DOMString data;
//   readonly attribute unsigned long length;
//   DOMString substringData(unsigned long offset, unsigned long count);
//   undefined appendData(DOMString data);
//   undefined insertData(unsigned long offset, DOMString data);
//   undefined deleteData(unsigned long offset, unsigned long count);
//   undefined replaceData(unsigned long offset, unsigned long count, DOMString data);
// };
// 
// interface mixin NonDocumentTypeChildNode {
//   readonly attribute Element? previousElementSibling;
//   readonly attribute Element? nextElementSibling;
// };
// 
// interface mixin ChildNode {
//   [CEReactions, Unscopable] undefined before((Node or DOMString)... nodes);
//   [CEReactions, Unscopable] undefined after((Node or DOMString)... nodes);
//   [CEReactions, Unscopable] undefined replaceWith((Node or DOMString)... nodes);
//   [CEReactions, Unscopable] undefined remove();
// };

///|
pub trait TCharacterData: TJsValue + TNode {
  data(self : Self) -> String = _
  set_data(self : Self, value : String) -> Unit = _
  length(self : Self) -> UInt = _
  previous_element_sibling(self : Self) -> &TElement? = _
  next_element_sibling(self : Self) -> &TElement? = _
  substring_data(self : Self, offset : UInt, count : UInt) -> String = _
  append_data(self : Self, data : String) -> Unit = _
  insert_data(self : Self, offset : UInt, data : String) -> Unit = _
  delete_data(self : Self, offset : UInt, count : UInt) -> Unit = _
  replace_data(self : Self, offset : UInt, count : UInt, data : String) -> Unit = _
  before(self : Self, nodes : &TBeforeNodesArg) -> Unit = _
  after(self : Self, nodes : &TAfterNodesArg) -> Unit = _
  replace_with(self : Self, nodes : &TReplaceWithNodesArg) -> Unit = _
  remove(self : Self) -> Unit = _
}

///|
pub fn[T : TCharacterData] &TCharacterData::into(self : &TCharacterData) -> T = "%identity"

///|
fn character_data_substring_data_ffi(
  obj : JsValue,
  offset : JsValue,
  count : JsValue,
) -> JsValue = "webapi_CharacterData" "substringData"

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
  ).unsafe_cast()
}

///|
fn character_data_append_data_ffi(obj : JsValue, data : JsValue) -> Unit = "webapi_CharacterData" "appendData"

///|
impl TCharacterData with append_data(self : Self, data : String) -> Unit {
  character_data_append_data_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
fn character_data_insert_data_ffi(
  obj : JsValue,
  offset : JsValue,
  data : JsValue,
) -> Unit = "webapi_CharacterData" "insertData"

///|
impl TCharacterData with insert_data(self : Self, offset : UInt, data : String) -> Unit {
  character_data_insert_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(offset),
    TJsValue::to_js(data),
  )
}

///|
fn character_data_delete_data_ffi(
  obj : JsValue,
  offset : JsValue,
  count : JsValue,
) -> Unit = "webapi_CharacterData" "deleteData"

///|
impl TCharacterData with delete_data(self : Self, offset : UInt, count : UInt) -> Unit {
  character_data_delete_data_ffi(
    TJsValue::to_js(self),
    TJsValue::to_js(offset),
    TJsValue::to_js(count),
  )
}

///|
fn character_data_replace_data_ffi(
  obj : JsValue,
  offset : JsValue,
  count : JsValue,
  data : JsValue,
) -> Unit = "webapi_CharacterData" "replaceData"

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
fn character_data_before_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_CharacterData" "before"

///|
impl TCharacterData with before(self : Self, nodes : &TBeforeNodesArg) -> Unit {
  character_data_before_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn character_data_after_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_CharacterData" "after"

///|
impl TCharacterData with after(self : Self, nodes : &TAfterNodesArg) -> Unit {
  character_data_after_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn character_data_replace_with_ffi(obj : JsValue, nodes : JsValue) -> Unit = "webapi_CharacterData" "replaceWith"

///|
impl TCharacterData with replace_with(
  self : Self,
  nodes : &TReplaceWithNodesArg,
) -> Unit {
  character_data_replace_with_ffi(TJsValue::to_js(self), nodes.to_js())
}

///|
fn character_data_remove_ffi(obj : JsValue) -> Unit = "webapi_CharacterData" "remove"

///|
impl TCharacterData with remove(self : Self) -> Unit {
  character_data_remove_ffi(TJsValue::to_js(self))
}

///|
fn character_data_data_ffi(obj : JsValue) -> String = "webapi_CharacterData" "data"

///|
impl TCharacterData with data(self : Self) -> String {
  character_data_data_ffi(self.to_js())
}

///|
fn character_data_set_data_ffi(obj : JsValue, value : String) -> Unit = "webapi_CharacterData" "set_data"

///|
impl TCharacterData with set_data(self : Self, value : String) -> Unit {
  character_data_set_data_ffi(self.to_js(), value)
}

///|
fn character_data_length_ffi(obj : JsValue) -> JsValue = "webapi_CharacterData" "length"

///|
impl TCharacterData with length(self : Self) -> UInt {
  character_data_length_ffi(self.to_js()).unsafe_cast()
}

///|
fn character_data_previous_element_sibling_ffi(obj : JsValue) -> JsValue = "webapi_CharacterData" "previousElementSibling"

///|
impl TCharacterData with previous_element_sibling(self : Self) -> &TElement? {
  character_data_previous_element_sibling_ffi(self.to_js()).as_option()
}

///|
fn character_data_next_element_sibling_ffi(obj : JsValue) -> JsValue = "webapi_CharacterData" "nextElementSibling"

///|
impl TCharacterData with next_element_sibling(self : Self) -> &TElement? {
  character_data_next_element_sibling_ffi(self.to_js()).as_option()
}
