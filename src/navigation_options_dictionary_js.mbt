///|
extern "js" fn navigation_options_ffi(info : JsValue) -> NavigationOptions =
  #|(info) => {
  #|  const obj = {};
  #|  if (info !== undefined) obj.info = info;
  #|  return obj;
  #|}

///|
extern "js" fn navigation_options_empty_ffi() -> NavigationOptions = "() => {}"
