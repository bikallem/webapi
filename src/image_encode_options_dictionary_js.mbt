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
