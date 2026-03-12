extern "js" fn worker_options_ffi(name: JsValue, type_: JsValue, credentials: JsValue) -> WorkerOptions = 
#|(name, type, credentials) => {
#|  const obj = {};
#|  if (name !== undefined) obj.name = name;
#|  if (type !== undefined) obj.type = type;
#|  if (credentials !== undefined) obj.credentials = credentials;
#|  return obj;
#|}

extern "js" fn worker_options_empty_ffi() -> WorkerOptions = "() => {}"

extern "js" fn worker_options_get_name_ffi(obj: JsValue) -> JsValue = "(obj) => obj.name"

extern "js" fn worker_options_get_type_ffi(obj: JsValue) -> JsValue = "(obj) => obj.type"

extern "js" fn worker_options_get_credentials_ffi(obj: JsValue) -> JsValue = "(obj) => obj.credentials"