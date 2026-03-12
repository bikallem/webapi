///|
extern "js" fn write_params_ffi(
  type_ : JsValue,
  size : JsValue,
  position : JsValue,
  data : JsValue,
) -> WriteParams =
  #|(type, size, position, data) => {
  #|  const obj = {};
  #|  if (type !== undefined) obj.type = type;
  #|  if (size !== undefined) obj.size = size;
  #|  if (position !== undefined) obj.position = position;
  #|  if (data !== undefined) obj.data = data;
  #|  return obj;
  #|}

///|
extern "js" fn write_params_empty_ffi() -> WriteParams = "() => {}"

///|
extern "js" fn write_params_get_type_ffi_js(obj : JsValue) -> JsValue = "(obj) => obj.type"

///|
fn write_params_get_type_ffi(obj : JsValue) -> WriteCommandType {
  WriteCommandType::from_unchecked(
    write_params_get_type_ffi_js(obj).unsafe_cast(),
  )
}

///|
extern "js" fn write_params_get_size_ffi(obj : JsValue) -> JsValue = "(obj) => obj.size"

///|
extern "js" fn write_params_get_position_ffi(obj : JsValue) -> JsValue = "(obj) => obj.position"

///|
extern "js" fn write_params_get_data_ffi(obj : JsValue) -> JsValue = "(obj) => obj.data"
