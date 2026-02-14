///|
extern "js" fn structured_serialize_options_ffi(
  transfer : JsValue,
) -> StructuredSerializeOptions =
  #|(transfer) => {
  #|  const obj = {};
  #|  if (transfer !== undefined) obj.transfer = transfer;
  #|  return obj;
  #|}

///|
extern "js" fn structured_serialize_options_empty_ffi() -> StructuredSerializeOptions = "() => {}"

///|
extern "js" fn structured_serialize_options_get_transfer_ffi(
  obj : JsValue,
) -> JsValue = "(obj) => obj.transfer"
