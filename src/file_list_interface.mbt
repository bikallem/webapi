// Do not edit. This file is generated.
// MoonBit type: FileList
// Specifications: FileAPI.idl

///|
/// [FileList](https://developer.mozilla.org/en-US/docs/Web/API/FileList)
#external
pub type FileList

///|
pub impl TJsValue for FileList with to_js(self : FileList) -> JsValue = "%identity"

///|
pub fn[T : TFileList] FileList::into(self : FileList) -> T = "%identity"

///|
pub impl TFileList for FileList

///|
/// [FileList](https://developer.mozilla.org/en-US/docs/Web/API/FileList) interface.
pub trait TFileList: TJsValue {
  length(self : Self) -> UInt = _
}

///|
extern "js" fn file_list_length_ffi(obj : JsValue) -> UInt = "(obj) => obj.length"

///|
/// [FileList.length](https://developer.mozilla.org/en-US/docs/Web/API/FileList/length)
impl TFileList with length(self : Self) -> UInt {
  file_list_length_ffi(TJsValue::to_js(self))
}
