///|
extern "js" fn convert_coordinate_options_ffi(
  from_box : JsValue,
  to_box : JsValue,
) -> ConvertCoordinateOptions =
  #|(fromBox, toBox) => {
  #|  const obj = {};
  #|  if (fromBox !== undefined) obj.fromBox = fromBox;
  #|  if (toBox !== undefined) obj.toBox = toBox;
  #|  return obj;
  #|}

///|
extern "js" fn convert_coordinate_options_empty_ffi() -> ConvertCoordinateOptions = "() => {}"
