// Do not edit. This file is generated.
// MoonBit type: File
// Specifications: FileAPI.idl

///|
/// [File](https://developer.mozilla.org/en-US/docs/Web/API/File)
#external
pub type File

///|
pub impl TJsValue for File with to_js(self : File) -> JsValue = "%identity"

///|
pub fn[T : TFile] File::into(self : File) -> T = "%identity"

///|
pub impl TFile for File

///|
pub impl TBlob for File

///|
extern "js" fn file_new_ffi(
  file_bits : JsValue,
  file_name : JsValue,
  options : JsValue,
) -> File = "(file_bits, file_name, options) => new File(file_bits, file_name, options)"

///|
pub fn File::new(
  file_bits : Array[BlobPart],
  file_name : String,
  options? : FilePropertyBag = FilePropertyBag::empty(),
) -> File {
  file_new_ffi(
    TJsValue::to_js(file_bits),
    TJsValue::to_js(file_name),
    TJsValue::to_js(options),
  )
}

///|
/// [File](https://developer.mozilla.org/en-US/docs/Web/API/File) interface.
pub trait TFile: TBlob {
  name(self : Self) -> String = _
  last_modified(self : Self) -> Int64 = _
}

///|
extern "js" fn file_name_ffi(obj : JsValue) -> String = "(obj) => obj.name"

///|
/// [File.name](https://developer.mozilla.org/en-US/docs/Web/API/File/name)
impl TFile with name(self : Self) -> String {
  file_name_ffi(TJsValue::to_js(self))
}

///|
extern "js" fn file_last_modified_ffi(obj : JsValue) -> Int64 = "(obj) => obj.lastModified"

///|
/// [File.lastModified](https://developer.mozilla.org/en-US/docs/Web/API/File/lastModified)
impl TFile with last_modified(self : Self) -> Int64 {
  file_last_modified_ffi(TJsValue::to_js(self))
}
