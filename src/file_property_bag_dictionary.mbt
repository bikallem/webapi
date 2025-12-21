///|
#external
pub type FilePropertyBag

///|
pub impl TJsValue for FilePropertyBag with to_js(self : FilePropertyBag) -> JsValue = "%identity"

///|
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
pub fn FilePropertyBag::new(
  type_? : String = "",
  endings? : EndingType = EndingType::Transparent,
  last_modified? : Int64,
) -> FilePropertyBag {
  file_property_bag_ffi(
    TJsValue::to_js(type_),
    TJsValue::to_js(endings),
    opt_to_js(last_modified),
  )
}

///|
extern "js" fn file_property_bag_empty_ffi() -> FilePropertyBag = "() => {}"

///|
pub fn FilePropertyBag::empty() -> FilePropertyBag {
  file_property_bag_empty_ffi()
}
