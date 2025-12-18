// Auto-generated MoonBit bindings for FilePropertyBag dictionary
// Do not edit manually

#external
pub type FilePropertyBag

pub impl TJsValue for FilePropertyBag with to_js(self: FilePropertyBag) -> JsValue = "%identity"


fn file_property_bag_ffi(type_ : JsValue, endings : JsValue, last_modified : JsValue) -> FilePropertyBag = "webapi_FilePropertyBag" "new"


pub fn FilePropertyBag::new(
  type_? : String? : String = "",
  endings? : EndingType? : EndingType = "transparent",
  last_modified? : Int64) -> FilePropertyBag {
    file_property_bag_ffi(
      TJsValue::to_js(type_)
     ,TJsValue::to_js(endings)
     ,opt_to_js(last_modified)
    )
}


pub fn FilePropertyBag::empty() -> FilePropertyBag = "webapi_Dictionary" "empty"