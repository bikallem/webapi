///|
fn file_property_bag_ffi(
  type_ : JsValue,
  endings : JsValue,
  last_modified : JsValue,
) -> FilePropertyBag = "webapi_FilePropertyBag" "new"

///|
fn file_property_bag_empty_ffi() -> FilePropertyBag = "webapi_Dictionary" "empty"

///|
fn file_property_bag_get_type_ffi(obj : JsValue) -> JsValue = "webapi_FilePropertyBag" "get_type"

///|
fn file_property_bag_get_endings_ffi(obj : JsValue) -> JsValue = "webapi_FilePropertyBag" "get_endings"

///|
fn file_property_bag_get_last_modified_ffi(obj : JsValue) -> JsValue = "webapi_FilePropertyBag" "get_lastModified"
