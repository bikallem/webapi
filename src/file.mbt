// Auto-generated MoonBit bindings for File

// Do not edit manually

///|
#external
pub type File

///|
pub trait TFile: TJsValue + TBlob {
  name(self : Self) -> String = _
  last_modified(self : Self) -> Int64 = _
}

///|
pub impl TBlob for File

///|
pub impl TFile for File

///|
pub impl TJsValue for File with to_js(self : File) -> JsValue = "%identity"

///|
pub fn File::null() -> File {
  JsValue::null()
}

///|
fn file_new_ffi(
  file_bits : JsValue,
  file_name : JsValue,
  options : JsValue,
) -> File = "webapi_File" "new"

///|
pub fn File::new(
  file_bits : Array[JsValue],
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
fn file_name_ffi(obj : JsValue) -> String = "webapi_File" "name"

///|
impl TFile with name(self : Self) -> String {
  file_name_ffi(self.to_js())
}

///|
fn file_last_modified_ffi(obj : JsValue) -> Int64 = "webapi_File" "lastModified"

///|
impl TFile with last_modified(self : Self) -> Int64 {
  file_last_modified_ffi(self.to_js())
}
