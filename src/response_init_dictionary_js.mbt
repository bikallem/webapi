///|
extern "js" fn response_init_ffi(
  status : JsValue,
  status_text : JsValue,
  headers : JsValue,
) -> ResponseInit =
  #|(status, statusText, headers) => {
  #|  const obj = {};
  #|  if (status !== undefined) obj.status = status;
  #|  if (statusText !== undefined) obj.statusText = statusText;
  #|  if (headers !== undefined) obj.headers = headers;
  #|  return obj;
  #|}

///|
extern "js" fn response_init_empty_ffi() -> ResponseInit = "() => {}"
