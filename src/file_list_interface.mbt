///|
#external
pub type FileList

///|
pub impl TJsValue for FileList with to_js(self : FileList) -> JsValue = "%identity"

///|
pub fn[T : TFileList] FileList::into(self : FileList) -> T = "%identity"

///|
pub impl TFileList for FileList

///|
pub trait TFileList: TJsValue {}
