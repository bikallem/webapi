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

///|
#external
pub type CharacterData

///|
pub trait TCharacterData: TJsValue + TNode {
  data(self : Self) -> String = _
  set_data(self : Self, value : String) -> Unit = _
  length(self : Self) -> Int = _
  substring_data(self : Self, offset : Int, count : Int) -> String = _
  append_data(self : Self, data : String) -> Unit = _
  insert_data(self : Self, offset : Int, data : String) -> Unit = _
  delete_data(self : Self, offset : Int, count : Int) -> Unit = _
  replace_data(self : Self, offset : Int, count : Int, data : String) -> Unit = _
}

///|
pub impl TEventTarget for CharacterData

///|
pub impl TNode for CharacterData

///|
pub impl TCharacterData for CharacterData

///|
pub impl TJsValue for CharacterData with to_js(self : CharacterData) -> JsValue = "%identity"

///|
fn character_data_substring_data_ffi(obj : JsValue, offset : JsValue, count : JsValue) -> JsValue = "webapi_CharacterData" "substringData"

///|
impl TCharacterData with substring_data(self : Self, offset : Int, count : Int) -> String {
  character_data_substring_data_ffi(TJsValue::to_js(self), TJsValue::to_js(offset), TJsValue::to_js(count)).unsafe_cast()
}

///|
fn character_data_append_data_ffi(obj : JsValue, data : JsValue) -> Unit = "webapi_CharacterData" "appendData"

///|
impl TCharacterData with append_data(self : Self, data : String) -> Unit {
  character_data_append_data_ffi(TJsValue::to_js(self), TJsValue::to_js(data))
}

///|
fn character_data_insert_data_ffi(obj : JsValue, offset : JsValue, data : JsValue) -> Unit = "webapi_CharacterData" "insertData"

///|
impl TCharacterData with insert_data(self : Self, offset : Int, data : String) -> Unit {
  character_data_insert_data_ffi(TJsValue::to_js(self), TJsValue::to_js(offset), TJsValue::to_js(data))
}

///|
fn character_data_delete_data_ffi(obj : JsValue, offset : JsValue, count : JsValue) -> Unit = "webapi_CharacterData" "deleteData"

///|
impl TCharacterData with delete_data(self : Self, offset : Int, count : Int) -> Unit {
  character_data_delete_data_ffi(TJsValue::to_js(self), TJsValue::to_js(offset), TJsValue::to_js(count))
}

///|
fn character_data_replace_data_ffi(obj : JsValue, offset : JsValue, count : JsValue, data : JsValue) -> Unit = "webapi_CharacterData" "replaceData"

///|
impl TCharacterData with replace_data(self : Self, offset : Int, count : Int, data : String) -> Unit {
  character_data_replace_data_ffi(TJsValue::to_js(self), TJsValue::to_js(offset), TJsValue::to_js(count), TJsValue::to_js(data))
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
fn character_data_length_ffi(obj : JsValue) -> Int = "webapi_CharacterData" "length"

///|
impl TCharacterData with length(self : Self) -> Int {
  character_data_length_ffi(self.to_js())
}