///|
fn blob_property_bag_ffi(type_ : JsValue, endings : JsValue) -> BlobPropertyBag = "webapi_BlobPropertyBag" "new"

///|
fn blob_property_bag_empty_ffi() -> BlobPropertyBag = "webapi_Dictionary" "empty"

///|
fn blob_property_bag_get_type_ffi(obj : JsValue) -> JsValue = "webapi_BlobPropertyBag" "get_type"

///|
fn blob_property_bag_get_endings_ffi(obj : JsValue) -> JsValue = "webapi_BlobPropertyBag" "get_endings"
