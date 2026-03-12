extern "js" fn file_property_bag_ffi(type_: JsValue, endings: JsValue, last_modified: JsValue) -> FilePropertyBag = 
#|(type, endings, lastModified) => {
#|  const obj = {};
#|  if (type !== undefined) obj.type = type;
#|  if (endings !== undefined) obj.endings = endings;
#|  if (lastModified !== undefined) obj.lastModified = lastModified;
#|  return obj;
#|}

extern "js" fn file_property_bag_empty_ffi() -> FilePropertyBag = "() => {}"

extern "js" fn file_property_bag_get_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn file_property_bag_get_endings_ffi(obj: JsValue) -> JsValue = "(obj) => obj.endings"

extern "js" fn file_property_bag_get_last_modified_ffi(obj: JsValue) -> JsValue = "(obj) => obj.lastModified"