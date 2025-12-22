///|
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
pub trait TFile: TBlob {}
