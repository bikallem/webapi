extern "js" fn worker_options_ffi(name: JsValue, type_: JsValue, credentials: JsValue) -> WorkerOptions = 
#|(name, type, credentials) => {
#|  const obj = {};
#|  if (name !== undefined) obj.name = name;
#|  if (type !== undefined) obj.type = type;
#|  if (credentials !== undefined) obj.credentials = credentials;
#|  return obj;
#|}

extern "js" fn worker_options_empty_ffi() -> WorkerOptions = "() => {}"