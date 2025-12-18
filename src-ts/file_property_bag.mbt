// Auto-generated MoonBit bindings for FilePropertyBag dictionary

// Do not edit manually

///|
#external
pub type FilePropertyBag

///|
pub impl TJsValue for FilePropertyBag with to_js(self : FilePropertyBag) -> JsValue = "%identity"

///|
fn file_property_bag_ffi(last_modified : JsValue) -> FilePropertyBag = "webapi_FilePropertyBag" "new"

///|
pub fn FilePropertyBag::new(last_modified? : Int64) -> FilePropertyBag {
  let last_modified_js = opt_to_js(last_modified)
  file_property_bag_ffi(last_modified_js)
}

///|
pub fn FilePropertyBag::empty() -> FilePropertyBag = "webapi_Dictionary" "empty"
