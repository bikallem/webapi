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
  file_property_bag_get_type_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
pub fn FilePropertyBag::endings(self : FilePropertyBag) -> EndingType? {
  file_property_bag_get_endings_ffi(TJsValue::to_js(self)).to_option()
}

///|
pub fn FilePropertyBag::last_modified(self : FilePropertyBag) -> Int64? {
  file_property_bag_get_last_modified_ffi(TJsValue::to_js(self)).to_option_prim()
}

///|
#cfg(target="js")
extern "js" fn file_property_bag_ffi(
  type_ : JsValue,
  endings : JsValue,
  last_modified : JsValue,
) -> FilePropertyBag =
  #|(type, endings, lastModified) => {
  #|  const obj = {};
  #|  if (type !== undefined) obj.type = type;
  #|  if (endings !== undefined) obj.endings = endings;
  #|  if (lastModified !== undefined) obj.lastModified = lastModified;
  #|  return obj;
  #|}

///|
#cfg(target="js")
extern "js" fn file_property_bag_empty_ffi() -> FilePropertyBag = "() => {}"

///|
#cfg(target="js")
extern "js" fn file_property_bag_get_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
#cfg(target="js")
extern "js" fn file_property_bag_get_endings_ffi(obj : JsValue) -> JsValue = "(obj) => obj.endings"

///|
#cfg(target="js")
extern "js" fn file_property_bag_get_last_modified_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.lastModified"

///|
#cfg(target="wasm-gc")
fn file_property_bag_ffi(
  type_ : JsValue,
  endings : JsValue,
  last_modified : JsValue,
) -> FilePropertyBag = "webapi_FilePropertyBag" "new"

///|
#cfg(target="wasm-gc")
fn file_property_bag_empty_ffi() -> FilePropertyBag = "webapi_Dictionary" "empty"

///|
#cfg(target="wasm-gc")
fn file_property_bag_get_type_ffi(obj : JsValue) -> JsValue = "webapi_FilePropertyBag" "get_type"

///|
#cfg(target="wasm-gc")
fn file_property_bag_get_endings_ffi(obj : JsValue) -> JsValue = "webapi_FilePropertyBag" "get_endings"

///|
#cfg(target="wasm-gc")
fn file_property_bag_get_last_modified_ffi(obj : JsValue) -> JsValue = "webapi_FilePropertyBag" "get_lastModified"
