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
pub impl FromJsAny for FileList with from_js_any(value : JsAny) -> FileList = "%identity"

///|
pub fn[T : TFileList] FileList::into(self : FileList) -> T = "%identity"

///|
pub impl TFileList for FileList

///|
/// [FileList](https://developer.mozilla.org/en-US/docs/Web/API/FileList) interface.
pub trait TFileList: TJsValue {
  item_opt(self : Self, index : UInt) -> File? = _
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> File = _
}

///|
/// [FileList.item](https://developer.mozilla.org/en-US/docs/Web/API/FileList/item)
impl TFileList with item_opt(self : Self, index : UInt) -> File? {
  file_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

///|
/// [FileList.length](https://developer.mozilla.org/en-US/docs/Web/API/FileList/length)
impl TFileList with length(self : Self) -> UInt {
  file_list_length_ffi(TJsValue::to_js(self))
}

///|
impl TFileList with item(self : Self, index : UInt) -> File {
  self.item_opt(index).unwrap()
}
