///|
extern "js" fn image_encode_options_ffi(
  type_ : JsValue,
  quality : JsValue,
) -> ImageEncodeOptions =
  #|(type, quality) => {
  #|  const obj = {};
  #|  if (type !== undefined) obj.type = type;
  #|  if (quality !== undefined) obj.quality = quality;
  #|  return obj;
  #|}

///|
extern "js" fn image_encode_options_empty_ffi() -> ImageEncodeOptions = "() => {}"

///|
extern "js" fn image_encode_options_get_type_ffi(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
extern "js" fn image_encode_options_get_quality_ffi(obj : JsValue) -> JsValue = "(obj) => obj.quality"
