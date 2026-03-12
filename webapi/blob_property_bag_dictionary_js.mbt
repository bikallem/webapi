extern "js" fn blob_property_bag_ffi(type_: JsValue, endings: JsValue) -> BlobPropertyBag = 
#|(type, endings) => {
#|  const obj = {};
#|  if (type !== undefined) obj.type = type;
#|  if (endings !== undefined) obj.endings = endings;
#|  return obj;
#|}

extern "js" fn blob_property_bag_empty_ffi() -> BlobPropertyBag = "() => {}"

extern "js" fn blob_property_bag_get_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn blob_property_bag_get_endings_ffi(obj: JsValue) -> JsValue = "(obj) => obj.endings"