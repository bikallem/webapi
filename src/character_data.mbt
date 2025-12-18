// Auto-generated MoonBit bindings for CharacterData interface
// Do not edit manually

#external
pub type CharacterData

pub impl TJsValue for CharacterData with to_js(self: CharacterData) -> JsValue = "%identity"


pub fn[T: TCharacterData] CharacterData::into(self : CharacterData) -> T = "%identity"
pub impl TCharacterData for CharacterData

pub trait TCharacterData: TJsValue + TTNode {
  data(self: Self) -> String = _
  set_data(self: Self, value : String) -> Unit = _
  length(self: Self) -> UInt = _
  substring_data(self: Self, offset : UInt, count : UInt) -> String = _
  append_data(self: Self, data : String) -> Unit = _
  insert_data(self: Self, offset : UInt, data : String) -> Unit = _
  delete_data(self: Self, offset : UInt, count : UInt) -> Unit = _
  replace_data(self: Self, offset : UInt, count : UInt, data : String) -> Unit = _
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
fn character_data_length_ffi(obj : JsValue) -> UInt = "webapi_CharacterData" "length"

///|
impl TCharacterData with length(self : Self) -> UInt {
  character_data_length_ffi(self.to_js())
}

///|
fn character_data_substring_data_ffi(obj : JsValue, offset : JsValue, count : JsValue) -> String = "webapi_CharacterData" "substringData"

///|
impl TCharacterData with substring_data(self : Self, offset : UInt, count : UInt) -> String {
  character_data_substring_data_ffi(self.to_js(), TJsValue::to_js(offset), TJsValue::to_js(count))
}

///|
fn character_data_append_data_ffi(obj : JsValue, data : JsValue) -> Unit = "webapi_CharacterData" "appendData"

///|
impl TCharacterData with append_data(self : Self, data : String) -> Unit {
  character_data_append_data_ffi(self.to_js(), TJsValue::to_js(data))
}

///|
fn character_data_insert_data_ffi(obj : JsValue, offset : JsValue, data : JsValue) -> Unit = "webapi_CharacterData" "insertData"

///|
impl TCharacterData with insert_data(self : Self, offset : UInt, data : String) -> Unit {
  character_data_insert_data_ffi(self.to_js(), TJsValue::to_js(offset), TJsValue::to_js(data))
}

///|
fn character_data_delete_data_ffi(obj : JsValue, offset : JsValue, count : JsValue) -> Unit = "webapi_CharacterData" "deleteData"

///|
impl TCharacterData with delete_data(self : Self, offset : UInt, count : UInt) -> Unit {
  character_data_delete_data_ffi(self.to_js(), TJsValue::to_js(offset), TJsValue::to_js(count))
}

///|
fn character_data_replace_data_ffi(obj : JsValue, offset : JsValue, count : JsValue, data : JsValue) -> Unit = "webapi_CharacterData" "replaceData"

///|
impl TCharacterData with replace_data(self : Self, offset : UInt, count : UInt, data : String) -> Unit {
  character_data_replace_data_ffi(self.to_js(), TJsValue::to_js(offset), TJsValue::to_js(count), TJsValue::to_js(data))
}