// Auto-generated MoonBit bindings for FileList

// Do not edit manually

///|
#external
pub type FileList

///|
pub trait TFileList: TJsValue {
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> JsValue? = _
}

///|
pub impl TFileList for FileList

///|
pub impl TJsValue for FileList with to_js(self : FileList) -> JsValue = "%identity"

///|
fn file_list_item_ffi(obj : JsValue, index : JsValue) -> JsValue = "webapi_FileList" "item"

///|
impl TFileList with item(self : Self, index : UInt) -> JsValue? {
  file_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).as_option()
}

///|
fn file_list_length_ffi(obj : JsValue) -> UInt = "webapi_FileList" "length"

///|
impl TFileList with length(self : Self) -> UInt {
  file_list_length_ffi(self.to_js())
}