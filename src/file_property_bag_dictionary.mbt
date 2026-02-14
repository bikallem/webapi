// Do not edit. This file is generated.
// MoonBit type: FilePropertyBag
// Specifications: FileAPI.idl

///|
/// [FilePropertyBag](https://developer.mozilla.org/en-US/docs/Web/API/FilePropertyBag)
#external
pub type FilePropertyBag

///|
pub impl TJsValue for FilePropertyBag with to_js(self : FilePropertyBag) -> JsValue = "%identity"

///|
pub impl FromJsAny for FilePropertyBag with from_js_any(value : JsAny) -> FilePropertyBag = "%identity"

///|
pub fn FilePropertyBag::new(
  type_? : String,
  endings? : EndingType,
  last_modified? : Int64,
) -> FilePropertyBag {
  file_property_bag_ffi(
    opt_to_js(type_),
    opt_to_js(endings),
    opt_to_js(last_modified),
  )
}

///|
pub fn FilePropertyBag::empty() -> FilePropertyBag {
  file_property_bag_empty_ffi()
}

///|
pub fn FilePropertyBag::type_(self : FilePropertyBag) -> String? {
  let result = file_property_bag_get_type_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}

///|
pub fn FilePropertyBag::endings(self : FilePropertyBag) -> EndingType? {
  let result = file_property_bag_get_endings_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(result.unsafe_cast())
  }
}

///|
pub fn FilePropertyBag::last_modified(self : FilePropertyBag) -> Int64? {
  let result = file_property_bag_get_last_modified_ffi(TJsValue::to_js(self))
  if JsValue::is_null(result) {
    None
  } else {
    Some(FromJsAny::from_js_any(jsvalue_to_jsany(result)))
  }
}
