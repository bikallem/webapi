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
pub trait TCharacterData: TNode {
  substring_data(self : Self, offset : UInt, count : UInt) -> String = _
  append_data(self : Self, data : String) -> Unit = _
  insert_data(self : Self, offset : UInt, data : String) -> Unit = _
  delete_data(self : Self, offset : UInt, count : UInt) -> Unit = _
  replace_data(self : Self, offset : UInt, count : UInt, data : String) -> Unit = _
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
