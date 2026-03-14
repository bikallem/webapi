// Do not edit. This file is generated.
// MoonBit type: FileList
// Specifications: FileAPI.idl

/// [FileList](https://developer.mozilla.org/en-US/docs/Web/API/FileList)
#external
pub type FileList

pub impl TJsValue for FileList with to_js(self: FileList) -> JsValue = "%identity"

pub impl FromJsAny for FileList with from_js_any(value : JsAny) -> FileList = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// Prefer `try_into()` for checked downcasts.
#deprecated("Use unsafe_into or try_into instead")
pub fn[T: TFileList] FileList::into(self : FileList) -> T = "%identity"

/// Unchecked downcast — no runtime type check is performed.
/// WARNING: If the underlying JS value is not of type T, this will silently
/// produce a value with incorrect type, leading to undefined behavior.
pub fn[T: TFileList] FileList::unsafe_into(self : FileList) -> T = "%identity"

pub impl HasConstructor for FileList with constructor_name() { "FileList" }

/// Checked downcast — returns None if the JS value is not an instance of T.
pub fn[T : TFileList + HasConstructor] FileList::try_into(self : FileList) -> T? {
  if js_instanceof(TJsValue::to_js(self), T::constructor_name()) {
    Some(self.unsafe_into())
  } else {
    None
  }
}

pub impl TFileList for FileList

/// [FileList](https://developer.mozilla.org/en-US/docs/Web/API/FileList) interface.
pub trait TFileList: TJsValue {
  item_opt(self : Self, index : UInt) -> File? = _
  length(self : Self) -> UInt = _
  item(self : Self, index : UInt) -> File = _
}

/// [FileList.item](https://developer.mozilla.org/en-US/docs/Web/API/FileList/item)
impl TFileList with item_opt(self : Self, 
index : UInt) -> File? {
  file_list_item_ffi(TJsValue::to_js(self), TJsValue::to_js(index)).to_option()
}

/// [FileList.length](https://developer.mozilla.org/en-US/docs/Web/API/FileList/length)
impl TFileList with length(self : Self) -> UInt {
  file_list_length_ffi(TJsValue::to_js(self))
}

impl TFileList with item(self : Self, 
index : UInt) -> File {
  self.item_opt(index).unwrap()
}

#cfg(target="js")
extern "js" fn file_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "(obj, index) => obj.item(index)"

#cfg(target="js")
extern "js" fn file_list_length_ffi_js(obj: JsValue) -> JsValue = "(obj) => obj.length"

///|
#cfg(target="js")
fn file_list_length_ffi(obj: JsValue) -> UInt {
  file_list_length_ffi_js(obj).unsafe_cast()
}

#cfg(target="wasm-gc")
fn file_list_item_ffi(obj: JsValue, index: JsValue) -> JsValue = "webapi_FileList" "item"

#cfg(target="wasm-gc")
fn file_list_length_ffi(obj: JsValue) -> UInt = "webapi_FileList" "get_length"