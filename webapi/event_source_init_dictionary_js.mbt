extern "js" fn event_source_init_ffi(with_credentials: JsValue) -> EventSourceInit = 
#|(withCredentials) => {
#|  const obj = {};
#|  if (withCredentials !== undefined) obj.withCredentials = withCredentials;
#|  return obj;
#|}

extern "js" fn event_source_init_empty_ffi() -> EventSourceInit = "() => {}"

extern "js" fn event_source_init_get_with_credentials_ffi(obj: JsValue) -> JsValue = "(obj) => obj.withCredentials"